terraform {

  cloud {
    organization = "tfc-demo-np"
    hostname     = "app.terraform.io"
    token        = "cxo3MxJ1k0n7dA.atlasv1.ILshRz44PouoMWneKm8fMLFDiuQN5UuzhXbAkaMhr0GTS4YHOvb9tHxa3ccAeEuZyZ8"
    workspaces {
      name = "tfc-workspace-np"
    }
  }
}

// Configure the provider
provider "hcp" {}
// Use the cloud provider GCP to provision resources that will be connected to HCP

// Use the cloud provider AWS to provision resources that will be connected to HCP


provider "google" {
}

provider "google-beta" {
}
# Declaring the resource block aws_instance
resource "aws_instance" "my-machine" {
  # Declaring the argument ami
  ami = var.ami
  # Declaring the argument instance_type
  instance_type = var.instance_type
  # Tagging the instances
  tags = {
    Name = "ec2-instance-${terraform.workspace}"
  }
}
