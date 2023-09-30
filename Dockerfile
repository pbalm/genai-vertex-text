FROM python:3.10

RUN pip install gradio==3.45.2
RUN pip install google-cloud-aiplatform==1.33.1 google-cloud-logging

COPY ./app /app

WORKDIR /app

EXPOSE 7860

CMD ["python", "app.py"]
