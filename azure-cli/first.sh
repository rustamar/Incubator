#!/bin/bash

# Create a resource group.
az group create --name azcli --location northeurope

# Create a new virtual machine, this creates SSH keys if not present.
az vm create --resource-group azcli --name myVM --image UbuntuLTS --admin-username rustam --ssh-key-value  ~/.ssh/id_rsa.pub

# Open port 80 to allow web traffic to host.
az vm open-port --port 80 --resource-group azcli --name myVM

# Install Docker and start container.
az vm extension set \
  --resource-group azcli \
  --vm-name myVM \
  --name DockerExtension \
  --publisher Microsoft.Azure.Extensions \
  --version 1.1 \
  --settings '{"docker": {"port": "2375"},"compose": {"web": {"image": "nginx","ports": ["80:80"]}}}'
