module "ec2" {
  source        = "../ec2module"
  instancecount = 1
  #amiid         = "XXXXXXX"
}