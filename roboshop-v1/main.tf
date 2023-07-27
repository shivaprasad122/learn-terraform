module "instances" {
  for_each =var.instances
  source ="./ec2"
  name = "each.key"
}

variable "instances" {
    default = {
      frontend = {}
      mongodb = {}
      catalogue = {}
      mysql   = {}
      user    = {}
      redis   = {}
      rabbitmq = {}
      cart    = {}
      shipping = {}
      payment = {}
      dispatch = {}



  }
}