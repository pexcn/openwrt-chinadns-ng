#!/bin/bash -e
set -o pipefail

wget https://raw.githubusercontent.com/pexcn/daily/gh-pages/chnroute/chnroute.txt -nv -O files/chnroute.txt
wget https://raw.githubusercontent.com/pexcn/daily/gh-pages/chnroute/chnroute-v6.txt -nv -O files/chnroute6.txt
wget https://raw.githubusercontent.com/pexcn/daily/gh-pages/gfwlist/gfwlist.txt -nv -O files/gfwlist.txt
wget https://raw.githubusercontent.com/pexcn/daily/gh-pages/chinalist/chinalist.txt -nv -O files/chinalist.txt
