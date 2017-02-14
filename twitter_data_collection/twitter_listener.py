#!/usr/bin/env python3
#encoding=utf-8
#Description: Constant HTTP Connection with twitter public streaming
#Library: tweepy 3.5.0, 
#Instruction: pip install tweepy
from tweepy.streaming import StreamListener
from http.client import IncompleteRead
import os
import sys

class Twitter_Listener(StreamListener):
    
    def __init__(self,keyword):
        self.keyword = keyword
    
    def create_dir(self):
         current_path = os.getcwd()
         dir_path = os.path.dirname(current_path)
         fulldir_path = os.path.join(dir_path,self.keyword)
         if os.path.exists(fulldir_path):
             return fulldir_path
         try:
            os.mkdir(fulldir_path)
         except Exception as e:
             print(e)
             sys.exit(0)
         return fulldir_path
     
    def on_data(self, data):
        dir = self.create_dir()
        filename = os.path.basename(dir) + ".json"
        try:
            with open(os.path.join(dir,filename), 'a+') as handle:
                handle.write(data)
            return True
        except BaseException as e:
            print("[Error] %s" % e)
        except IncompleteRead:
            pass
        return True

       
    def on_error(self, status):
         print(status)
         return True
                        