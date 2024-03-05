az acr login --name assignACR

docker build -t assignACR.azurecr.io/flask-app:latest .
docker push assignACR.azurecr.io/flask-app:latest
