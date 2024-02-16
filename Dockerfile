# syntax=docker/dockerfile:1

FROM python:3.11-slim

# TODO [1]: Set WORKDIR to /app
WORKDIR /app

# TODO [2.1]: Copy the requirements.txt file to the WORKDIR
COPY requirements.txt /app/

# TODO [2.2]: Install the requirements
RUN pip install -r requirements.txt

# TODO [3]: Copy the server to the WORKDIR
COPY iris_model.pkl /app/iris_model.pkl
COPY server.py /app/server.py

# TODO [4]: Set the command to run the app
CMD ["python", "server.py"]