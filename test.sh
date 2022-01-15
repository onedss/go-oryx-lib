#!/usr/bin/env bash

go test -race -v ./...
ret=$?; if [[ $ret -ne 0 && $ret -ne 1 ]]; then
    echo "Test failed, exit $ret"
    exit $ret
fi

echo "mode: atomic" > coverage.txt

function coverage() {
    go test $1 -race -coverprofile=tmp.txt -covermode=atomic
    ret=$?; if [[ $ret -eq 0 ]]; then
        cat tmp.txt >> coverage.txt
        rm -f tmp.txt
    fi
}

coverage github.com/onedss/go-oryx-lib/aac
coverage github.com/onedss/go-oryx-lib/amf0
coverage github.com/onedss/go-oryx-lib/asprocess
coverage github.com/onedss/go-oryx-lib/avc
coverage github.com/onedss/go-oryx-lib/flv
coverage github.com/onedss/go-oryx-lib/http
coverage github.com/onedss/go-oryx-lib/https
coverage github.com/onedss/go-oryx-lib/json
coverage github.com/onedss/go-oryx-lib/kxps
coverage github.com/onedss/go-oryx-lib/logger
coverage github.com/onedss/go-oryx-lib/options
coverage github.com/onedss/go-oryx-lib/rtmp
