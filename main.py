import uvicorn, os
from fastapi import FastAPI, HTTPException
from fastapi.responses import FileResponse
from dotenv import load_dotenv


app = FastAPI()

@app.get("/", response_class=FileResponse)
def root() -> FileResponse:
    return "public/index.html"


@app.get("/plus", response_model=float)
def plus(x: float, y:float) -> float:
    return x + y


@app.get("/minus", response_model=float)
def plus(x: float, y:float) -> float:
    return x - y


@app.get("/multyply", response_model=float)
def plus(x: float, y:float) -> float:
    return x * y


@app.get("/divide", response_model=float)
def plus(x: float, y:float) -> float:
    try:
        result = x / y
        return result
    except Exception:
        raise HTTPException
    

def main() -> None:
    load_dotenv(dotenv_path='.env')
    port = os.getenv('RM_PORT')
    host = os.getenv('RM_HOST')
    uvicorn.run("main:app", host, port, reload=True)


if __name__ == "__main__":
    main()
