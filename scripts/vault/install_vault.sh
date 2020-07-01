#! /bin/bash
  
echo "Installing Vault on server\n"

# Start install of vault
wget https://releases.hashicorp.com/vault/1.4.2/vault_1.4.2_linux_amd64.zip
unzip vault_1.4.2_linux_amd64.zip
cp vault /usr/bin/

# Start vault as a service
systemctl enable vault-server.service
systemctl start vault-server.service

export VAULT_ADDR=http://127.0.0.1:8200

echo "Installation of Vault complete\n"
exit 0
