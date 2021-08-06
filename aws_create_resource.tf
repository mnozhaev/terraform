provider "aws" {
      access_key = "key"
      secret_key = "key"
      region     = "eu_central-1"
}

resource "aws_instance" "my_ubuntu" {
  count = 3
  ami = ""
  instance_type = ""
  tags = "my_iso"
  Owner = "Mnozhaev"
  project = "testing terraform"
}
