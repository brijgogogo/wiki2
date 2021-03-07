# vpc
Virtual Private Cloud
A private sub-section of AWS that you control, in which you can place AWS resources (such as EC2 instances and databases)


## internet gateways (IGW)
A combination of hardware and software that provides your private network with a route to the world outside (meaning the Internet) of the VPC.

## route tables
A route table contains a set of rules, called routes, that are used to determine where network traffic is directed.

## network access control lists
Optional layer of security for your VPC that acts as a firewall for controlling traffic in and out of one or more subnets.
Has inbound and outbound rules.
Rules are evaluated based on "rule #" from lowest to highest.
* (star) is a catch all rule.
0.0.0.0/0 source means any source
A subnet can only be associated with one NACL at a time.


## subnet
A subnet, shorthand for subnetwork, as a sub section of a network.
Generally, a subnet includes all the computers in a specific location.
VPC spans all of the Availability Zones in the region. After creating a VPC, you can add one or more subnets in each Availability Zone. Each subnet mus reside entirely within one Availability Zone and cannot span zones.

Public subnet have a route to internet (via IGW).
Private subnet do not have a route to the internet.

