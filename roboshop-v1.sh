#!/bin/bash

ami_id="0055977a6e828a4f4"
instance_type="t3.micro"
domain_name="devopsadipractice.online"
hosted_zone_id="Z082193024CQOK5S2G9S6"

for instance in $@
do 

instance_id=$(
aws ec2 run-instances \
    --image-id $ami-id \
    --instance-type $instance_id \
    --security-groups "roboshop-common" "roboshop-$instance" \
	--tag-specifications 'ResourceType=instance,Tags=[{Key=Name,Value=roboshop-$instance}]' \
	--query 'Instances[0].InstanceId' \
    --output text
)

echo "$instance ID: $instance_id"

done