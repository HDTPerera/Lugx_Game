from sqlalchemy import Column, Integer, Float, String, DateTime, func
from .database import Base

class Order(Base):
    __tablename__ = "orders"

    id = Column(Integer, primary_key=True, index=True)
    user_id = Column(Integer)
    game_id = Column(Integer)
    total_price = Column(Float)
    created_at = Column(DateTime(timezone=True), server_default=func.now())

