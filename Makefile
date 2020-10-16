# Install Terraform v0.13.X (https://www.terraform.io/downloads.html)
# Export AWS AK / SK for using Terraform
# export AWS_ACCESS_KEY_ID=AKIA2G2XJY5PWFSNRXVS
# export AWS_SECRET_ACCESS_KEY=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
# Changez le group_id (ici test) par votre group_id
infra_test:
	terraform validate .
# USE GITLAB ARTEFACT for deploy and destroy (terraform.tfstate)
infra_deploy:
	terraform init -var="group_id=d3" .
	terraform apply -var="group_id=d3" -auto-approve .
# Le job destroy doit-être mis en manuel
infra_destroy:
	terraform init .
        terraform destroy -var="group_id=d3" -auto-approve .
