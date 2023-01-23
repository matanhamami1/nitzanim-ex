#Deriving the 3.8.2 base image
FROM python:3.8.2
WORKDIR /app
ENV FLASK_APP=flaskr
ENV FLASK_ENV=development
COPY src/app /app
RUN pip install --editable .
RUN flask init-db
EXPOSE 5000
CMD [ "flask", "run", "--host=0.0.0.0"]
#all the docker file
