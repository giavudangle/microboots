echo "Downloading K8S..."
curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/darwin/arm64/kubectl"

echo "Validating K8S Checksum..."
curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/darwin/arm64/kubectl.sha256"

echo "$(<kubectl.sha256)  kubectl" | shasum -a 256 --check

echo "Moving the kubectl binary..."
chmod +x ./kubectl
sudo mv ./kubectl /usr/local/bin/kubectl
sudo chown root: /usr/local/bin/kubectl

echo "Done ..."
kubectl version --client
