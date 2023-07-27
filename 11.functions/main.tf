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
    AWS= {
      name ="aws"
    }

  }
}

output "devops_topics" {
  value=var.classes["devops"] ["topics"]
}

output "aws_topics" {
  value=lookup(lookup(var.classes,"aws",null), "topics",null)
}