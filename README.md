# ganymede
Test project for Alan.

## AMI
* us-west-2

`RHEL-7.2_HVM-20161025-x86_64-1-Hourly2-GP2`

`ami-5dd3743d`

## Packages
* nodejs
  - express
  - foreverjs
* chef-client

## Usage
### Packer
Export AWS_ACCESS_KEY and AWS_SECRET_KEY.

`export AWS_ACCESS_KEY=foo`

`export AWS_SECRET_KEY=bar`

-or-

Add keys to aws_keys.sh

`source aws_keys.sh`

## Systems
* web service
* chef-server?
