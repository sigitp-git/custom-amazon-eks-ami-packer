echo "Executing custom scripts during AMI build"
sudo sed -i 's/selinux=1/& default_hugepagesz=1GB hugepagesz=1G hugepages=8/g' /etc/default/grub
sudo grub2-mkconfig -o /boot/grub2/grub.cfg
sudo yum update
sudo yum install libreswan -y
sudo yum install vim -y
sudo yum install git -y
sudo yum install gcc-c++ make -y
sudo yum install kernel -y
sudo yum install -y kernel-devel-$(uname -r)
sudo yum install kernel-headers -y
sudo yum install python3-pip -y
pip3 install meson ninja pyelftools
git clone git://dpdk.org/dpdk-stable
cd dpdk-stable
git checkout v19.11.10
meson build
echo "Executing ninja -C build"
ninja -C build
echo "End of ninja -C build, need further validation, first try: ami-0a74d8415f0a81b06"
cd ..
git clone https://github.com/MarvellEmbeddedProcessors/pcie_ep_octeon_host.git
cd pcie_ep_octeon_host/
make
sudo insmod drivers/octboot_net/octboot_net.ko 
sudo insmod drivers/octeon_ep/octeon_ep.ko 
sudo insmod drivers/octeon_ep_vf/octeon_ep_vf.ko 
sudo insmod drivers/phc/oct_ep_phc.ko