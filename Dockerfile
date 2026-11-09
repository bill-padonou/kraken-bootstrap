FROM python:3.12-slim
WORKDIR /lab
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt
COPY . .
RUN useradd --create-home --uid 1000 app
USER app
CMD ["python", "app/main.py"] 