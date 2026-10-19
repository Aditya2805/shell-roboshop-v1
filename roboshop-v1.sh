#!/bin/bash

ami_id="ami-0055977a6e828a4f4"
instance_type="t3.micro"
domain_name="devopsadipractice.online"
hosted_zone_id="Z082193024CQOK5S2G9S6"

for instance in $@
do
    echo "creating instance: $instance"
done