# Set your variables
vpcName="platform-sre-assignment"
cidrBlock="10.0.0.0/16"    
subnetName="Subnet-1"
subnetCidrBlock="10.0.0.0/24"  

# Create a VPC
vpcId=$(aws ec2 create-vpc \
    --cidr-block $cidrBlock \
    --query 'Vpc.VpcId' \
    --output text)

# Create a subnet
subnetId=$(aws ec2 create-subnet \
    --vpc-id $vpcId \
    --cidr-block $subnetCidrBlock \
    --availability-zone eu-north-1a  
    --query 'Subnet.SubnetId' \
    --output yml)

echo "VPC ID: $vpcId, Subnet ID: $subnetId"