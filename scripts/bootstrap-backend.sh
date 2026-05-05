#!/usr/bin/env bash
set -euo pipefail

cd "$(dirname "$0")/.."

terraform init -backend=false
terraform apply -auto-approve -target=aws_s3_bucket.terraform_state
terraform init -migrate-state
