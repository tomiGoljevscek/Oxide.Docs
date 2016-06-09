#!/bin/bash

bundle install

LINK="http://localhost:4567"
if [[ $OSTYPE == "cygwin" ]] || [[ $OSTYPE == "msys" ]]; then
    start $LINK
elif [[ $OSTYPE == "darwin"* ]]; then
    open $LINK
elif [[ "$OSTYPE" == "linux-gnu" ]] || [[ $OSTYPE == "freebsd"* ]]; then
    xdg-open $LINK
fi

bundle exec middleman server
