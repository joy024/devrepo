#! /bin/bash


aws ec2 run-instances \
        --image-id ami-06489866022e12a14 \
        --instance-type t2.small \
        --subnet-id subnet-0e8281328042b2fa4 \
        --key-name Joykey123 \
        --security-group-ids sg-09bacda5b0f9f1910 \
        --tag-specifications 'ResourceType=instance,Tags=[{Key=Name,Value=JoyAWSCli}]' \
        --region ap-south-1
