from fastapi import FastAPI, HTTPException
from pydantic import BaseModel
from sqlalchemy import create_engine, Column, Integer, String, Float
from sqlalchemy.orm import declarative_base, sessionmaker

# FastAPI app
app = FastAPI()

# Updated: Database connection inside Docker network
DATABASE_URL = "postgresql://game_user:gamepass@postgres-db:5432/games_db"

# SQLAlchemy setup
engine = create_engine(DATABASE_URL)
SessionLocal = sessionmaker(bind=engine)
Base = declarative_base()

# DB Model
class GameDB(Base):
    __tablename__ = "games"
    id = Column(Integer, primary_key=True, index=True)
    name = Column(String)
    category = Column(String)
    release_date = Column(String)
    price = Column(Float)

#Auto-create the table if it doesn't exist
Base.metadata.create_all(bind=engine)

# Request body schema
class Game(BaseModel):
    name: str
    category: str
    release_date: str
    price: float

# POST endpoint to add a game
@app.post("/games")
def add_game(game: Game):
    db = SessionLocal()
    new_game = GameDB(**game.dict())
    db.add(new_game)
    db.commit()
    db.refresh(new_game)
    db.close()
    return new_game

# GET endpoint to retrieve all games
@app.get("/games")
def get_games():
    db = SessionLocal()
    games = db.query(GameDB).all()
    db.close()
    return games

# Run the app (for local testing)
if __name__ == "__main__":
    import uvicorn
    uvicorn.run(app, host="0.0.0.0", port=8000)
