#!/bin/bash

# ALL THE PUNS

# open a "VM"
docker run -it -v $PWD:/hugo -w /hugo -it golang:1.11 bash
# where is the GOPATH? we aint in it
echo $GOPATH
# we don't need git y'all
rm -rf $(which git)
# yea, it's gone I swear
git
# we're gonna talk to our top secret Athens server
export GOPROXY=https://microsoftgoproxy.azurewebsites.net
# put a jacket on it, because this is a cold cache
ls -al $GOPATH/pkg/mod
# get your tools cuz we're buildin'
go build
# now the cache is all cozy
ls -al $GOPATH/pkg/mod
# IT WORKED!
./hugo
