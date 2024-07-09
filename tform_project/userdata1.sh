#!/bin/bash
apt update
apt install -y apache2

# Get the instance ID using the instance metadata
INSTANCE_ID=$(curl -s http://169.254.169.254/latest/meta-data/instance-id)

# Install the AWS CLI
apt install -y awscli

# Download the images from S3 bucket
#aws s3 cp s3://myterraformprojectbucket2023/project.webp /var/www/html/project.png --acl public-read

# Create a simple HTML file with the portfolio content and display the images
cat <<EOF > /var/www/html/index.html
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Top 10 Best Web Series of All Time</title>
    <style>
        h1 {
            color: red;
        }
    </style>
</head>
<body>
    <h1>Top 10 Best Web Series of All Time</h1>
    <ol>
        <li>Breaking Bad</li>
        <li>Chernobyl</li>
        <li>Lost In Space</li>
        <li>Kota Factory</li>
        <li>Aspirants</li>
        <li>Pitchers</li>
        <li>Money Heist</li>
        <li>Better Call Saul</li>
        <li>House of Cards</li>
        <li>Narcos</li>
    </ol>
</body>
</html>
EOF

# Start Apache and enable it on boot
systemctl start apache2
systemctl enable apache2


