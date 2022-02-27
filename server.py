import os

from fastapi import FastAPI, Request


app = FastAPI()


@app.get("/")
async def root():
    return {"message": "Hello World"}


@app.get("/secret")
async def secret():
    dummy_secret = os.getenv("DUMMY_SECRET")
    return {"message": f"The dummy secret is: {dummy_secret}"}


@app.get("/headers")
async def headers(request: Request):
    return request.headers
