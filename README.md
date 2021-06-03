# guestbook - Devops DO210322

# Run local
- sudo docker-compose up -d
- http://localhost:5000

# Push image to docker registry (gcr.io)
- gcloud auth login
- gcloud config set project devops-315509
- gcloud auth configure-docker
- docker tag guestbook-main_app gcr.io/do-bt/guestbook-main_app:latest
- docker push gcr.io/devops-315509/guestbook-main_app