#!/usr/bin/env python

import sys, urllib2, json

# request content from the URL
contents = urllib2.urlopen("http://localhost:3000/?query=Marina%20Bay%20Sands")

# convert json string into dictionaty format
data = json.load(contents)

# print request status
print("Request status: %s" % data["status"])

# if status is OK then exit with 0
if data["status"] == "OK":
    sys.exit()
# else exit with 1
else:
    sys.exit("Validation result: FAIL")
