#! /bin/bash

echo "Installing AWS Cli"

curl "https://s3.amazonaws.com/aws-cli/awscli-bundle.zip" -o "awscli-bundle.zip"

aws --version  # aws-cli/2.7.9 Python/3.9.11 Windows/10 exe/AMD64 prompt/off

p="/home/joy-buresh_7/.aws/credentials"

#p="C:/Users/USERNAME/.aws/credentials"

#touch ~/.aws/credentials

if [ -e p]
then
        {

        echo "file exits"
        }
else

{

cat $p
echo "
[default]
aws_access_key_id = AKIAQ3NAMZWGLPD5Y4LN
aws_secret_access_key = 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
region = ap-south-1
output = json" > $p

}
fi
aws ec2 run-instances \
        --image-id ami-06489866022e12a14 \
        --instance-type t2.small \
        --subnet-id subnet-0e8281328042b2fa4 \
        --key-name Joykey123 \
        --security-group-ids sg-09bacda5b0f9f1910 \
        --tag-specifications 'ResourceType=instance,Tags=[{Key=Name,Value=JoyAWSCli}]' \
        --region ap-south-1
