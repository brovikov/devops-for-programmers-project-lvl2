install:
	ansible-galaxy role install -r requirements.yml
	ansible-galaxy collection install -r requirements.yml

deploy:
	ansible-playbook -i inventory.ini -v playbook.yml --vault-password-file vault-password

create-vault:
	ansible-vault create ./group_vars/webservers/vault.yml --vault-password-file vault-password

encrypt-vault:
	ansible-vault encrypt ./group_vars/webservers/vault.yml --vault-password-file vault-password

decrypt-vault:
	ansible-vault decrypt ./group_vars/webservers/vault.yml --vault-password-file vault-password

view-vault:
	ansible-vault view ./group_vars/webservers/vault.yml --vault-password-file vault-password

