

This folder contains manifests and Helm values used to deploy a 3-node **Kafka 4.1 (KRaft mode)** cluster locally on **Minikube** using **Strimzi 0.48+**.



```bash
brew install kubectl minikube helm kcat
minikube start --driver=docker --cpus=2 --memory=6144 --disk-size=20g
kubectl create namespace kafka
helm repo add strimzi https://strimzi.io/charts/ && helm repo update
helm upgrade --install strimzi-kafka-operator strimzi/strimzi-kafka-operator -n kafka -f values-kraft.yaml
kubectl -n kafka rollout status deploy/strimzi-cluster-operator
kubectl apply -f kafka-persistent.yaml -n kafka
kubectl -n kafka get pods -w


**Commit & push from repo root:**
```bash
cd ..            # back to repo root
git add kafka-kraft-setup/README.md
git commit -m "Add README for Kafka on K8s (KRaft) setup"
git push

cat > README.md <<'EOF'


This folder contains manifests and Helm values used to deploy a 3-node **Kafka 4.1 (KRaft mode)** cluster locally on **Minikube** using **Strimzi 0.48+**.



```bash
brew install kubectl minikube helm kcat
minikube start --driver=docker --cpus=2 --memory=6144 --disk-size=20g
kubectl create namespace kafka
helm repo add strimzi https://strimzi.io/charts/ && helm repo update
helm upgrade --install strimzi-kafka-operator strimzi/strimzi-kafka-operator -n kafka -f values-kraft.yaml
kubectl -n kafka rollout status deploy/strimzi-cluster-operator
kubectl apply -f kafka-persistent.yaml -n kafka
kubectl -n kafka get pods -w

