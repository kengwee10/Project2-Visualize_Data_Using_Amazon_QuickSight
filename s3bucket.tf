# Creating S3 bucket with default setting
resource "aws_s3_bucket" "data_bucket" {
    bucket = var.bucket_name
}

# # Mutiple files upload code
resource "aws_s3_bucket_object" "upload_data_files" {
  bucket = aws_s3_bucket.data_bucket.id

  for_each = fileset("./Data_Files","*")
  key = each.key
  source = "./Data_Files/${each.key}"

# # Single file upload code
# resource "aws_s3_bucket_object" "upload_data_files" {
# bucket = aws_s3_bucket.data_bucket.id
# key    = "Amazon-Bestseller-Dataset.csv" (The file name you wan to upload)
# source = "./Data_Files/Amazon-Bestseller-Dataset.csv" (The path of the folder & file that you wan to upload)
}
  










# Useless code
# Single file upload
# resource "aws_s3_object" "upload_data_files" {
#     bucket = aws_s3_bucket.data_bucket.id
#     key = "Amazon-Bestseller-Dataset.csv"
#     source = "C:\\Users\\engw\\AWS Mini Project\\Project2-VisualizeData_AmazonQuickSight\\Data_Files"
#     # etag = filemd5("C://Users//kengw//AWS Mini Project//Project2-VisualizeData_AmazonQuickSight//Data_Files//Amazon-Bestseller-Dataset.csv")
# }

# Multi files upload
# resource "aws_s3_object" "upload_multi_data_files" {
#     bucket = aws_s3_bucket.data_bucket.id
#     for_each = fileset("C:\\Users\\kengw\\AWS Mini Project\\Project2-VisualizeData_AmazonQuickSight\\Data_Files",".")
#     key = each.value
#     source = "C:\\Users\\engw\\AWS Mini Project\\Project2-VisualizeData_AmazonQuickSight\\Data_Files"
#     # etag = filemd5("C:\Users\kengw\AWS Mini Project\Project2-VisualizeData_AmazonQuickSight\Data_Files\")
# }


