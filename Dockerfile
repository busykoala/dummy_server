FROM python:3.9
COPY ./pyproject.toml /usr/src/app/pyproject.toml
COPY ./poetry.lock /usr/src/app/poetry.lock
WORKDIR /usr/src/app
RUN python3 -m pip install poetry
RUN poetry config virtualenvs.in-project true
RUN poetry install --no-dev
COPY . /usr/src/app
EXPOSE 8000
CMD [ "poetry", "run", "uvicorn", "server:app", "--host=0.0.0.0", "--port=8000"]
