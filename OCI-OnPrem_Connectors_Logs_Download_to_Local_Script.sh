#!/bin/bash

#oci-private.pem ubuntu@129.153.72.61

echo "Enter Appliance Host(IP): "
read applianceHost

echo "Enter Path of file in Appliance which you want to copy (Note: Please Enter Path after /home/ubuntu/ ): "
read path_to_copy

#echo $applianceHost
#echo $path_to_copy
#echo "scp -oStrictHostKeyChecking=no -i ~/Downloads/aws.pem -oProxyCommand="ssh -oStrictHostKeyChecking=no -i ~/Downloads/aws.pem -W %h:%p ec2-user@$bastionHost" ubuntu@$applianceHost:/home/ubuntu/$path_to_copy ."

scp -oStrictHostKeyChecking=no -i ~/Downloads/oci-private.pem -oProxyCommand="ssh -oStrictHostKeyChecking=no -i ~/Downloads/oci-private.pem  -W %h:%p ubuntu@$applianceHost" ubuntu@$applianceHost:/home/ubuntu/$path_to_copy .