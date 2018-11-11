# -*- coding: utf-8-*-
import os
import re

WORDS = ["WEBSITE", "WEBCHECKER"]
Type = "Server"

def handle():
    rawPingFile = os.popen('ping -c 1 %s' % "cpope.uk")
    rawPingData = rawPingFile.readlines()
    rawPingFile.close()

    if len(rawPingData) < 2:
        response = "False"
        #return False
        latency = 0
    else:
        index = rawPingData[1].find('time=')
        if index == -1:
            response = "False"
        else:
            latency = rawPingData[1][index + 5:]
            latency = latency[:latency.find(' ')]
            response = float(latency)
            #return float(latency)

    print(response)


def isValid(text):
    return bool(re.search(r'\b(website|checker)\b', text, re.IGNORECASE))