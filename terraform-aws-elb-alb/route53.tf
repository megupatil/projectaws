resource "aws_route53_zone" "aws_app" {
  name = "awsapp.in"

  tags = {
    Environment = "dev"
  }
}

resource "aws_route53_record" "www" {
  zone_id = aws_route53_zone.aws_app.zone_id
  name    = "www.awsapp.in"
  type    = "A"

  alias {
     name                   = aws_lb.elb_example.dns_name
     zone_id                = aws_lb.elb_example.zone_id
     evaluate_target_health = true
   }

}

output "name_server"{
  value=aws_route53_zone.aws_app.name_servers
}
