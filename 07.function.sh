#!/bin/bash

## Declare a function

SAMPLE() {
  echo Welcome to SAMPLE Function
  echo value of a = $a
  b=20
  echo first argument = $1
  }

## Access your function
a=10
SAMPLE xyz
echo value of b = $b