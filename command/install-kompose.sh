echo "Downloading Kompose ..."
curl -L https://github.com/kubernetes/kompose/releases/download/v1.26.1/kompose-darwin-amd64 -o kompose
echo "Install Kompose ..."
chmod +x kompose
echo "Kompose is ready to use ..."
sudo mv ./kompose /usr/local/bin/kompose
