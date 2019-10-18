ANSIBLE_PATH=~/workspace/src/github.com/alessandrojp/ansible

.PHONY: xcode install put

xcode:
	xcode-select --install

install:
	/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
	brew install ansible
	git clone https://github.com/alessandrojp/ansible.git ${ANSIBLE_PATH} && \
	cd ${ANSIBLE_PATH} && \
	ansible-playbook -i ansible/hosts ansible/packages.yml

put:
	#ln -sf ${CURDIR}/.emacs.d ${HOME}/.emacs.d
	ln -sf ${CURDIR}/.zshrc ${HOME}/.zshrc
	ln -sf ${CURDIR}/.gitconfig ${HOME}/.gitconfig
