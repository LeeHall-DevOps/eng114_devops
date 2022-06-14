import boto3

s3 = boto3.client('s3')

s3.create_bucket(Bucket='eng114-lee-bucket', CreateBucketConfiguration={'LocationConstraint': 'eu-west-1'})