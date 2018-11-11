# -*- coding: utf-8-*-
import datetime
import re
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
    regex = "(" + "|".join(WORDS) + ")"
    return bool(re.search(regex, text, re.IGNORECASE))