#!/bin/bash
dnf install ansible -y
cd /tmp
git clone https://github.com/jagadish7-25/ansi-exp.git
cd expense-ansible
ansible-playbook -i inv.in mysql.yml 
ansible-playbook -i inv.in backend.yml
ansible-playbook -i inv.in frontend.yml  
