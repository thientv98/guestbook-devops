# guestbook - Devops DO210322

# Run local
- sudo docker-compose up -d
- http://localhost:5000

# Push image to docker registry (gcr.io)
- gcloud auth login
- gcloud config set project devops-315509
- gcloud auth configure-docker
- docker tag guestbook-main_app gcr.io/devops-315509/guestbook-main_app:v1
- docker push gcr.io/devops-315509/guestbook-main_app:v1

- kubectl apply -f app.yaml
- kubectl get pods
- kubectl get service
- k get pods frontend-5bd556cb45-8cgsj -o yaml
- kubectl logs deployment/frontend