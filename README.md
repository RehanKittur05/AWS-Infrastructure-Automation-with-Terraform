I've successfully deployed AWS resources like public subnets, security groups, an internet gateway, and route tables using Terraform.
Furthermore, I've configured SSH-key based authentication to access an AWS EC2 instance.
Two EC2 instances are created with one Load Balancer to understand the concept of load balancing by ALB.
The First instance is deployed on one subnet in one zone of a region (us-east-1a) and consists of HTML file that displays list of Top 10 Best Movies of All Time.
The Second instance is deployed on another subnet in different zone of a region (us-east-1b) and consists of HTML file that displays list of Top 10 Best Web Series of All Time.
The entire construction of this Infrastructure is handled effiecntly with Terraform.
