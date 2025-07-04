output "role_name" {
  value = aws_iam_instance_profile.ec2_profile.name
}
output "node_role_arn" {
  value = aws_iam_role.eks_node_role.arn
}
