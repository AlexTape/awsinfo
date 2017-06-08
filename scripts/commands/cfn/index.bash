#!/bin/bash

set -euo pipefail

awscli cloudformation describe-stacks --output table --query "sort_by(Stacks,&StackName)[$(filter StackName $@)].{\"1.Name\":StackName,\"2.Status\":StackStatus,\"3.CreationTime\":CreationTime,\"4.LastUpdated\":LastUpdatedTime}"