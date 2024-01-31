resource "aws_lightsail_instance" "serve1" {
name = "dev-server"
blueprblueprint_id = "ubuntu_18_04"
bunbundle_id = "medium_1_0"
avavailability_zone = "us-east-1a"  
}
user_data = <<-EOF
              #!/bin/bash
              sudo apt-get update
              sudo apt-get install -y apache2
              sudo systemctl start apache2
              sudo systemctl enable apache2
              echo '<h1>This is deployed by Marie </h1>' | sudo tee /var/www/html/index.html
              EOF
}