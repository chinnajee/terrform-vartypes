provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "ec2_instance" {
  count         = var.number_of_instances
  ami           = "ami-020cba7c55df1f615"
  instance_type = var.instance_type
  ebs_optimized = var.ebs_optimized
  tenancy       = var.instance_tenancy[0]
  
  key_name = var.key_pair_name

  iam_instance_profile = var.aws_iam_instance_profile

  root_block_device {
    volume_type           = var.root_block_device.volume_type
    volume_size           = var.root_block_device.volume_size
    delete_on_termination = var.root_block_device.delete_on_termination
  }

  metadata_options {
    http_endpoint                = var.metadata_options.http_endpoint
    http_tokens                  = var.metadata_options.http_tokens
    http_put_response_hop_limit  = var.metadata_options.http_put_response_hop_limit
  }

  vpc_security_group_ids = tolist(var.security_group_ids)

  tags = {
    Name        = "my-instance-${count.index + 1}"
    LaunchDay   = var.launchDate[0]
    LaunchMonth = var.launchDate[1]
  }
}

output "sg_ids" {
  value = tolist(var.security_group_ids)
}
