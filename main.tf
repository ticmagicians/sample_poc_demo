provider "aws" {
	shared_credentials_file = "/home/.aws/credentials"
	region = "ca-central-1"

} 

resource "aws_instance" "ec2_tf_sample_saurabh" {
	ami = "ami-08a9b721ecc5b0a53"
	instance_type = "t2.micro"
}

resource "aws_eip" "eip_tf_sample_saurabh" {
	instance = "${aws_instance.ec2_tf_sample_saurabh.id}"
}

resource "aws_s3_bucket" "s3_bucket_sample_saurabh" {
	bucket = "sample-bucket-1-for-test"
	acl = "private"
}

resource "aws_instance" "ec2_tf_sample2_saurabh" {
	ami = "ami-08a9b721ecc5b0a53"
	instance_type = "t2.micro"
}