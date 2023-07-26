variable "sample" {
  default=100
}

variable "sample1" {
  default="Hello World"
}

output "sample" {
  value= var.sample
}

output "sample1" {
  value=var.sample1
}

output "sample-ext" {
  value= "value of sample- $(var.sample)"
}

variable "course" {
  default= "Devops training"
}

variable "courses" {
  default = [
    "Devops",
    "AWS",
    "Python"
    ]
  }


variable "course_details" {
  default= {
    Devops = {
      name= "Devops"
      timing= "10am"
      duration=50
    }
    AWS= {
      name = "AWS"
      timing= "10am"
      duration= 50
    }
  }
}

output "course" {
  value=var.course
}

output "courses" {
  value=var.courses[2]
}

output "course_details" {
  value = var.course_details["Devops"]
}
variable "env"{ }
output "env" {
  value=var.env
}