from pydantic import BaseModel

class OrderCreate(BaseModel):
    user_id: int
    game_id: int
    total_price: float

