from fileinput import filename
import boto3

s3 = boto3.client('s3')

s3.create_bucket(Bucket='eng114-lee-bucket', CreateBucketConfiguration={'LocationConstraint': 'eu-west-1'})

s3.upload_file(
    Filename="data/downloaded_from_s3.csv",
    Bucket="sample-bucket-1801",
    Key="new_file.csv"
)

s3.download_file(
    filename="data/downloaded_from_s3.csv",
)