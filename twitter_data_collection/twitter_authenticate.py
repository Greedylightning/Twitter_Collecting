#!/usr/bin/env python3
# encoding=utf-8
# Description: Twitter authenticate and login
# Library: tweepy 3.5.0, 
# Instruction: pip install tweepy
import sys
import getopt
import tweepy
from http.client import IncompleteRead
from tweepy import Stream
from tweepy import OAuthHandler
from twitter_listener import Twitter_Listener
from requests.packages.urllib3.exceptions import ProtocolError

consumer_key = "MFTULFVvP1eGLHHtd388mADid"
consumer_secret = "VdCebNzhNrbXV2nZFjPTDhxM9rlz4ylsGJWeRZY6GVjAWIvwoh"
access_token = "3778386016-tqew6cnVtrsA5m4sNdeMh3jF3HjmNZChgeDipcw"
access_token_secret = "qQiXGzIxpjev40KPHVtpdJGzcJN8YW26MYnwJpP3Pikr6"

def usage():
    print("Twitter Data Collection Tool")
    print("Runtime Environment: Python 3.5")
    print("Usage: twitter_authenticate.py -k [keyword]")
    print("Examples:") 
    print("python3 twitter_authenticate.py -k China")
    print("python3 twitter_authenticate.py --keyword China")
    sys.exit(0)
    
def twitter_authenticate(keyword="Tibet"):
    while True:
        twitter_listener = Twitter_Listener(keyword)
        twitter_auth = OAuthHandler(consumer_key, consumer_secret)
        twitter_auth.set_access_token(access_token, access_token_secret)
        twitter_stream = Stream(twitter_auth, twitter_listener)
        try:
            twitter_stream.filter(track=keyword)
        except ProtocolError:
            continue
        except IncompleteRead:
            continue
        except KeyboardInterrupt:
            twitter_stream.disconnect()
            break
    
if __name__ ==  "__main__":
    major, minor = sys.version_info[0], sys.version_info[1]
    if major != 3 and minor != 5:
        print("Update Your Python Version to 3.5")
        exit(0)
    if len(sys.argv) != 3:
        usage()
    try:
        opts, args = getopt.getopt(sys.argv[1:], "k:", ["keyword"])
    except getopt.GetoptError as e:
        print(e)
    for option, argument in opts:
        if option in ("-h","--help"):
            usage()
        elif option in ("-k","--keyword"):
            keyword = argument
        else:
            assert("Unhandled Options")   
    twitter_authenticate(keyword)
