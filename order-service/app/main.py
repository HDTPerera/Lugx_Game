from fastapi import FastAPI
from . import models, database
from .routers import router as order_router

models.Base.metadata.create_all(bind=database.engine)

app = FastAPI()
app.include_router(order_router)
