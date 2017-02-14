import os
import sys
import path
sys.path.append("../twitter_data_preprocess")
sys.path.append("../twitter_data_analysis")
from twitter_text_preprocess import preprocess
from twitter_analysis_stopwords import topic_stop_words,mention_stop_words,text_stop_words
import vincent
import pandas
import json

class Multitopics_Visualization():
    
    def __init__(self,path,filename,*keywords):
        self.path = path
        self.filename = filename
        self.keywords = keywords
        
    def handle(self):
        length = len(self.keywords)
        time = list()
        for item in self.keywords:
            tmp = list()
            time.append(tmp)
        with open(os.path.join(self.path,self.filename),'r') as file_handle:
            for line in file_handle:
                tweet = json.loads(line)
                terms = [term for term in preprocess(tweet['text'])]
                for i in range(length):
                    if self.keywords[i] in terms:
                        time[i].append(tweet["created_at"])
        self.time = time
        
    def display(self):
        tmp = list()
        for i in range(len(self.keywords)):
            ones = [1]*len(self.time[i])
            idx = pandas.DatetimeIndex(self.time[i])
            topic = pandas.Series(ones,index=idx)
            result = topic.resample("3T").sum().bfill()
            tmp.append(result)
        tmp_data = dict()
        for i in range(len(self.keywords)):
            tmp_data[self.keywords[i]] = tmp[i]
        frame = pandas.DataFrame(data=tmp_data,index=tmp[0].index)
        frame = frame.resample("5T").sum().bfill(1)
        time_chart = vincent.Line(frame[[item for item in self.keywords]])
        time_chart.axis_titles(x='Time', y='Frequence')
        time_chart.legend(title='Multitopics Time Series')
        time_chart.to_json('time_chart.json')
        
x = Multitopics_Visualization("/Users/zack/Desktop/twitter/#BirdieSanders/","birdiesanders.json","BirdieSanders","Sanders","Birdie","president")
x.handle()
x.display()