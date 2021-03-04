
resource "aws_key_pair" "test_key_pair" {
  key_name   = var.name_key
  public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAABJQAAAQEAjeFKW8fkGCzW0JJkLHqfBrMOy1HNFQ+tOOcQ5inhqaj3M1FPIJ83OoyHFh7CED0xIROdA9hV7Bd48CB9NOVI1BFgvXQeHcGXBV7ntpQEQGpCGgLEXC1t1UYCnMd3A9fdA5zRDp1ZeCSxqfXo7LcVTbESsp2ZdlY7oUbCVZOzl4QMSD5QIw68PIO2eUE04GGliwjz3Bt2ArZ2H/lP0vVCIzxxDcahONwma5SyoGYQh4vkt6DD1MvOZxLIa4aS3/jzdTxhdxwkB0UBBw1rsfLbVDH8UOCQq36C3UG0JU2zWw3e3XVJKUc7GE8FfMRw8B7ptdhhZSpt3jVuKzHieKO+mw== rsa-key-20210104"
}