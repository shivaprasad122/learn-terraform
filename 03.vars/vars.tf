variable "sample" {
  default=100
}

variable "sample1" {
  default="Hello World"
}

output "sample" {
  value= vars.sample
}

output "sample1" {
  value=vars.sample1
}

output "sample-ext" {
  value= "value of sample- $(var.sample)"
}
