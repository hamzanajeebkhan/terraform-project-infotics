output "rds_id" {
  description = "ID of the RDS"
  value       = aws_db_instance.default.id
}