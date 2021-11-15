### Hexlet tests and linter status:
[![Actions Status](https://github.com/brovikov/devops-for-programmers-project-lvl2/workflows/hexlet-check/badge.svg)](https://github.com/brovikov/devops-for-programmers-project-lvl2/actions)
   
Live app: https://hexlet-task.pp.ua/
  
Installs web-based project management and issue tracking tool - Redmine latest release
v 4.2.3.  
  
**Host requirements:**  
OS: Linux / MacOS  
Ansible v. 2.11.4  
Python 3.9.7  
jinja 3.0.1  
  
**Servers:**  
powered by Ubuntu 20.04 and Docker
by DigitalOcean Version 19.03.12 (Docker CE 20.10.7, Docker Compose 1.27.0)  
  
**Database:**  
1 GB RAM / 1vCPU / 10 GB Disk / Primary only  
PostgreSQL 13  
  
Use `invetnory.ini` to set hosts  
   
`make install` - installs required role and collection  
   
Before encrypt/decrypt sensetive data - add password to file: `vault-password`
  
`make create-vault` - creates vault file `./group_vars/webservers/vault.yml` file  
  
`make encrypt-vault` - encrypts sensetive variables in `./group_vars/webservers/vault.yml` file  
  
`make decrypt-vault` - use decrypt if need change DB user and password  
   
`make deploy` - deploys Redmine app  
   
DB vars located at `./all/vars`:
```
db_host:
db_port:
data_base:
```
