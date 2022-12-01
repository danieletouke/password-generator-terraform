## Local terraform exercise

You need to generate some random passwords for a list of people, thankfully you have a terraform module that can do this for you!

However, this repo is full of mistakes and the `terraform apply` keeps failing

See if you can correct all the errors!

The end result should be:
1. A file in the `/passwords` directory for each person, that contains their email and password
2. The password should be at least 12 characters long, including both upper and lower case and special characters
3. `terraform format` should report no formatting errors
4. No grammatical errors
5. No orphaned or unneeded variables
6. `terraform plan` and `terraform apply` should run without errors

What you'll need:

- Terraform installed, latest version is fine
- Text editor of your choice
- Git

NOTE: this is not how SmartRent manages passwords :) 
