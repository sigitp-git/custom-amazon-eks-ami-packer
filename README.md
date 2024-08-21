# Amazon EKS AMI Build Specification

Source: https://github.com/awslabs/amazon-eks-ami

This repository contains resources and configuration scripts for building a
custom Amazon EKS AMI with [HashiCorp Packer](https://www.packer.io/). This is
the same configuration that Amazon EKS uses to create the official Amazon
EKS-optimized AMI.

**Check out the [📖 documentation](https://awslabs.github.io/amazon-eks-ami/) to learn more.**

---

## 🚀 Getting started

If you are new to Amazon EKS, we recommend that you follow
our [Getting Started](https://docs.aws.amazon.com/eks/latest/userguide/getting-started.html)
chapter in the Amazon EKS User Guide. If you already have a cluster, and you
want to launch a node group with your new AMI, see [Launching Amazon EKS Worker
Nodes](https://docs.aws.amazon.com/eks/latest/userguide/launch-workers.html).

## 🔢 Pre-requisites

You must have [Packer](https://www.packer.io/) version 1.8.0 or later installed on your local system.
For more information, see [Installing Packer](https://www.packer.io/docs/install/index.html)
in the Packer documentation. You must also have AWS account credentials
configured so that Packer can make calls to AWS API operations on your behalf.
For more information, see [Authentication](https://www.packer.io/docs/builders/amazon.html#specifying-amazon-credentials)
in the Packer documentation.

## 👷 Building the AMI

A Makefile is provided to build the Amazon EKS Worker AMI, but it is just a small wrapper around
invoking Packer directly. You can initiate the build process by running the
following command in the root of this repository:

```bash
# build an AMI with the latest Kubernetes version and the default OS distro
make

# build an AMI with a specific Kubernetes version and the default OS distro
make k8s=1.29

# build an AMI with a specific Kubernetes version and a specific OS distro
make k8s=1.29 os_distro=al2023

# check default value and options in help doc
make help

# Graviton AMI build for K8S 1.29 and AL2023
make k8s=1.29 os_distro=al2023 arch=arm64

# X86 AMI build for K8S 1.29 and AL2023
make k8s=1.29 os_distro=al2023
```

The Makefile chooses a particular kubelet binary to use per Kubernetes version which you can [view here](Makefile).

> **Note**
> The default instance type to build this AMI does not qualify for the AWS free tier.
> You are charged for any instances created when building this AMI.

## DPDK device binding
This script: `https://github.com/sigitp-git/custom-amazon-eks-ami-packer/blob/main/custom-ami-scripts/dpdk-devbind.py` source is `https://raw.githubusercontent.com/DPDK/dpdk/main/usertools/dpdk-devbind.py`. It will be used on CloudFormation template to bind certain PCI NIC address to `vfio-pci` driver instead of the defaul ENA driver. This PCI NIC then will be used for DPDK interface. The AMI will only need `modprobe vfio-pci` and `echo 1 > /sys/module/vfio/parameters/enable_unsafe_noiommu_mode`. No other ENA DPDK driver required since `vfio-pci` is alredy included in the AMI kernel (Amazon Linux 2023, Kernel 6.1). Note that once the PCI NIC bound to `vfio-pci` driver, you won't see that NIC with Linux commands such as `ifconfig`, but you can still see the PCI address. You can use this PCI address to create your CNI configuration (host-device CNI for example).

## 🔒 Security

For security issues or concerns, please do not open an issue or pull request on GitHub. Please report any suspected or confirmed security issues to AWS Security https://aws.amazon.com/security/vulnerability-reporting/

## ⚖️ License Summary

This sample code is made available under a modified MIT license. See the LICENSE file.
