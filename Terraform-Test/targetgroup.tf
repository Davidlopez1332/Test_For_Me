resource "aws_lb_target_group" "this" {
  name     = "target-group"
  port     = 80
  vpc_id   =data.aws_vpc.default.id
  protocol = "HTTP"

  health_check {
    path    = "/"
    protocol ="HTTP"
  }
}