#!/bin/bash

# if any text/password/anything need to be entered in confidential mode then we use this

echo "Please enter username:"

read -s USERNAME

echo "Please enter your password:"

read -s PASSWORD

echo  "Username is $USERNAME and Password is  $PASSWORD"