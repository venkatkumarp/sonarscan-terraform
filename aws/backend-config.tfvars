bucket         = "mydata-venkey"  # Use the same bucket name from main.tf
key            = "terraform/state.tfstate"  # Path within the bucket to store the state file
region         = "us-east-1"  # The region where the S3 bucket is located
encrypt        = true  # Encrypt the state file in S3
