# dev.tfvars
# Configuration for development environment
# terraform.tfvars file for development environment
# use this file to override default variable values for dev environment
# specify instance names and disk sizes for dev instances
# terraform apply -var-file="dev.tfvars"

instance_names = [ "dev-instances" ]
disk_size = {
  "dev-instances" = 20
}