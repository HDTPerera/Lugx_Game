clear
pip3 install sqlalchemy
pip3 install fastapi uvicorn sqlalchemy psycopg2-binary
pip3 install -r requirements.txt
cd ~/game-service
docker run -d --name game-service -p 8081:8000 game-service
docker ps
docker images
docker build -t game-service .
docker run -d --name game-service -p 8081:8000 --network lugx-network game-service
docker start game-service
docker ps
docker rm game-service
docker images
cd
docker run -d --name game-service -p 8081:8000 --network lugx-network game-service
docker ps
docker network create lugx-network
docker run -d --name postgres-db --network lugx-network -e POSTGRES_DB=games_db -e POSTGRES_USER=game_user -e POSTGRES_PASSWORD=gamepass -p 5432:5432 postgres:15
docker ps
cd ~/game-service
ls
docker build -t game-service .
docker run -d --name game-service -p 8081:8000 --network lugx-network game-service
docker rm game-service
docker run -d --name game-service -p 8081:8000 --network lugx-network game-service
docker ps -a
docker ps
clear
ls
nano main.py
cd
docker ps --format "table {{.Names}}\t{{.Ports}}"
sudo lsof -i :8081
docker ps --format "table {{.Names}}\t{{.Image}}\t{{.Ports}}"
curl http://localhost:8081/docs
clear
curl -X POST http://localhost:8081/games   -H "Content-Type: application/json"   -d '{"name":"Elden Ring", "category":"Action RPG", "release_date":"2022-02-25", "price":59.99}'
docker exec -it postgres-db psql -U game_user -d games_db
curl -LO "https://dl.k8s.io/release/$(curl -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"
curl -s https://dl.k8s.io/release/stable.txt
VERSION=$(curl -s https://dl.k8s.io/release/stable.txt)
curl -LO "https://dl.k8s.io/release/${VERSION}/bin/linux/amd64/kubectl"
curl -Ls https://dl.k8s.io/release/stable.txt
curl -LO "https://dl.k8s.io/release/v1.33.3/bin/linux/amd64/kubectl" && chmod +x kubectl && sudo mv kubectl /usr/local/bin/ && kubectl version --client
clear
mkdir order-service
cd order-service
ls
nano Dockerfile
ls
nano main.py
mkdir app
cd app
nano database.py
nano main.py
ls
nano models.py
ls
nano routers.py
ls
nano schemas.py
ls
cd
cd order-service
ls
nano requirements.txt
ls
nano Dockerfile
ls
cd app
ls
cd
cd order-service
nano Dockerfile
nano requirements.txt
cd
cd game-service
nano main.py
cd
cd order-service/app
nano database.py
cd
order-service
cd order-service
docker build -t order-service .
docker run -d --name order-service -p 8082:8000 --network lugx-network order-service
docker ps
docker ps -a
docker logs order-service
cd app
nano routers.py
clear
docker build -t order-service .
cd
cd order-service
clear
docker build -t order-service .
docker rm order-service
docker run -d --name order-service -p 8082:8000 --network lugx-network order-service
docker ps
curl -X POST http://localhost:8082/orders   -H "Content-Type: application/json"   -d '{"user_id": 1, "game_id": 1, "total_price": 59.99}'
docker exec -it postgres-db psql -U game_user -d games_db
cd
mkdir analytics-service
cd analytics-service
nano Dockerfile
nano database.py
ls
rm database.py
ls
cd app
nano database.py
mkdir app
cd app
nano main.py
cd
analytics-service
cd analytics-service
cd app
ls
nano database.py
cd
cd analytics-service
ls
rm database.py
ls
cd app
ls
nano models.py
nano routers.py
nano routers.py.save
ls
nano schemas.py
cd
analytics-server
cd analytics-service
nano requirements.txt
docker build -t analytics-service .
docker run -d --name analytics-service -p 8083:8000 --network lugx-network analytics-service
docker ps
docker ps -a
docker logs analytics-service
clear
docker run -d --name clickhouse-server --network lugx-network -p 8123:8123 -p 9000:9000 yandex/clickhouse-server
docker rm analytics-service
docker run -d --name analytics-service -p 8083:8000 --network lugx-network analytics-service
docker ps
docker ps -a
docker logs analytics-service
clear
docker exec -it clickhouse-server clickhouse-client
docker rm analytics-service
docker run -d --name analytics-service -p 8083:8000 --network lugx-network analytics-service
curl http://localhost:8083/events/
cd app
nano schemas.py
nano models.py
nano main.py
nano database.py
nano models.py
nano routers.py.save
nano routers.py
nano schemas.py
cd
cd analytics-service
nano Dockerfile
nano requirements.txt
cd
clear
docker exec -it clickhouse-server clickhouse-client
curl -X POST http://localhost:8083/events/ -H "Content-Type: application/json" -d '{
  "user_id": 1,
  "game_id": 101,
  "event_type": "start",
  "timestamp": "2025-08-01T18:00:00"
}'
curl http://localhost:8083/events/
docker exec -it clickhouse-server clickhouse-client
docker ps
docker rm -f analytics-service
docker ps
docker run -d --name analytics-service --network lugx-network -p 8083:8000 analytics-service
docker ps
curl http://localhost:8083/docs
clear
docker --version
docker run hello-world
curl -LO https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64
sudo install minikube-linux-amd64 /usr/local/bin/minikube
minikube version
minikube start --driver=docker --cpus=2 --memory=4000
minikube delete
minikube start --driver=docker --cpus=2 --memory=3500mb
sudo docker system prune -a -f --volumes
minikube delete
sudo docker system prune -a -f --volumes
cleaar
clear
minikube start --driver=docker --cpus=2 --memory=2500mb
minikube status
sudo chown -R ec2-user:ec2-user ~/.kube ~/.minikube
kubectl get nodes
kubectl get pods -A
clear
mkdir -p ~/lugx-k8s/game-service
cd ~/lugx-k8s/game-service
nano game-service.yaml
docker images
docker info | grep Username
docker login
docker login -u divyanjaliperera
docker images
docker login
docker login -u divyanjaliperera
docker tag game-service divyanjaliperera/game-service:latest
docker push divyanjaliperera/game-service:latest
cd game-service
ls
cd
ls
cd templatemo_589_lugx_gaming
ls
cd
cd game-service
nano game-service.yaml
docker ps
nano game-service.yaml
kubectl apply -f game-service.yaml
kubectl get pods
kubectl get svc
minikube service game-service --url
nano
nano game-service.yaml
kubectl delete -f game-service.yaml
kubectl apply -f game-service.yaml
kubectl get pods
kubectl get svc
minikube service game-service --url
kubectl delete deployment game-service
kubectl delete svc game-service
kubectl apply -f game-service.yaml
kubectl get pods
kubectl describe pod game-service-857f7b79c4-4pmrz
sudo docker system prune -a -f --volumes
df -h
sudo du -sh /* 2>/dev/null | sort -hr | head -20
sudo du -sh /var/lib/docker
sudo systemctl stop docker
sudo rm -rf /var/lib/docker/*
sudo systemctl start docker
df -h
sudo rm -rf /var/log/*.gz /var/log/*.1
sudo journalctl --vacuum-time=1d
df -h
sudo growpart /dev/nvme0n1 1
sudo resize2fs /dev/nvme0n1p1
df -h
df -T /
sudo xfs_growfs -d /
df -h
kubectl delete deployment game-service
kubectl delete svc game-service
minikube stop
minikube start
kubectl get nodes
kubectl delete deployment game-service
kubectl delete svc game-service
kubectl apply -f game-service.yaml
kubectl get pods
kubectl logs game-service-857f7b79c4-cz669
cd
ls
cd game-service
ls
mkdir -p ~/lugx-k8s/postgres
cd ~/lugx-k8s/postgres
nano postgres.yaml
kubectl apply -f postgres.yaml
kubectl get pods
kubectl get svc
kubectl delete deployment game-service
kubectl delete svc game-service
kubectl apply -f ~/game-service/game-service.yaml
kubectl get pods
kubectl logs game-service-857f7b79c4-77rjb
nano postgres.yaml
cd 
cd game-service
nano game-service.yml
ls
nano game-service.yml
ls 
nano game-service.yaml
cd postgres
cd
cd postgres
ls
cd lugx-k8s
ls
cd game-service
ls
cd
cd postgres
cd lugx-k8s
cd postgres
ls
nano postgres.yaml
# Move the YAML file to its proper place
mv ~/game-service/game-service.yaml ~/lugx-k8s/game-service/
# Move the YAML file to its proper place
mv ~/game-service/game-service.yaml ~/lugx-k8s/game-service/
cd
mv ~/game-service/game-service.yaml ~/lugx-k8s/game-service/
ls
cd game-service
ls
cd
minikube status
kubectl config current-context
kubectl delete deployment game-service
kubectl delete service game-service
kubectl delete deployment postgres-db
kubectl delete service postgres-db
kubectl delete pvc postgres-pvc
kubectl apply -f ~/lugx-k8s/postgres/postgres.yaml
kubectl apply -f ~/lugx-k8s/game-service/game-service.yaml
kubectl get pods
kubectl get svc
kubectl logs game-service-857f7b79c4-kfdhg
ls
cd lugx-k8s
ls
cd game-service
ls
nano game-service.yml
nano game-service.yaml
cd
cd game-service
ls
nano main.py
cd
cd lugx-k8s/postgres
ls
nano postgres.yaml
kubectl apply -f ~/lugx-k8s/postgres/postgres.yaml
kubectl rollout restart deployment game-service
kubectl get pods
kubectl delete pod postgres-db-5797c45c77-wt6gp
kubectl get pods
kubectl delete deployment postgres-db
kubectl delete pod -l app=postgres-db
kubectl apply -f ~/lugx-k8s/postgres/postgres.yaml
kubectl get pods -w
cd
ls
cd lugx-k8s/game-service
ls
nano game-service.yaml
~/lugx-k8s/postgres/postgres.yaml
cd
~/lugx-k8s/postgres/postgres.yaml
docker ps
cd
docker ps
kubectl get pods
minikube ssh
cd game-service
ls
cd
docker ps
minikube ssh
kubectl get pods
kubectl logs game-service-85bbddd8b4-4wpk2
kubectl logs postgres-db-5797c45c77-l27r9
kubectl describe pod postgres-db-5797c45c77-l27r9
kubectl delete pvc postgres-pvc
ls
cd game-service
ls
nano main.py
cd
cd lugx-k8s
ls
cd postgres
ls
nano postgres.yaml
cd
cd lugx-k8s/game-service
ls
nano game-service.yaml
kubectl delete pvc postgres-pvc
cd
exit
kubectl apply -f ~/lugx-k8s/postgres/postgres.yaml
kubectl get pods
kubectl delete pvc postgres-pvc --grace-period=0 --force
kubectl get svc game-service
exit
http://localhost:8000/games
exit
http://localhost:8000/games
ssh -i EC2_CW_2025.pem -L 8000:localhost:8000 ec2-user@3.85.29.25
exit
curl http://localhost:8000/games
exit
kubectl get svc game-service
curl http://192.168.49.2:30001/games
exit
kubectl get pods
kubectl get pvc
kubectl patch pvc postgres-pvc -p '{"metadata":{"finalizers":null}}' --type=merge
kubectl get pvc
kubectl apply -f ~/lugx-k8s/postgres/postgres.yaml
kubectl get pods
kubectl delete pod postgres-db-5797c45c77-l27r9 --grace-period=0 --force
kubectl delete pv $(kubectl get pv --no-headers | awk '/postgres-pvc/ {print $1}')
kubectl get pvc
kubectl get pv
kubectl patch pv pvc-8b96198e-ea6c-4142-9474-65d4c01a3511 -p '{"metadata":{"finalizers":null}}' --type=merge
kubectl get pv
kubectl get pods
curl http://localhost:30001/games
minikube ip
curl http://192.168.49.2:30001/games
curl -X POST http://192.168.49.2:30001/games -H "Content-Type: application/json" -d '{
  "name": "Elden Ring",
  "category": "RPG",
  "release_date": "2022-02-25",
  "price": 59.99
}'
curl http://192.168.49.2:30001/games
nano ~/lugx-k8s/game-service/game-service.yaml
kubectl apply -f ~/lugx-k8s/game-service/game-service.yaml
minikube tunnel
kubectl port-forward svc/game-service 8081:8000
lsls
clear
ls
cd order-service
ls
cd app
ls
cat database.py
cat main.py
cat models.py
cat schemas.py
cat routers.py
cd
cd order-service
ls
cat Dockerfile
cat requirements.txt
curl http://localhost:8082/orders
cd
curl http://localhost:8082/orders
cd order-service
docker image
docker images
docker tag order-service divyanjaliperera/order-service:latest
docker push divyanjaliperera/order-service:latest
cd
~/lugx-k8s/order-service/order-service.yaml
cd
ls
cd lugx-k8s
ls
cd
cd order-service
ls
cd
mkdir -p ~/lugx-k8s/order-service
nano ~/lugx-k8s/order-service/order-service.yaml
kubectl apply -f ~/lugx-k8s/order-service/order-service.yaml
kubectl get pods
kubectl get svc order-service
curl http://192.168.49.2:30002/orders
curl -X POST http://192.168.49.2:30002/orders -H "Content-Type: application/json" -d '{
  "user_id": 1,
  "game_id": 1,
  "total_price": 59.99
}'
curl http://192.168.49.2:30002/orders
ssh -i EC2_CW_2025.pem -L 30002:localhost:30002 ec2-user@3.85.29.25
exit
curl http://192.168.49.2:30002/orders
cd
exit
cat ~/lugx-k8s/game-service/game-service.yaml
cd
cd game-service
nano dockerfile
ls
cat Dockerfile
cd
kubectl apply -f ~/lugx-k8s/game-service/game-service.yaml
kubectl delete pod $(kubectl get pods | grep game-service | awk '{print $1}')
kubectl get pods
curl http://localhost:8000/games
curl http://192.168.49.2:30001/games
kubectl get svc game-service
curl http://checkip.amazonaws.com
minikube tunnel
curl http://localhost:8083/events/
curl http://checkip.amazonaws.com
exit;
curl -X POST http://localhost:8083/events/ -H "Content-Type: application/json" -d '{
  "user_id": 1,
  "game_id": 101,
  "event_type": "login",
  "timestamp": "2025-08-02T12:00:00"
}'
exit;
docker images
docker pull divyanjaliperera/game-service:latest
docker images | grep game-service
clear
docker images
docker tag analytics-service divyanjaliperera/analytics-service:latest
docker push divyanjaliperera/analytics-service:latest
cd
mkdir -p ~/lugx-k8s/analytics-service
docker ps | grep clickhouse
kubectl get pods | grep clickhouse
kubectl get svc | grep clickhouse
nano ~/lugx-k8s/clickhouse/clickhouse-deployment.yaml
mkdir -p ~/lugx-k8s/clickhouse
nano ~/lugx-k8s/clickhouse/clickhouse-deployment.yaml
kubectl apply -f ~/lugx-k8s/clickhouse/clickhouse-deployment.yaml
kubectl get pods
kubectl get svc
nano ~/lugx-k8s/analytics-service/analytics-service.yaml
kubectl apply -f ~/lugx-k8s/analytics-service/analytics-service.yaml
kubectl get pods
kubectl logs analytics-service-6d676cc7-8k59c
ls
cd analytics service
cd analytics-service
ls
cd app
ls
cat database.py
cat main.py
cat models.py
cat routers.py
cat routers.py.save
cat schemas.py
cd
cd analytics-service
cat Dockerfile
cat requirements.txt
kubectl delete deployment clickhouse
kubectl delete svc clickhouse
kubectl delete deployment clickhouse
kubectl delete svc clickhouse
cd
nano ~/lugx-k8s/clickhouse/clickhouse-deployment.yaml
kubectl apply -f ~/lugx-k8s/clickhouse/clickhouse-deployment.yaml
kubectl get pods
kubectl delete pod $(kubectl get pods | grep analytics-service | awk '{print $1}')
kubectl get pods
kubectl delete deployment analytics-service
kubectl delete svc analytics-service
docker images
nano ~/lugx-k8s/analytics-service/analytics-service.yaml
kubectl apply -f ~/lugx-k8s/analytics-service/analytics-service.yaml
kubectl get pods
kubectl get svc | grep clickhouse
kubectl delete pod $(kubectl get pods | grep analytics-service | awk '{print $1}')
kubectl get pods
kubectl logs $(kubectl get pods | grep analytics-service | awk '{print $1}')
kubectl create configmap clickhouse-init-script   --from-literal=init.sql="CREATE DATABASE IF NOT EXISTS analytics;"
mkdir -p ~/lugx-k8s/clickhouse
echo "CREATE DATABASE IF NOT EXISTS analytics;" > ~/lugx-k8s/clickhouse/init.sql
kubectl delete configmap clickhouse-init-script
kubectl create configmap clickhouse-init-script   --from-file=init.sql=~/lugx-k8s/clickhouse/init.sql
echo $HOME
kubectl create configmap clickhouse-init-script   --from-file=init.sql=/home/ec2-user/lugx-k8s/clickhouse/init.sql
kubectl describe configmap clickhouse-init-script
nano ~/lugx-k8s/clickhouse/clickhouse-deployment.yaml
kubectl apply -f ~/lugx-k8s/clickhouse/clickhouse-deployment.yaml
nano ~/lugx-k8s/clickhouse/clickhouse-deployment.yaml
kubectl apply -f ~/lugx-k8s/clickhouse/clickhouse-deployment.yaml
kubectl get pods
curl http://localhost:8083/events/
kubectl port-forward svc/analytics-service 8083:8000
kubectl get svc game-service
kubectl get svc analytics-service
curl http://localhost:8083/events/
kubectl get pods | grep analytics
kubectl port-forward svc/analytics-service 8083:8000
curl http://localhost:8083/events/
kubectl logs deploy/analytics-service
kubectl exec -it deploy/clickhouse -- clickhouse-client
curl http://localhost:8083/events/
curl -X POST http://localhost:8083/events/ -H "Content-Type: application/json" -d '{
  "user_id": 1,
  "game_id": 101,
  "event_type": "start",
  "timestamp": "2025-08-02T12:00:00"
}'
curl http://localhost:8083/events/
exit
curl http://localhost:8083/events/
exit
kubectl port-forward svc/analytics-service 8083:8000
kubectl get svc lugx-frontend
exit
cd lugx-k8s
ls
cd frontend
ls
nano ingress.yml
nano ingress.yaml
kubectl apply -f ~/lugx-k8s/frontend/ingress.yaml
kubectl port-forward --namespace ingress-nginx service/ingress-nginx-controller 8080:80
cd
kubectl port-forward --namespace ingress-nginx service/ingress-nginx-controller 8080:80
sudo lsof -i :8080
kubectl port-forward --namespace ingress-nginx service/ingress-nginx-controller 8081:80kubectl port-forward --namespace ingress-nginx service/ingress-nginx-controller 8081:80
kubectl port-forward --namespace ingress-nginx service/ingress-nginx-controller 8081:80
ls
cd templatemo_589_lugx_gaming
ls
cat Dockerfile
cd assets
ls
cd
cd lugx-k8s
ls
docker images
docker tag lugx-frontend:latest divyanjaliperera/lugx-frontend:latest
cd
cd lugx-k8s
docker push divyanjaliperera/lugx-frontend:latest
docker images
cd
kubectl apply -f ~/lugx-k8s/frontend/frontend.yaml
mkdir -p ~/lugx-k8s/frontend
nano ~/lugx-k8s/frontend/frontend.yaml
kubectl apply -f ~/lugx-k8s/frontend/frontend.yaml
minikube ip
minikube service lugx-frontend
minikube addons enable ingress
minikube service game-service
minikube service order-service
kubectl get pods -n ingress-nginx
ls
cd lugx-k8s
ls
cd frontend
ls
cat frontend.yaml
nano frontend.yaml
minikube addons enable ingress
minikube ip
kubectl get ingress
nano ~/lugx-k8s/frontend/ingress.yaml
kubectl apply -f ~/lugx-k8s/frontend/ingress.yaml
kubectl get ingress
nano ~/lugx-k8s/frontend/ingress.yaml
kubectl apply -f ~/lugx-k8s/frontend/ingress.yaml
minikube ip
docker images
cd
kubectl port-forward service/lugx-frontend 8080:80
minikube tunnel
exit
clear
exit
kubectl apply -f ingress.yaml
clear
exit
ls 
cd lugx-k8s
ls
cd frontend
ls
nano ingress.yaml
kubectl apply -f ~/lugx-k8s/frontend/ingress.yaml
kubectl port-forward service/lugx-frontend 8080:80
cle
clear
cd
kubectl get pods
kubectl get svc game-service
minikube service lugx-frontend
minikube service order-service
minikube service game-service
minikube service analytics-service
clear
ls
cd lugx-k8s
ls
cd frontend
ls
nano ingress.yaml
kubectl apply -f ingress.yaml
kubectl get ingress
nao
nano ingress.yaml
kubectl apply -f ingress.yaml
kubectl get ingress
kubectl apply -f ingress.yaml
nano ingress.yaml
kubectl apply -f ingress.yaml
kubectl get ingress
kubectl port-forward svc/game-service 8088:8000
exit
kubectl port-forward --namespace ingress-nginx service/ingress-nginx-controller 8080:80
ls
cd game-service
ls
cat Dockerfile
cat main.py
cat requiremen.txt
cat requirement.txt
cat requirements.txt
cd
ls
cd lugx-k8s
ls
cd game-service
ls
cat game-service.yaml
cd
ls
cd order-service
ls
cat Dockerfile
cat requirements.txt
cd app
ls app
ls
cat database.py
cat main.py
cat models.py
cat routers.py
cat schemas.py
cd
cd lugx-k8s
ls
cd order-service
ls
cat order-service.yaml
cd
ls
cd analytics-service
ls
cat Dockerfile
cat requirements.txt
cd app
ls
cat database.py
cat main.py
cat models.py
cat routers.py
cat routers.py.save
cat schemas.py
cd
cd lugx-k8s
ls
cd analytics-service
ls
cat analytics-service.yaml
cd
cd lugx-k8s
ls
cd clickhouse
ls
cat clickhouse-deployment.yaml
cat init.sql
cd
ls
cd lugx-k8s
ls
cd postgres
ls
cat postgres.yaml
cd
ls
cd lugx-k8s
ls
cd frontend
ls
nano ingress.yaml
kubectl apply -f ingress.yaml
cd
cd frontend
cd lugx-k8s/frontend
ls
kubectl apply -f ingress.yaml
cd
kubectl logs deployment/game-service
kubectl logs deployment/order-service
kubectl logs deployment/analytics-service
kubectl exec -it deployment/clickhouse -- clickhouse-client
POST http://localhost:8080/events/
Content-Type: application/json
{   "user_id": 1,;   "game_id": 101,;   "event_type": "visit",;   "timestamp": "2025-08-02T18:30:00"; }
curl -X POST http://localhost:8080/events/   -H "Content-Type: application/json"   -d '{
    "user_id": 1,
    "game_id": 101,
    "event_type": "visit",
    "timestamp": "2025-08-02T18:30:00"
  }'
minikube ip
curl -X POST http://192.168.49.2/events/   -H "Content-Type: application/json"   -d '{
    "user_id": 1,
    "game_id": 101,
    "event_type": "visit",
    "timestamp": "2025-08-02T18:30:00"
  }'
cd
cd lugx-k8s
cd frontend
ls
nano ingress.yaml
kubectl apply -f ingress.yaml
curl -X POST http://192.168.49.2/events/   -H "Content-Type: application/json"   -d '{
    "user_id": 1,
    "game_id": 101,
    "event_type": "visit",
    "timestamp": "2025-08-02T18:30:00"
  }'
kubectl logs deployment/analytics-service
cd
kubectl exec -it deployment/clickhouse -- clickhouse-client
curl -X POST http://192.168.49.2/events/   -H "Content-Type: application/json"   -d '{
    "user_id": 1,
    "game_id": 101,
    "event_type": "visit",
    "timestamp": "2025-08-02T18:30:00"
  }'
cd lugx_k8s
cd lugx-k8s/frontend
nano ingress.yaml
kubectl apply -f ingress.yaml
cd
kubectl apply -f ingress.yaml
cd lugx-k8s
ls
cd frontend
ls
cat frintend.yaml
cat frontend.yaml
nano ingress.yaml
kubectl apply -f ingress.yaml
kubectl delete ingress lugx-frontend-ingress
kubectl apply -f ingress.yaml
curl -X POST http://192.168.49.2/events/   -H "Content-Type: application/json"   -d '{
    "user_id": 1,
    "game_id": 101,
    "event_type": "visit",
    "timestamp": "2025-08-02T18:30:00"
  }'
cd
curl -X POST http://192.168.49.2/events/   -H "Content-Type: application/json"   -d '{
    "user_id": 1,
    "game_id": 101,
    "event_type": "visit",
    "timestamp": "2025-08-02T18:30:00"
  }'
curl -X POST http://192.168.49.2/events/   -H "Content-Type: application/json"   -d '{
    "user_id": 1,
    "game_id": 101,
    "event_type": "visit",
    "timestamp": "2025-08-02T18:30:00"
  }'
curl -X POST http://192.168.49.2/events   -H "Content-Type: application/json"   -d '{
    "user_id": 1,
    "game_id": 101,
    "event_type": "visit",
    "timestamp": "2025-08-02T18:30:00"
  }'
cd analytics-service
cd app
ls
cat analytics-service/main.py
cat main.py
cat database.py
~/cd
~cd
cd
cd lugx-k8s
ls
cd frontend
ls
nano ingress.yaml
cd
kubectl apply -f lugx-k8s/frontend/ingress.yaml
cd lugx-k8s/frontend
nano ingress.yaml
kubectl apply -f lugx-k8s/frontend/ingress.yaml
cd

kubectl apply -f lugx-k8s/frontend/ingress.yaml
curl -X POST http://192.168.49.2/events/   -H "Content-Type: application/json"   -d '{
    "user_id": 1,
    "game_id": 101,
    "event_type": "visit",
    "timestamp": "2025-08-02T18:30:00"
  }'
curl -X POST http://192.168.49.2/events/events/   -H "Content-Type: application/json"   -d '{
    "user_id": 1,
    "game_id": 101,
    "event_type": "visit",
    "timestamp": "2025-08-02T18:30:00"
  }'
minikube service lugx-frontend
ls
cd lugx-k8s
ls
cd frontend
ls
nano ingress.yaml
cd
kubectl apply -f lugx-k8s/frontend/ingress.yaml
cd lugx-k8s
cd frontend
nano ingress.yaml
cd
kubectl apply -f lugx-k8s/frontend/ingress.yaml
kubectl get pods
kubectl describe ingress lugx-ingress
cd lugx-k8s/frontend/ingress.yaml
nano lugx-k8s/frontend/ingress.yaml
kubectl apply -f lugx-k8s/frontend/ingress.yaml
tree
sudo yum install tree -y
tree
kubectl port-forward --namespace ingress-nginx service/ingress-nginx-controller 8080:80
ssh -i EC2_CW_2025.pem -L 8080:localhost:8080 ec2-user@3.85.29.25
kubectl port-forward --namespace ingress-nginx service/ingress-nginx-controller 8080:80
ssh -i EC2_CW_2025.pem -L 8080:localhost:8080 ec2-user@3.85.29.25
exit
exit
kubectl port-forward --namespace ingress-nginx service/ingress-nginx-controller 8080:80
sudo lsof -i :8080
exit
kubectl port-forward --namespace ingress-nginx service/ingress-nginx-controller 8080:80
kubectl port-forward --namespace ingress-nginx service/ingress-nginx-controller 8888:80
exitexit
exit
kubectl port-forward --namespace ingress-nginx service/ingress-nginx-controller 8080:80
cd lugx-k8s
cd frontend
ls
cat ingress.yaml
kubectl port-forward --namespace ingress-nginx service/ingress-nginx-controller 8080:80
kill -9 534309
kubectl port-forward --namespace ingress-nginx service/ingress-nginx-controller 8080:80
cd lugx-k8s/frontend
nano ingress.yaml
cd
kubectl apply -f lugx-k8s/frontend/ingress.yaml
cd lugx-k8s/frontend
nano ingress.yaml
cd
kubectl apply -f lugx-k8s/frontend/ingress.yaml
cd lugx-k8s/frontend
nano ingress.yaml
cd
kubectl apply -f lugx-k8s/frontend/ingress.yaml
cd lugx-k8s/frontend
nano ingress.yaml
cd
kubectl apply -f lugx-k8s/frontend/ingress.yaml
cd
mv lugx-k8s/frontend/ingress.yaml lugx-k8s/frontend/ingress.yaml.bak
nano lugx-k8s/frontend/ingress.yaml
kubectl apply -f lugx-k8s/frontend/ingress.yaml
yamllint lugx-k8s/frontend/ingress.yaml
pip install --user yamllint
export PATH=$PATH:~/.local/bin
yamllint lugx-k8s/frontend/ingress.yaml
nl lugx-k8s/frontend/ingress.yaml
cd lugx-k8s/frontend
nano ingress.yaml
cd
kubectl apply -f lugx-k8s/frontend/ingress.yaml
yamllint lugx-k8s/frontend/ingress.yaml
cd lugx-k8s/frontend
nano ingress.yaml
cd
yamllint lugx-k8s/frontend/ingress.yaml
kubectl apply -f lugx-k8s/frontend/ingress.yaml
cd lugx-k8s/frontend
nano ingress.yaml
cd
yamllint lugx-k8s/frontend/ingress.yaml
kubectl apply -f lugx-k8s/frontend/ingress.yaml
cd lugx-k8s/frontend
nano ingress.yaml
cd
yamllint lugx-k8s/frontend/ingress.yaml
kubectl apply -f lugx-k8s/frontend/ingress.yaml
cd lugx-k8s/frontend
nano ingress.yaml
cd
