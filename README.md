# Udacity AWS Cloud Devops Nano Degree

Currently only project in this repositry is project 2 - Deploy a high-availability web app using CloudFormation

It consists of diagram, `.yml` and `.json` files for `networks` and `services` configurations and `bash` files for running `cloudformation` commands for these two configurations to be created/updated/deleted on AWS.

You can run these configurations with `services-stack-run.sh` and `network-stack-run.sh` scripts. Stack names are hardcoded inside of scripts.
Only argument which could be provided to script is which action/mode you want to run `aws cloudformation` command.
Scripts should be ran in format: `bash <script-to-run>̣ <create/update/delete>`

For example:
 - `bash network-stack-run.sh create`
 - `bash network-stack-run.sh update`
 - `bash network-stack-run.sh delete`
 - `bash services-stack-run.sh create`
 - `bash services-stack-run.sh update`
 - `bash services-stack-run.sh delete`
