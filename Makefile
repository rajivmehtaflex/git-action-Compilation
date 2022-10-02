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
	sudo apt install neofetch 

installactionrun:
	@sudo rm -rf /etc/act
	@curl https://raw.githubusercontent.com/nektos/act/master/install.sh | sudo bash
	@sudo cp /bin/act /etc
	@sudo rm -rf ./bin

# installliquibase:
# 	@echo $PWD
# 	@tar -xf liquibase-4.16.1.tar.gz
# 	@sudo chmod +rwx $PWD/liquibase/internal/lib/liquibase-core.jar
# 	@$PWD/liquibase/liquibase --version


