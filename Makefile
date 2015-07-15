#Makefile for example vagrant box

.PHONY: default
default: install-gems install-puppet-modules vagrant-up
	@echo [Done]

.PHONY: install-gems
install-gems:
	@echo [Installing gems]
	@bundle install
	@echo [Done - Installing gems]

.PHONY: install-puppet-modules
install-puppet-modules:
	@echo [Installing required puppet modules]
	@bundle exec librarian-puppet install
	@echo [Done - Installng required puppet modules]

.PHONY: vagrant-up
vagrant-up:
	@echo [Installing Vagrant plugin]
	@vagrant status
	@echo [Done - Installing Vagrant plugin]
	@echo [Starting Vagrant VM]
	@vagrant up
	@echo [Finished starting Vagrant VMs]
