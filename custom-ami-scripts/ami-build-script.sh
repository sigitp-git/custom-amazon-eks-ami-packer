echo "Executing custom scripts during AMI build"
sudo sed -i 's/selinux=1/& default_hugepagesz=1GB hugepagesz=1G hugepages=8/g' /etc/default/grub
sudo grub2-mkconfig -o /boot/grub2/grub.cfg
sudo yum install libreswan -y
sudo yum install vim -y
sudo yum install git -y
sudo yum install gcc-c++ make -y
sudo yum install -y kernel-devel-$(uname -r)
git clone https://github.com/MarvellEmbeddedProcessors/pcie_ep_octeon_host.git
cd pcie_ep_octeon_host/
make
sudo insmod drivers/octboot_net/octboot_net.ko 
sudo insmod drivers/octeon_ep/octeon_ep.ko 
sudo insmod drivers/octeon_ep_vf/octeon_ep_vf.ko 
sudo insmod drivers/phc/oct_ep_phc.ko