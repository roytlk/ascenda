#!/usr/bin/env python

import sys, urllib2, json

contents = urllib2.urlopen("http://localhost:3000/?query=Marina%20Bay%20Sands")

data = json.load(contents)

print("Request status: %s" % data["status"])

if data["status"] == "OK":
    sys.exit()
else:
    sys.exit("Validation result: FAIL")
