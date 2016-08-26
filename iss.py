#!/usr/bin/python

import urllib2
import json

req = urllib2.Request("https://api.wheretheiss.at/v1/satellites/25544")
response = urllib2.urlopen(req)
obj = json.loads(response.read())

print obj['visibility']
