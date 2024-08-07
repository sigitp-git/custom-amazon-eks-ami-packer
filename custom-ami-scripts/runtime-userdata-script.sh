date >> /var/log/custom-ami-runtime-script.out
echo "Executing runtime AMI customization script" >> /var/log/custom-ami-runtime-script.out
echo "net.ipv4.conf.default.rp_filter = 0" | tee -a /etc/sysctl.conf
echo "net.ipv4.conf.all.rp_filter = 0" | tee -a /etc/sysctl.conf
sysctl -p
systemctl enable ipsec.service
systemctl start ipsec.service
