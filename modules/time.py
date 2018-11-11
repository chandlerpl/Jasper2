# -*- coding: utf-8-*-
import datetime
import re
#from client.app_utils import getTimezone
#from semantic.dates import DateService
from pytz import timezone

WORDS = ["TIME"]
Type = "Client"

def handle():
    now = datetime.datetime.now(tz=timezone("GB"))
    response = now
    #service = DateService()
    #response = service.convertTime(now)
    print(response)
    #mic.say("It is %s right now." % response)


def isValid(text):
    return bool(re.search(r'\btime\b', text, re.IGNORECASE))
