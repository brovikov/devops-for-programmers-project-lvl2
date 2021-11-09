install:
	ansible-galaxy role install -r requirements.yml

deploy:
	ansible-playbook -i hosts -v playbook.yml --vault-password-file vault-password

encrypt-vault:
	ansible-vault encrypt $(FILE) --vault-password-file vault-password

decrypt-vault:
	ansible-vault decrypt $(FILE) --vault-password-file vault-password

view-vault:
	ansible-vault view $(FILE) --vault-password-file vault-password

