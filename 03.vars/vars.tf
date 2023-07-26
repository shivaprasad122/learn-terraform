variable "sample" {
  default=100
}

variable "sample1" {
  default="Hello World"
}

output "sample" {
  variable= var.sample
}

output "sample1" {
  variable=var.sample1
}

output "sample-ext" {
  value= "value of sample- $(var.sample)"
}
