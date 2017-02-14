import sys
sys.path.append("../twitter_data_analysis")
from twitter_basic_analysis import Twitter_Analysis_Basic
import matplotlib.pyplot as plt
plt.rcdefaults()
import numpy as np
import matplotlib.pyplot as plt

class Basic_Visualisation():
    
    def __init__(self,object):
        self.topic = object.topic
        self.mention = object.mention
        self.text = object.text
        self.bitext = object.bitext
        
    def topic_display(self):
        x = list()
        y = list()
        for a,b in self.topic:
            y.append(a)
            x.append(b)
        y_pos = 10* np.arange(len(self.topic))
        x_pos = 3+10 * np.random.rand(len(self.topic))
        error = np.random.rand(len(self.topic))
        plt.barh(y_pos, x_pos, xerr=error, align="center",alpha=0.4)
        plt.yticks(y_pos,y)
        plt.xlabel("Count")
        plt.title("Topic Data Statistics")
        plt.show()
        
    def mention_display(self):
        x = list()
        y = list()
        for a,b in self.mention:
            y.append(a)
            x.append(b)
        y_pos = 10* np.arange(len(self.mention))
        x_pos = 3+10 * np.random.rand(len(self.mention))
        error = np.random.rand(len(self.mention))
        plt.barh(y_pos, x_pos, xerr=error, align="center",alpha=0.4)
        plt.yticks(y_pos,y)
        plt.xlabel("Count")
        plt.title("Mention Data Statistics")
        plt.show()
        
    def text_display(self):
        x = list()
        y = list()
        for a,b in self.text:
            y.append(a)
            x.append(b)
        y_pos = 10* np.arange(len(self.text))
        x_pos = 3+10 * np.random.rand(len(self.text))
        error = np.random.rand(len(self.text))
        plt.barh(y_pos, x_pos, xerr=error, align="center",alpha=0.4)
        plt.yticks(y_pos,y)
        plt.xlabel("Count")
        plt.title("Text Data Statistics")
        plt.show()
        
    def bitext_display(self):
        x = list()
        y = list()
        for a,b in self.bitext:
            y.append(a)
            x.append(b)
        y_pos = 10* np.arange(len(self.bitext))
        x_pos = 3+10 * np.random.rand(len(self.text))
        error = np.random.rand(len(self.text))
        plt.barh(y_pos, x_pos, xerr=error, align="center",alpha=0.4)
        plt.yticks(y_pos,y)
        plt.xlabel("Count")
        plt.title("Bitext Data Statistics")
        plt.show()

q = Twitter_Analysis_Basic("/Users/zack/eclipse_workspace/Graduate/Tibet/","Tibet.json")
q.handle()
p = Basic_Visualisation(q)
p.bitext_display()
        
