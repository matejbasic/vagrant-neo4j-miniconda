# vagrant-neo4j-miniconda-py2neo-scikit
Vagrant box based on ubuntu/trusty64 with Neo4j, Miniconda, and libs such as py2neo, scikit-learn and matplotlib

## Installation
```bash
vagrant up
```
To install toolkits such as py2neo, scikit-learn and matplotlib:
```sh
vagrant ssh
chmod +x /public/libs.sh
bash /public/libs.sh
```

### Neo4j
After the Neo4j installation http and https connectors are enabled on a default address.
You can access Neo4j via browser from your host via 192.168.33.10:7474/browser/ or localhost:7474/browser/.
IP address is located in a Vagrant file (search for config.vm.network "private_network") and ports in setup/neo4j.sh.

### Miniconda
Miniconda is installed in /usr/local and path is added to ~/.bashrc in a setup/miniconda.sh

### Libs and toolkits
You can add/remove libs and toolkits in a public/libs.sh
To output matplotlib's charts as an image, use Agg [backend](http://matplotlib.org/faq/usage_faq.html#what-is-a-backend):
```python
import matplotlib
matplotlib.use('Agg')
import matplotlib.pyplot as plt
```

### Other
Shared dir VM path: /public

### TODO
- install libs with vm provision
- do md5 checks
