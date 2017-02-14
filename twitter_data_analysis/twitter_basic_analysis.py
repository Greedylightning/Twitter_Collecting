#!/usr/bin/env python3
# encoding=utf-8
# Description: Twitter text analysis
# Library: nltk 3.1
# Instruction: pip install nltk
import os
import sys
import json
from nltk import bigrams
from collections import Counter
sys.path.append("../twitter_data_preprocess")
from twitter_text_preprocess import preprocess
from twitter_analysis_stopwords import topic_stop_words,mention_stop_words,text_stop_words

class Twitter_Analysis_Basic():
    
    def __init__(self,path,filename):
        self.path = path
        self.filename = filename
    
    def handle(self):
        with open(os.path.join(self.path,self.filename),'r') as file_handle:
            count_topic = Counter()
            count_mention = Counter()
            count_text = Counter()
            count_bitext = Counter()
            for line in file_handle:
                try:
                    tweet = json.loads(line)
                    terms_topic = [term for term in preprocess(tweet["text"]) if term not in topic_stop_words and term.startswith("#")]
                    terms_mention = [term for term in preprocess(tweet["text"]) if term not in mention_stop_words and term.startswith("@")]
                    terms_text = [term for term in preprocess(tweet["text"]) if term not in text_stop_words and not term.startswith(("#","@"))]
                    terms_bitext = [term for term in preprocess(tweet["text"]) if term not in text_stop_words and not term.startswith(("#","@"))]
                    terms_bigram = bigrams(terms_bitext)
                    count_topic.update(terms_topic)
                    count_mention.update(terms_mention)
                    count_text.update(terms_text)
                    count_bitext.update(terms_bigram)
                except KeyError:
                    continue
            self.topic = count_topic.most_common(30)
            self.mention = count_mention.most_common(30)
            self.text = count_text.most_common(30)
            self.bitext = count_bitext.most_common(30)
            
    def display(self):
        print(self.topic)
        print(self.mention)
        print(self.text)
        print(self.bitext)
    
    #文件编码问题尚未解决，该方法暂时不可用  
    def writetofile(self,filename):
        with open(os.path.join(self.path,filename),'w') as data_file:
            data_file.write(str(self.topic) + "\n")
            data_file.write(str(self.topic) + "\n")
            data_file.write(str(self.topic) + "\n")
            data_file.write(str(self.topic) + "\n")
            
    def __del__(self):
        pass
    
x = Twitter_Analysis_Basic("/Users/zack/Desktop/twitter/#BirdieSanders","birdiesanders.json")
x.handle()
x.display()            
