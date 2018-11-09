# -*- coding: utf-8-*-
import speedtest
import re

WORDS = ["SPEEDTEST"]


def handle():
	try:
		st = speedtest.Speedtest()
		st.get_best_server()
		response = "Download: " + st.download()/1000000 + ",\n Upload: " + st.upload()/1000000
		#return [st.download()/1000000, st.upload()/1000000]
	except speedtest.ConfigRetrievalError:
		response = "False"
		#return False
	print(response)

def isValid(text):
    return bool(re.search(r'\bspeedtest\b', text, re.IGNORECASE))
