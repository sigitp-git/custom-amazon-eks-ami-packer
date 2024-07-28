make k8s=1.29 os_distro=al2023 arch=arm64

Output:
2024-07-28T23:23:17Z: ==> amazon-ebs: Creating AMI amazon-eks-al2023-arm64-node-1.29-v20240728 from instance i-0f4755218cc29b7af
2024-07-28T23:23:18Z:     amazon-ebs: AMI: ami-0fad281330d83e843
2024-07-28T23:23:18Z: ==> amazon-ebs: Waiting for AMI to become ready...
2024-07-28T23:26:18Z: ==> amazon-ebs: Skipping Enable AMI deprecation...
2024-07-28T23:26:18Z: ==> amazon-ebs: Modifying attributes on AMI (ami-0fad281330d83e843)...
2024-07-28T23:26:18Z:     amazon-ebs: Modifying: description
2024-07-28T23:26:18Z: ==> amazon-ebs: Modifying attributes on snapshot (snap-014027ade9f9cfaf3)...
2024-07-28T23:26:18Z: ==> amazon-ebs: Adding tags to AMI (ami-0fad281330d83e843)...
2024-07-28T23:26:18Z: ==> amazon-ebs: Tagging snapshot: snap-014027ade9f9cfaf3
2024-07-28T23:26:18Z: ==> amazon-ebs: Creating AMI tags
2024-07-28T23:26:18Z:     amazon-ebs: Adding tag: "source_ami_name": "al2023-ami-minimal-2023.5.20240722.0-kernel-6.1-arm64"
2024-07-28T23:26:18Z:     amazon-ebs: Adding tag: "containerd_version": "*"
2024-07-28T23:26:18Z:     amazon-ebs: Adding tag: "kubernetes": "1.29.6/2024-07-12/bin/linux/arm64"
2024-07-28T23:26:18Z:     amazon-ebs: Adding tag: "ssm_agent_version": ""
2024-07-28T23:26:18Z:     amazon-ebs: Adding tag: "Name": "amazon-eks-al2023-arm64-node-1.29-v20240728"
2024-07-28T23:26:18Z:     amazon-ebs: Adding tag: "created": "1722208781"
2024-07-28T23:26:18Z:     amazon-ebs: Adding tag: "build_region": "us-east-1"
2024-07-28T23:26:18Z:     amazon-ebs: Adding tag: "source_ami_id": "ami-0263e6c9faf5897db"
2024-07-28T23:26:18Z: ==> amazon-ebs: Creating snapshot tags
2024-07-28T23:26:18Z: ==> amazon-ebs: Terminating the source AWS instance...
2024-07-28T23:26:49Z: ==> amazon-ebs: Cleaning up any extra volumes...
2024-07-28T23:26:49Z: ==> amazon-ebs: No volumes to clean up, skipping
2024-07-28T23:26:49Z: ==> amazon-ebs: Deleting temporary security group...
2024-07-28T23:26:49Z: ==> amazon-ebs: Deleting temporary keypair...
2024-07-28T23:26:50Z: ==> amazon-ebs: Running post-processor: manifest
2024-07-28T23:26:50Z: ==> amazon-ebs: Running post-processor: manifest
24-07-28T23:26:50Z: Build 'amazon-ebs' finished after 7 minutes 7 seconds.

==> Wait completed after 7 minutes 7 seconds

==> Builds finished. The artifacts of successful builds are:
--> amazon-ebs: AMIs were created:
us-east-1: ami-0fad281330d83e843

--> amazon-ebs: AMIs were created:
us-east-1: ami-0fad281330d83e843

--> amazon-ebs: AMIs were created:
us-east-1: ami-0fad281330d83e843

make[1]: Leaving directory '/home/ubuntu/environment/custom-amazon-eks-ami-packer'
