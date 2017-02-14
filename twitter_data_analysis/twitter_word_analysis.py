#!/usr/bin/env python3
# encoding=utf-8
# Description: Twitter text analysis
# Library: ~
# Instruction: ~
import os
import sys
import json
from collections import Counter
sys.path.append("../twitter_data_preprocess")
from twitter_text_preprocess import preprocess
from twitter_analysis_stopwords import topic_stop_words,mention_stop_words,text_stop_words

class Twitter_Analysis_Word():
    
    def __init__(self,path,filename,word):
        self.path = path
        self.filename = filename
        self.word = word
        
    def handle(self):
        with open(os.path.join(self.path,self.filename),'r') as file_handle:
            word_search = Counter()
            for line in file_handle:
                try:
                    tweet = json.loads(line)
                    terms = [term for term in preprocess(tweet['text']) if term not in text_stop_words and not term.startswith(("#","@"))]
                    if self.word in terms:
                        word_search.update(terms)
                except KeyError:
                    continue
            self.word_search = word_search.most_common(30)
            
    def display(self):
        print(self.word_search)
    
    #文件编码问题尚未解决，该方法暂时不可用    
    def writetofile(self,filename):
        with open(os.path.join(self.path,filename),'w') as data_file:
            data_file.write(str(self.word_search) + "\n")
            
    def __del__(self):
        pass
    
#===============================================================================
# x = Twitter_Analysis_Word("/Users/zack/eclipse_workspace/Graduate/China","china.json","government")
# x.handle()
# x.display()
#===============================================================================