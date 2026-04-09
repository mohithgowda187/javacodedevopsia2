FROM eclipse-temurin:17

WORKDIR /app

COPY App.java .

RUN javac App.java

CMD ["java", "App"]


FROM python:3.9-slim
 
WORKDIR /app
 
COPY app.py .
 
EXPOSE 5020
 
CMD ["python", "app.py"]
