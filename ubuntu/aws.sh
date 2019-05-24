#!/usr/bin/env bash

 cat rootkey.csv 
 sudo apt install awscli
 cat rootkey.csv 
 export AWS_ACCESS_KEY_ID=A*****A
 export AWS_SECRET_ACCESS_KEY=7***A
 aws configure
 git config --global credential.helper '!aws codecommit credential-helper $@'
 git config --global credential.UseHttpPath true
 git status


