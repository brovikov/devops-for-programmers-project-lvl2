### Hexlet tests and linter status:
[![Actions Status](https://github.com/brovikov/devops-for-programmers-project-lvl2/workflows/hexlet-check/badge.svg)](https://github.com/brovikov/devops-for-programmers-project-lvl2/actions)
   
Installs web-based project management and issue tracking tool - Redmine.  
   
User invetnory.ini to set hosts  
   
`make install` - installs required role and collection  
   
`make encrypt-vault` - encrypts sensetive variables in `./group_vars/webservers/vault.yml` file  
   
`make decrypt-vault` - use decrypt if need change DB user and password  
   
`make deploy` - deploys Redmine app  
   
DB vars located at `./all/vars`:
```
db_host:
db_port:
data_base:
```
