# aws
This directory contains code to provision aws infra and services using terraform

### Pre-requisites
- Install latest terraform version Ex. v1.3.x
- Export following environment variables with actual values
  - export AWS_ACCESS_KEY_ID=""
  - export AWS_SECRET_ACCESS_KEY=""

### Execution
- **Provision:**</br>
  Execute following terraform commands to provision infra & AWS services.</br></br>
*terraform init*</br>
*terraform plan*</br>
*terraform apply --auto-approve*</br></br>
- **De-provision:**</br>
  To de-provision/destroy provisioned resources using terraform execute follwing command.</br></br>
*terraform destroy --auto-approve*</br>