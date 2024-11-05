Project Scenario

A sudden shift to remote work globally has created an opportunity to provide better remote collaboration tooling.
You've identified an opportunity to create a simple yet powerful collaborative whiteboard and you've partnered with a 
friend who has created the first version. Your job is to get it out into the world and make sure it's ready to handle a 
potential surge of users who are desperate for a better solution to this problem.

After some consideration, you've decided on using the following products:

- EKS (AWS )for hosting the application
- AWS products for supportive services (e.g. Load Balancing, DNS, etc.)
- Terraform for creating the infrastructure

Your friend is rapidly iterating on the software and so it was decided that there should be both a **test** and 
a **production** environment (these environments can be identical in implementation). For now, the application deployed 
to both environments will be the same: [WBO Docker Image](https://hub.docker.com/r/lovasoa/wbo) using the 
`v1.17.0` tag.

There are many other teams around the world looking to solve the same problem and so the time to get this up and 
running is limited. It is expected that it should take no longer than **a few hours** get everything up and 
running but you have a week to complete it.

As a stretch goal, you'd also like to ensure that access to the whiteboard application is secured via TLS.


Execution Plan 