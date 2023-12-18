FROM default-route-openshift-image-registry.apps.dev.mibocp.co.id/openshift/python:latest

WORKDIR /app
ENV PYTHONPATH /app
COPY . .
#COPY ./requirements.txt ./
RUN pip install -r requirements.txt
# ADD app.py
EXPOSE 8080

CMD ["python","app.py"]
