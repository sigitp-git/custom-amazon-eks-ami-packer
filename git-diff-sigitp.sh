Admin:~/environment/custom-amazon-eks-ami-packer (main) $ git diff
diff --git a/templates/al2023/template.json b/templates/al2023/template.json
index 62f7208..db846e0 100644
--- a/templates/al2023/template.json
+++ b/templates/al2023/template.json
@@ -119,7 +119,8 @@
         "mkdir -p {{user `working_dir`}}/rootfs",
         "mkdir -p {{user `working_dir`}}/shared",
         "mkdir -p {{user `working_dir`}}/log-collector-script",
-        "mkdir -p {{user `working_dir`}}/nodeadm"
+        "mkdir -p {{user `working_dir`}}/nodeadm",
+       "mkdir -p {{user `working_dir`}}/custom-ami-scripts"
       ]
     },
     {
@@ -149,6 +150,25 @@
       "source": "{{template_dir}}/../../nodeadm/",
       "destination": "{{user `working_dir`}}/nodeadm"
     },
+    {
+      "type": "file",
+      "source": "{{template_dir}}/../../custom-ami-scripts/",
+      "destination": "{{user `working_dir`}}/custom-ami-scripts/"
+    },
+    {
+      "type": "shell",
+      "inline": [
+       "sudo mkdir -p /etc/custom-ami-scripts/",
+       "sudo cp -v {{user `working_dir`}}/custom-ami-scripts/ami-build-script.sh /etc/custom-ami-scripts/",
+        "sudo cp -v {{user `working_dir`}}/custom-ami-scripts/runtime-userdata-script.sh /etc/custom-ami-scripts/",
+       "sudo cp -v {{user `working_dir`}}/custom-ami-scripts/dpdk-devbind.py /etc/custom-ami-scripts/"
+      ]
+    },
+    {
+      "type": "shell",
+      "remote_folder": "{{ user `remote_folder`}}",
+      "script": "{{template_dir}}/../../custom-ami-scripts/ami-build-script.sh"
+    },
     {
       "type": "shell",
       "inline": [
diff --git a/templates/al2023/variables-default.json b/templates/al2023/variables-default.json
index 581ec07..498703d 100644
--- a/templates/al2023/variables-default.json
+++ b/templates/al2023/variables-default.json
@@ -5,7 +5,7 @@
     "ami_users": "",
     "associate_public_ip_address": "",
     "aws_access_key_id": "{{env `AWS_ACCESS_KEY_ID`}}",
-    "aws_region": "us-west-2",
+    "aws_region": "us-east-1",
     "aws_secret_access_key": "{{env `AWS_SECRET_ACCESS_KEY`}}",
     "aws_session_token": "{{env `AWS_SESSION_TOKEN`}}",
     "binary_bucket_name": "amazon-eks",
Admin:~/environment/custom-amazon-eks-ami-packer (main) $ 
