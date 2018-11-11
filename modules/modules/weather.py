# -*- coding: utf-8-*-
import requests
import re

WORDS = ["WEATHER"]
Type = "Server"

PRIORITY = 1

def handle():
    url = 'http://api.openweathermap.org/data/2.5/weather?q={},{}&APPID={}'.format("Kirkby", "UK", "f0ecf01eae9884d6fa621352cb187b36")
    j = requests.get(url).json()
    #return j
    print(j["weather"][0]["main"])


def isValid(text):
    return bool(re.search(r'\bweather\b', text, re.IGNORECASE))
