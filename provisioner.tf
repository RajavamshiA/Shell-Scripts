# Creating AWS EC2 Instance 
resource "aws_instance" "this" {
  ami                    = "ami-09c813fb71547fc4f"          # Amazon Machine Image (AMI) ID
  instance_type          = "t3.micro"                       # EC2 instance type
  vpc_security_group_ids = [aws_security_group.allow_tls.id] # Security Group for traffic rules
  
  tags = {
    Name    = "terraform-demo"
    Purpose = "terraform-practice"
  }
  # Local Provisioner: Runs on the local machine
  provisioner "local-exec" {
    command = "echo ${self.private_ip} > inventory" # Writes the private IP of the instance into a local file 'inventory'
  }
  # Connection Block: SSH access details for remote provisioners
  connection {
    type     = "ssh"
    user     = "ec2-user"
    password = "DevOps321"
    host     = self.public_ip
  }
  # Remote Provisioner: Runs commands on the EC2 instance
  provisioner "remote-exec" {
    inline = [
      "sudo dnf install nginx -y",  # Install nginx
      "sudo systemctl start nginx", # Start nginx service
    ]
  }
  # Remote Provisioner (Destroy): Runs on instance termination
  provisioner "remote-exec" {
    when = destroy
    inline = [
      "sudo systemctl stop nginx",  # Stop nginx before termination
    ]
  }
}
