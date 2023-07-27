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

variable "classes" {
  default = {
    devops = {
      name = "devops"
      topics = ["jenkins","docker"]
    }
    aws = {
      name = "aws"

    }

  }
}

output "devops_topics" {
  value=var.classes["devops"] ["topics"]
}

output "aws_topics" {
  value = lookup(lookup(var.classes, "aws", null), "topics",null)
}

output "fruit_cont" {
  value=element(var.fruits,4)
}
variable "a" {
   default=100
}
output "a" {
  value=var.a>10 ? "surplus quantity" : "Less quantity"
}