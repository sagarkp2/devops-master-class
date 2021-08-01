FROM python:alpine3.10
WORKDIR /app 
COPY requirements.txt /app/requirements.txt
RUN pip install -r requirements.txt
COPY . /app
EXPOSE 5000
CMD python ./launch.py

#COPY requirements.txt /app/requirements.txt
#ENTRYPOINT ["python", "./launch.py"]