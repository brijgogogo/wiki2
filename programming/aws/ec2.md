# ec2 - elastic cloud compute
it is like a virtual computer used primary for its processing power.
Instance - cpu, ram, hard disk. It is for things that need compute power (processing activity).
Multiple EC2 instances can be brought up to server need/users.
Common use: web hosting

EC2 Instance purchasing options
* On-Demand
expensive, flexible
* Reserved
purchased for a set time period (1 or 3 years)
* Spot
you bid for an instance type


## Amaozon Machine Image - AMI
Preconfigured package required to launch an EC2 instance. Included an operating system, software package and other required settings.

## instance type
The CPU (compute power) of your instance. Also includes other hardware.
instance type components:
* vCPUs : number of virtual CPUs the instance type uses
* family: categorizing instance type for what they are optimized for
* Type: subcategory of family type
* Memory
* Instance Storage
* EBS-Optimized available
* Network performance

## Elastic Block Store
EBS is storage volume for an EC2 instance.

IOPS: input/Output Operations per second

Root EBS
Additional EBS (can be detached and attached to another EC2 instance)


## snapshot
"image" of an EBS volume that can be stored as a backup of the volume OR used to create a duplicate.

## security groups
allow/deny traffic at instance level

