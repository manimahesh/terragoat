export TERRAGOAT_STATE_BUCKET="mmani-devsecops-bucket"
export TF_VAR_company_name=mmani
export TF_VAR_environment=mmanidevsecops
export TF_VAR_region="us-west-2"

terraform init -backend-config="bucket=$TERRAGOAT_STATE_BUCKET" -backend-config="key=$TF_VAR_company_name-$TF_VAR_environment.tfstate" -backend-config="region=$TF_VAR_region"

terraform apply
