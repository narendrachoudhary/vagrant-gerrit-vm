#!/usr/bin/env bash

export http_proxy=
export https_proxy=

export NODEPOOL_RES_IP=10.10.90.7
export HOST_IP=10.10.90.7
export host_username=centos
export WORKSPACE=$PWD
export no_proxy=127.0.0.1,$HOST_IP

if [ ! -z $http_proxy ]
then
# Proxy related settings - apt-get
cat << EOF | sudo tee -a /etc/apt/apt.conf
Acquire::http::Proxy "$http_proxy";
Acquire::https::Proxy "$https_proxy";
EOF
fi

echo "-----BEGIN RSA PRIVATE KEY-----
MIIEogIBAAKCAQEA3MHSuV4XuMMJZIEnT6y+tc2dVBVIZhh7IkuTFXrVPhhWvrzU
ShysRmx4UkW5OYnGHZVP+Bu2vWJsHKtUnt4dCLTlSIPAoli4F8IZJh/Wb1ow/eVn
hNpR//iwD/UMhWVL/NGoymq6Pk37wqiKqf9CX/P1vvFj9MldJsrcCMtVKRy+qGQ3
rCNefSyA5AlTcpkBu2vlIc5xgXUGllqZ5sGsHlz5xZ10HTHxhsEySZSikkmQnMh4
ZZEravyEUHaf0iXoAlEKqc5h9XVFyd4bpMbXPcSVsqi42VN8wS9F5JWODttEN2zd
VLt0CjIfmQwvcpxg5MtI8fcbj9ZimnHnMw4/1QIDAQABAoIBACJOuPn35oXfQbFt
5Pcb6JOGfeHYYOUE/vXoetZGvaclzy1bWT6fUCKtrtFSZqPLho+IaeIsJG0wQ479
DWyXJjn5KvznBOP2F74ReykSn5e0k5KRuVHLQB0gv/Pq6GQ+xt1mk+3JQmJ2ah7p
ZItg0SbqWhGvoBIlzSU/N4ziVLzLoe1Ee1tGDoRwuQLFHyLvxg7oDBpMhqWysMtf
AriRweXXwZgkNotqDHP+NwryH1KipkTanXyaoxcat90eIfF0VdSqm1rkcfpcXnNR
WN80eeLl1KgEapNvQ1yFiV3hvFI+CqQLu7uLadaOe4QmwOYDeYraWMxhY2TQ1a91
8vwAVq0CgYEA73DwFNxWbOXUrG0u9Lj47P7c0HNVqLwBWWpUo2OrUmMyUfumR9RG
AzQzuZ+heb9NXyyBK+cMQaLVy0SaMtlxM8OoDtDtRIcVE9hHfmnEEr7+zA/Rkubg
8ppKKvg4N8yIhtdic0l0StfMMWEvuAcY3RdPS1IJEklx6xyoTLA6DLcCgYEA7AYa
drfv4vmqSVrS+5Doq8fkY4V1+HJfR5MhyPpdsnFNtTA+o8LJTFn5zWPRrELcmc/E
8KuolmPxXK3oD8gDKxuvsbyVFbg2s7LOYkzZEPi8GMPQ0w45w8q6OkgBFh13Vtjn
zxRsZsDUhdENYMEJ7EFo5Zo+n+3WCgvPOP0NY9MCgYA33MeGdmmLeouFtutvmQAq
esOVtnLTrRk7fT1F6Wj9DbuduPJwa6vx72np8r4/o0wv2jhAv+TyI0Vx6Q14s5Zf
l1RMMJ5KkKFwQdNcQNzH6tuTTFV+ynLM5wZKxCKJkiSAIRwM/aQuGe6/zobNjopU
eq27SuZm58+2JLd3PN4uPQKBgCKnCr+fZdL3QO8gLJXOwrpl0Lxj3dwqPp7tlSpC
x/ro87XEbY3xjUhudWSYYTJfZrAWdx22tjvOVKN8zPN0NDLiD7uSqnjT4QQlHnQE
QGJjgopIRaKXFhgO7aSc6bvre5f+pJocr4WujgVPmh04elJ7kAEV0lf8vU4gSb5e
ONcNAoGAJix/1eiOjBrfS4xfZnoXuWtQVOcrw2p5aH/KKfIw+c+sD72mdxrjmmj0
ETM7YSkCaIlze5Vak3ygiHmsWW6DGnEgVvvsVGeOuYqP7k6GKrB+r0W3FUeCcKzL
GRvZKpTZERkPyT/x1AtWDVJOG8sPHj7Shhe/3u7uqIej9q++tiM=
-----END RSA PRIVATE KEY-----" > ~/.ssh/osh-contrail-key-pair-ubuntu.pem

echo "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDcwdK5Xhe4wwlkgSdPrL61zZ1UFUhmGHsiS5MVetU+GFa+vNRKHKxGbHhSRbk5icYdlU/4G7a9Ymwcq1Se3h0ItOVIg8CiWLgXwhkmH9ZvWjD95WeE2lH/+LAP9QyFZUv80ajKaro+TfvCqIqp/0Jf8/W+8WP0yV0mytwIy1UpHL6oZDesI159LIDkCVNymQG7a+UhznGBdQaWWpnmwaweXPnFnXQdMfGGwTJJlKKSSZCcyHhlkStq/IRQdp/SJegCUQqpzmH1dUXJ3hukxtc9xJWyqLjZU3zBL0XklY4O20Q3bN1Uu3QKMh+ZDC9ynGDky0jx9xuP1mKaceczDj/V Generated-by-Nova" >> ~/.ssh/authorized_keys
echo "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDcwdK5Xhe4wwlkgSdPrL61zZ1UFUhmGHsiS5MVetU+GFa+vNRKHKxGbHhSRbk5icYdlU/4G7a9Ymwcq1Se3h0ItOVIg8CiWLgXwhkmH9ZvWjD95WeE2lH/+LAP9QyFZUv80ajKaro+TfvCqIqp/0Jf8/W+8WP0yV0mytwIy1UpHL6oZDesI159LIDkCVNymQG7a+UhznGBdQaWWpnmwaweXPnFnXQdMfGGwTJJlKKSSZCcyHhlkStq/IRQdp/SJegCUQqpzmH1dUXJ3hukxtc9xJWyqLjZU3zBL0XklY4O20Q3bN1Uu3QKMh+ZDC9ynGDky0jx9xuP1mKaceczDj/V Generated-by-Nova" >> ~/dt967u_public_key.pub
chmod 600 ~/.ssh/authorized_keys
chmod 600 ~/dt967u_public_key.pub
chmod 600 ~/.ssh/osh-contrail-key-pair-ubuntu.pem
eval $(ssh-agent -s)
ssh-add ~/.ssh/osh-contrail-key-pair-ubuntu.pem

# Environment Setup
##########################################################################
sudo yum update -y
sudo yum groupinstall -y 'Development Tools'
sudo systemctl reboot
sudo yum install -y https://centos7.iuscommunity.org/ius-release.rpm
sudo yum install -y git python35u python35u-pip python35u-devel java-1.8.0-openjdk
sudo alternatives --install /usr/bin/python3 python3 /usr/bin/python3.5 10
sudo alternatives --install /usr/bin/pip3 pip3 /usr/bin/pip3.5 10
sudo pip3 install python-openstackclient bindep

sudo bash -c "cat << EOF > /etc/yum.repos.d/bigtop.repo
[bigtop]
name=Bigtop
enabled=1
gpgcheck=1
type=NONE
baseurl=http://repos.bigtop.apache.org/releases/1.2.1/centos/7/x86_64
gpgkey=https://dist.apache.org/repos/dist/release/bigtop/KEYS
EOF"

sudo yum install -y zookeeper zookeeper-server
sudo systemctl start zookeeper-server.service
sudo systemctl status zookeeper-server.service
sudo systemctl enable zookeeper-server.service

##########################################################################


# Install Nodepool
##########################################################################
cd $WORKSPACE
sudo adduser --system nodepool --home-dir /var/lib/nodepool --create-home
ssh-keygen -t rsa -b 2048 -f nodepool_rsa -N "" -P "" # don't enter a passphrase
sudo mkdir /etc/nodepool/
sudo mkdir /var/log/nodepool
sudo chgrp -R nodepool /var/log/nodepool/
sudo chmod 775 /var/log/nodepool/

git clone https://git.zuul-ci.org/nodepool
cd nodepool/
sudo yum -y install $(bindep -b)
sudo pip3 install .

sudo cp etc/nodepool-launcher.service /etc/systemd/system/nodepool-launcher.service
sudo chmod 0644 /etc/systemd/system/nodepool-launcher.service

sudo mkdir /etc/systemd/system/nodepool-launcher.service.d
sudo cp etc/nodepool-launcher.service.d/centos.conf \
     /etc/systemd/system/nodepool-launcher.service.d/centos.conf
sudo chmod 0644 /etc/systemd/system/nodepool-launcher.service.d/centos.conf
##########################################################################


# Install Zuul
##########################################################################
cd $WORKSPACE
sudo adduser --system zuul --home-dir /var/lib/zuul --create-home
sudo mkdir /etc/zuul/
sudo mkdir /var/log/zuul/
sudo chown zuul.zuul /var/log/zuul/
sudo mkdir /var/lib/zuul/.ssh
sudo chmod 0700 /var/lib/zuul/.ssh
sudo mv nodepool_rsa /var/lib/zuul/.ssh
sudo chown -R zuul.zuul /var/lib/zuul/.ssh

git clone https://git.zuul-ci.org/zuul
cd zuul/
sudo yum -y install $(bindep -b)
sudo pip3 install .

sudo cp etc/zuul-scheduler.service /etc/systemd/system/zuul-scheduler.service
sudo cp etc/zuul-executor.service /etc/systemd/system/zuul-executor.service
sudo cp etc/zuul-web.service /etc/systemd/system/zuul-web.service
sudo chmod 0644 /etc/systemd/system/zuul-scheduler.service
sudo chmod 0644 /etc/systemd/system/zuul-executor.service
sudo chmod 0644 /etc/systemd/system/zuul-web.service

sudo mkdir /etc/systemd/system/zuul-scheduler.service.d
sudo cp etc/zuul-scheduler.service.d/centos.conf \
    /etc/systemd/system/zuul-scheduler.service.d/centos.conf
sudo chmod 0644 /etc/systemd/system/zuul-scheduler.service.d/centos.conf
sudo mkdir /etc/systemd/system/zuul-executor.service.d
sudo cp etc/zuul-executor.service.d/centos.conf \
    /etc/systemd/system/zuul-executor.service.d/centos.conf
sudo chmod 0644 /etc/systemd/system/zuul-executor.service.d/centos.conf
sudo mkdir /etc/systemd/system/zuul-web.service.d
sudo cp etc/zuul-web.service.d/centos.conf \
    /etc/systemd/system/zuul-web.service.d/centos.conf
sudo chmod 0644 /etc/systemd/system/zuul-web.service.d/centos.conf

##########################################################################

# Configure Nodepool
##########################################################################
ssh-keyscan -t ed25519 $NODEPOOL_RES_IP >> /tmp/key_scan
KEY_SCAN=`cat /tmp/key_scan`

sudo bash -c "cat << EOF > /etc/nodepool/nodepool.yaml
zookeeper-servers:
  - host: localhost

labels:
  - name: ubuntu-xenial

providers:
  - name: static-vms
    driver: static
    pools:
      - name: main
        nodes:
          - name: $NODEPOOL_RES_IP
            labels: ubuntu-xenial
            host-key: "$KEY_SCAN"
            username: zuul
EOF
##########################################################################

# Configure Zuul
##########################################################################
sudo bash -c "cat > /etc/zuul/main.yaml <<EOF
- tenant:
    name: quickstart
EOF"

sudo bash -c "cat > /etc/zuul/zuul.conf <<EOF
[gearman]
server=127.0.0.1

[gearman_server]
start=true

[executor]
private_key_file=/var/lib/zuul/.ssh/nodepool_rsa

[web]
listen_address=0.0.0.0

[scheduler]
tenant_config=/etc/zuul/main.yaml
EOF"

sudo systemctl daemon-reload

sudo systemctl start nodepool-launcher.service
sudo systemctl status nodepool-launcher.service
sudo systemctl enable nodepool-launcher.service

sudo systemctl start zuul-scheduler.service
sudo systemctl status zuul-scheduler.service
sudo systemctl enable zuul-scheduler.service
sudo systemctl start zuul-executor.service
sudo systemctl status zuul-executor.service
sudo systemctl enable zuul-executor.service
sudo systemctl start zuul-web.service
sudo systemctl status zuul-web.service
sudo systemctl enable zuul-web.service

