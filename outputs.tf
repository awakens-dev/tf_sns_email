data "aws_sns_topic" "output" {
  name = element(reverse(split(":", aws_cloudformation_stack.sns-topic.outputs["ARN"])), 0)
}

output "sns_topic" {
  value       = data.aws_sns_topic.output
  description = "Email SNS topic ARN"
}
