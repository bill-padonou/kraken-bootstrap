FROM python:3.12-slim

RUN useradd --create-home --uid 1000 app

WORKDIR /lab

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY --chown=app:app . .

USER app

CMD ["python", "-m", "app.main.py"]