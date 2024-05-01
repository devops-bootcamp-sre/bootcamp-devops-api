FROM python:3.10
WORKDIR /project_1
COPY requirements.txt /project_1
RUN pip install -r requirements.txt
COPY . .
EXPOSE 5000
ENV FLASK_APP=app.py
ENV FLASK_ENV=development
CMD ["flask", "run", "--host", "0.0.0.0"]