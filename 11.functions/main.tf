variable "class" {
  default = "devops"
}

output "class" {
  value =upper(var.class)
}

variable "fruits" {
  default = ["apple","mango","banana"]
}

output "fruit_count" {
  value=length(var.fruits)
}