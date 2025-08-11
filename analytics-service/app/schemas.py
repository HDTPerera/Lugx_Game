from pydantic import BaseModel
from datetime import datetime

class GameEvent(BaseModel):
    user_id: int
    game_id: int
    event_type: str
    timestamp: datetime  # THIS MUST BE datetime, not str









