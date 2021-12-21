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
