# Multi-Tier Highly Available Web Application

## Overview
A highly available, multi-AZ web application architecture deployed on AWS, designed for fault tolerance and scalability using load balancing and auto-healing infrastructure.

## Architecture
- Public and private subnets separated across multiple Availability Zones for fault isolation
- Application Load Balancer (ALB) distributing traffic across EC2 instances in an Auto Scaling Group
- RDS configured with automated snapshots; failover to standby replica tested manually
- Route 53 for DNS routing
- CloudWatch dashboards and alarms configured for CPU, memory, and latency metrics

## AWS Services Used
EC2, VPC, Application Load Balancer (ALB), Auto Scaling, RDS, Route 53, CloudWatch

## Key Learnings
- Designing subnet architecture for high availability across AZs
- Configuring auto scaling policies based on demand
- Setting up monitoring and alerting for proactive issue detection
- Testing database failover scenarios for disaster recovery readiness

## Status
Personal / practice project built to strengthen hands-on AWS architecture skills.
