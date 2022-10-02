.PHONY: listdir installactionrun

sample1:sample2
	@echo 'Line-1'

sample2:
	@echo 'Line-2'

listdir:
	ls -alr

changepermission:
	chmod +x ./test-shell.plugin
	ls -alr ./test-shell.plugin

installneofetch:
	sudo apt update
	sudo install neofetch 

installactionrun:
	@sudo rm -rf /etc/act
	@curl https://raw.githubusercontent.com/nektos/act/master/install.sh | sudo bash
	@sudo cp /bin/act /etc
	@sudo rm -rf ./bin


