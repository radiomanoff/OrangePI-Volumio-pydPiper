curl -sSL https://get.docker.com | sh
sudo systemctl enable docker
sudo systemctl start docker
echo '{ "storage-driver": "devicemapper" }' | sudo tee -a /etc/docker/daemon.json > /dev/null
sudo service docker restart
sudo docker run hello-world
sudo docker pull dhrone/pydpiper:latest
sudo cp pydpiper.service /etc/systemd/system
sudo systemctl enable pydpiper
sudo systemctl start pydpiper
