# Spin up a Linode and take note of your login credentials
# Make a secondary account and add it to the sudo group
usermod -a -G sudo username 
# Disable ssh root login
sed -i 's/^PermitRootLogin yes/#PermitRootLogin yes/' /etc/ssh/sshd_config
# login to the secondary account and update && upgrade the system
login 
# Install fail2ban
apt-get install fail2ban
# Start fail2ban client and exit
fail2ban-client start & exit
