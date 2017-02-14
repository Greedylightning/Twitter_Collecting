import os
import sys
import json
sys.path.append("../twitter_data_analysis")
sys.path.append("../twitter_data_preprocess")
from twitter_text_preprocess import preprocess
from twitter_basic_analysis import Twitter_Analysis_Basic
import vincent
import pandas

class Time_Visualisation():
    
    def __init__(self,path,filename,keyword):
        self.path = path
        self.filename = filename
        self.keyword = keyword
        
    def handle(self):
        with open(os.path.join(self.path,self.filename),'r') as file_handle:
            time = list()
            for line in file_handle:
                tweet = json.loads(line)
                try:
                    terms = [term for term in preprocess(tweet['text'])]
                    if self.keyword in terms:
                        time.append(tweet["created_at"])
                except KeyError:
                    continue
            self.time = time
        
    def display(self):
        ones = [1]*len(self.time)
        idx = pandas.DatetimeIndex(self.time)
        topic = pandas.Series(ones,index=idx)
        result = topic.resample("180s").sum().bfill()
        print(result)
        time_chart = vincent.Line(result)
        time_chart.axis_titles(x='Time', y='Frequence')
        time_chart.to_json('./time.json')
        
x = Time_Visualisation("/Users/zack/eclipse_workspace/Graduate/Tibet/","Tibet.json","fight")
x.handle()
x.display()