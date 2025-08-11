from fastapi import APIRouter
from app.schemas import GameEvent
from app.database import get_clickhouse_client
from app.models import event_table
from fastapi.responses import JSONResponse

client = get_clickhouse_client()
router = APIRouter()

@router.post("/events/")
def log_event(event: GameEvent):
    client.insert(
        table=event_table,
        data=[[event.user_id, event.game_id, event.event_type, event.timestamp]],
        column_names=["user_id", "game_id", "event_type", "timestamp"]
    )
    return {"message": "Event logged successfully"}


@router.get("/events/")
def get_all_events():
    query = f"SELECT * FROM {event_table} ORDER BY timestamp DESC"
    result = client.query(query)

    data = []
    for row in result.result_rows:
        row_dict = dict(zip(result.column_names, row))
        # Convert UUID and datetime to string
        for key, val in row_dict.items():
            if isinstance(val, (str, int, float)):
                continue
            row_dict[key] = str(val)
        data.append(row_dict)

    return JSONResponse(content=data)
