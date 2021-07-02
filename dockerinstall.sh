# Install Docker on  Ubuntu 14.04
# Ref https://docs.docker.com/engine/installation/linux/ubuntulinux/
# Update your APT package index.
sudo apt-get update
# Ensure that APT works with the https method, and that CA certificates are installed.
sudo apt-get -y install apt-transport-https ca-certificates curl gnupg lsb-release
# Add the new GPG key.
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg

# Add docker.list 
echo "deb [arch=amd64 signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

# Update your APT package index.
sudo apt-get update
# Purge the old repo if it exists.
sudo apt-get -y install docker-ce docker-ce-cli containerd.io
# Verify that APT is pulling from the right repository.

# install docker-compose
sudo curl -L "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose

#set owner
sudo chmod +x /usr/local/bin/docker-compose

# create network
sudo docker network create sml_service_network
