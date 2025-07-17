terraform init

terraform plan

terraform apply

terraform destroy
==============================

Optional or not required if the profile already exists:
----------------------------------------------------

aws iam simulate-principal-policy   --policy-source-arn arn:aws:iam::736297571963:user/terraform   --action-names iam:ListRolePolicies

aws iam simulate-principal-policy   --policy-source-arn arn:aws:iam::736297571963:user/terraform   --action-names iam:createrole

aws iam simulate-principal-policy   --policy-source-arn arn:aws:iam::736297571963:user/terraform   --action-names iam:Getrole

aws iam simulate-principal-policy   --policy-source-arn arn:aws:iam::736297571963:user/terraform   --action-names iam:ListAttachedRolePolicies

aws iam simulate-principal-policy   --policy-source-arn arn:aws:iam::736297571963:user/terraform   --action-names iam:ListInstanceProfilesForRole

==========================================

terraform init -reconfigure

terraform apply

===========================================

aws ec2 describe-key-pairs --region us-east-1


aws iam simulate-principal-policy   --policy-source-arn arn:aws:iam::736297571963:user/terraform   --action-names iam:ListRolePolicies

aws iam simulate-principal-policy   --policy-source-arn arn:aws:iam::736297571963:user/terraform   --action-names iam:createrole
aws iam simulate-principal-policy   --policy-source-arn arn:aws:iam::736297571963:user/terraform   --action-names iam:Getrole

aws iam simulate-principal-policy   --policy-source-arn arn:aws:iam::736297571963:user/terraform   --action-names iam:ListAttachedRolePolicies

aws iam simulate-principal-policy   --policy-source-arn arn:aws:iam::736297571963:user/terraform   --action-names iam:ListInstanceProfilesForRole


terraform init -reconfigure

terraform apply
