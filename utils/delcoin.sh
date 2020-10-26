#!/bin/bash
################################################################################
# Author: Dirty Harry
# Web: https://easy-client-co.ltd 
#
# Program:
#   Remove all coin in Yiimp
# 
# 
################################################################################

for line in $(cat coin.list); do
yiimp coin "$line" delete;
done
