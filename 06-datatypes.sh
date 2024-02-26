#!/bin/bash

NUM1=$1
NUM2=$2

SUM=$(($NUM1+$NUM2))

echo "total = $SUM"

echo "num of args passed = $#"

echo "all args passed = $@"

echo "script name = $0"
