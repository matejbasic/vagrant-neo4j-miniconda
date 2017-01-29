#!/usr/bin/env bash

wget -nv http://debian.neo4j.org/neotechnology.gpg.key
sudo apt-key add neotechnology.gpg.key
echo 'deb http://debian.neo4j.org/repo stable/' | sudo tee /etc/apt/sources.list.d/neo4j.list
sudo rm neotechnology.gpg.key

sudo apt-get update
sudo apt-get install -y neo4j

sudo sed -i -- 's/#dbms.connectors.default_listen_address/dbms.connectors.default_listen_address/g' /etc/neo4j/neo4j.conf
sudo sed -i -- 's/#dbms.connector.http.listen_address=:7474/dbms.connector.http.listen_address=:7474/g' /etc/neo4j/neo4j.conf
sudo sed -i -- 's/#dbms.connector.https.listen_address=:7473/dbms.connector.https.listen_address=:7473/g' /etc/neo4j/neo4j.conf

sudo sed -i '$a NEO4J_ULIMIT_NOFILE=40000' /etc/default/neo4j

sudo sed -i -- 's/# End of file/root    soft    nofile  40000\nroot    hard    nofile  40000\nneo4j   soft    nofile  40000\nneo4j   hard    nofile  40000\nvagrant   soft    nofile  40000\nvagrant   hard    nofile  40000\n\n# End of file/g' /etc/security/limits.conf
sudo sed -i -- 's/# session    required   pam_limits.so/session    required   pam_limits.so/g' /etc/pam.d/su
sudo service neo4j restart

# pip install py2neo - for importer!
