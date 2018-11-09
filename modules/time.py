# -*- coding: utf-8-*-
import datetime
import re
#from client.app_utils import getTimezone
from semantic.dates import DateService
from pytz import timezone

WORDS = ["TIME"]


def handle():
#    """
#        Reports the current time based on the user's timezone.
#        Arguments:
#        text -- user-input, typically transcribed speech
#        mic -- used to interact with the user (for both input and output)
#        profile -- contains information related to the user (e.g., phone
#                   number)
#    """

    #tz = getTimezone(profile)

    now = datetime.datetime.now(tz=timezone("GB"))
    service = DateService()
    response = service.convertTime(now)
    print(response)
    #mic.say("It is %s right now." % response)


def isValid(text):
#    """
#        Returns True if input is related to the time.
#        Arguments:
#        text -- user-input, typically transcribed speech
#    """
#    print(re.search(r'\btime\b', text, re.IGNORECASE)))
    return bool(re.search(r'\btime\b', text, re.IGNORECASE))
