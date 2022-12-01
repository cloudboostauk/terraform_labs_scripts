#Creating the Cloudwatch metric alarm for scaling down
resource "aws_cloudwatch_metric_alarm" "web_cpu_alarm_down" {
  alarm_name          = "web_cpu_alarm_down"
  comparison_operator = "LessThanOrEqualToThreshold"
  evaluation_periods  = "2"
  metric_name         = "CPUUtilization"
  namespace           = "AWS/EC2"
  period              = "120"
  statistic           = "Average"
  threshold           = "30"

  dimensions = {
    AutoScalingGroupName = "${aws_autoscaling_group.web.name}"
  }

  alarm_description = "This metric monitor EC2 instance CPU utilization"
  alarm_actions     = ["${aws_autoscaling_policy.web_policy_down.arn}"]
}