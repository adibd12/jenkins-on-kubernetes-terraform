#!/usr/bin/env sh
set -e
cat <<EOF
    ### Install Dependencys
EOF
sleep 5
source dependency.sh


             echo      "----- ............................. -----"
             echo           "---  LOAD-TERRAFORM-FILES  ---"
             echo      "----- ............................. -----"

sleep 5         
terraform init && terraform plan
terraform apply -auto-approve
sleep 10 && kubectl get pods -A && sleep 5
