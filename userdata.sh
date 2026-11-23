#!/bin/bash

yum update -y
yum install -y httpd

systemctl enable httpd
systemctl start httpd

cat > /var/www/html/index.html << EOF
<html>
<head><title>Terraform Project</title></head>
<body>
<h1>Hello from AWS EC2!</h1>
<h2>Web Server created using Terraform</h2>
</body>
</html>
EOF
