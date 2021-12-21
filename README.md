# Install MySQL
ansible-playbook -i host mysql.yml
# Install Zookeeper
ansible-playbook -i host zk.yml
# Install nginx
ansible-playbook -i host nginx.yml
# Install tomcat
ansible-playbook -i host tomcat8.yml
# Install jdk
ansible-playbook -i host jdk.yml
# Install zabbix-agent
ansible-playbook -i host install-zabbix-agentd.yml
# Auto Parted
ansible-playbook -i host auto_parted.yml
