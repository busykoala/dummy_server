from fastapi import FastAPI

app = FastAPI()


@app.get("/")
async def root():
    return {"message": "Hello World"}


@app.get("/secret")
async def secret():
    return {"message": "This is secret!"}
