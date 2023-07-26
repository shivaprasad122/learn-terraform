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
  default = {
    "Dveops",
    "AWS",
    "Pyhton"
  }
}

variable "course_details" {
  default= {
    Devops = {
      name= "Dveops"
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
  value=var.courses
}

output "courses" {
  value=var.courses
}

output "course_details" {
  value=var.course_details
}