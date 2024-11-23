#!/usr/bin/bash

rsync -avz -e ssh /repository// username@remote_host:/
