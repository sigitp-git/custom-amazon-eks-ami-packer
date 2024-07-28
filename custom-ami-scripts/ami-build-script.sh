echo "Executing custom scripts during AMI build"
sudo sed -i 's/selinux=1/& default_hugepagesz=1GB hugepagesz=1G hugepages=8/g' /etc/default/grub
sudo grub2-mkconfig -o /boot/grub2/grub.cfg
sudo yum install libreswan -y
sudo yum install vim -y
