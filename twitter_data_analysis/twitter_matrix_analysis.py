#!/usr/bin/env python3
# encoding=utf-8
# Description: Twitter text analysis
# Library: ~
# Instruction: ~
import os
import sys
import json
import operator
from collections import defaultdict
from collections import Counter
import path
sys.path.append("../twitter_data_preprocess")
from twitter_text_preprocess import preprocess
from twitter_analysis_stopwords import topic_stop_words,mention_stop_words,text_stop_words

class Twitter_Analysis_Matrix():
    
    def __init__(self,path,filename):
        self.path = path
        self.filename = filename
        
    def handle(self):
        term_matrix = defaultdict(lambda : defaultdict(int))
        with open(os.path.join(self.path,self.filename),'r') as file_handle:
            for line in file_handle:
                try:
                    tweet = json.loads(line)
                    terms = [term for term in preprocess(tweet['text']) if term not in text_stop_words and not term.startswith(("#","@"))]
                    for i in range(len(terms)-1):
                        for j in range(i+1,len(terms)):
                            first, last = sorted([terms[i],terms[j]])
                            if first != last:
                                 term_matrix[first][last] = term_matrix[first][last] + 1
                except KeyError:
                    continue
        term_common_matrix = []
        for first in term_matrix:
             first_term_max = max(term_matrix[first].items(),key=operator.itemgetter(1))[0:30]
             for last in first_term_max:
                  term_common_matrix.append(((first, last), term_matrix[first][last]))
        terms_max = sorted(term_common_matrix,key=operator.itemgetter(1), reverse=True)
        self.terms_max = terms_max
        
    def display(self):
        print(self.terms_max)
       
    #文件编码问题尚未解决，该方法暂时不可用  
    def writetofile(self,filename):
        with open(os.path.join(self.path,filename),'w') as data_file:
            data_file.write(str(self.terms_max) + "\n")
            
    def __del__(self):
        pass

#===============================================================================
# x = Twitter_Analysis_Matrix("/Users/zack/eclipse_workspace/Graduate/China","china.json")
# x.handle()
# x.display()                  
#===============================================================================