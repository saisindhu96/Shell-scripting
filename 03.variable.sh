#!/bin/bash

## Declear a variable
COURSE=DevOps

#Access a variable

echo Course Name = $COURSE

#DATE=2021-06-04
DATE=$(date +%F)
echo Good Evening, Today date is $DATE

NO_OF_USERS=$(who | wc -l)
echo number of users logged in system = $NO_OF_USERS