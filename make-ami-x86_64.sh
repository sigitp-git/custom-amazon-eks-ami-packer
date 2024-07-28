make k8s=1.29 os_distro=al2023

Output:
2024-07-28T23:40:08Z: ==> amazon-ebs: Creating AMI amazon-eks-al2023-node-1.29-v20240728 from instance i-08929c7199a89c792
2024-07-28T23:40:09Z:     amazon-ebs: AMI: ami-014e38059d502e98c
2024-07-28T23:40:09Z: ==> amazon-ebs: Waiting for AMI to become ready...
2024-07-28T23:43:09Z: ==> amazon-ebs: Skipping Enable AMI deprecation...
2024-07-28T23:43:09Z: ==> amazon-ebs: Modifying attributes on AMI (ami-014e38059d502e98c)...
2024-07-28T23:43:09Z:     amazon-ebs: Modifying: description
2024-07-28T23:43:09Z: ==> amazon-ebs: Modifying attributes on snapshot (snap-06170aaf0ebd36602)...
2024-07-28T23:43:09Z: ==> amazon-ebs: Adding tags to AMI (ami-014e38059d502e98c)...
2024-07-28T23:43:09Z: ==> amazon-ebs: Tagging snapshot: snap-06170aaf0ebd36602
2024-07-28T23:43:09Z: ==> amazon-ebs: Creating AMI tags
2024-07-28T23:43:09Z:     amazon-ebs: Adding tag: "build_region": "us-east-1"
2024-07-28T23:43:09Z:     amazon-ebs: Adding tag: "source_ami_id": "ami-0b9ea8ce4db540197"
2024-07-28T23:43:09Z:     amazon-ebs: Adding tag: "source_ami_name": "al2023-ami-minimal-2023.5.20240722.0-kernel-6.1-x86_64"
2024-07-28T23:43:09Z:     amazon-ebs: Adding tag: "containerd_version": "*"
2024-07-28T23:43:09Z:     amazon-ebs: Adding tag: "kubernetes": "1.29.6/2024-07-12/bin/linux/x86_64"
2024-07-28T23:43:09Z:     amazon-ebs: Adding tag: "ssm_agent_version": ""
2024-07-28T23:43:09Z:     amazon-ebs: Adding tag: "Name": "amazon-eks-al2023-node-1.29-v20240728"
2024-07-28T23:43:09Z:     amazon-ebs: Adding tag: "created": "1722209757"
2024-07-28T23:43:09Z: ==> amazon-ebs: Creating snapshot tags
2024-07-28T23:43:10Z: ==> amazon-ebs: Terminating the source AWS instance...
2024-07-28T23:43:40Z: ==> amazon-ebs: Cleaning up any extra volumes...
2024-07-28T23:43:40Z: ==> amazon-ebs: No volumes to clean up, skipping
2024-07-28T23:43:40Z: ==> amazon-ebs: Deleting temporary security group...
2024-07-28T23:43:40Z: ==> amazon-ebs: Deleting temporary keypair...
2024-07-28T23:43:41Z: ==> amazon-ebs: Running post-processor: manifest
2024-07-28T23:43:41Z: ==> amazon-ebs: Running post-processor: manifest
2024-07-28T23:43:41Z: Build 'amazon-ebs' finished after 7 minutes 42 seconds.

==> Wait completed after 7 minutes 42 seconds

==> Builds finished. The artifacts of successful builds are:
--> amazon-ebs: AMIs were created:
us-east-1: ami-014e38059d502e98c

--> amazon-ebs: AMIs were created:
us-east-1: ami-014e38059d502e98c

--> amazon-ebs: AMIs were created:
us-east-1: ami-014e38059d502e98c

make[1]: Leaving directory '/home/ubuntu/environment/custom-amazon-eks-ami-packer'
