import sys
sys.path.append("../twitter_data_preprocess")
sys.path.append("../twitter_data_analysis")
from twitter_text_preprocess import preprocess
from twitter_analysis_stopwords import topic_stop_words,mention_stop_words,text_stop_words
import vincent
import pandas
import json

key_word = "#BirdieSanders"
dates_data = []
file_name = "/Users/zack/Desktop/twitter/#BirdieSanders/birdiesanders.json"
with open(file_name,'r') as file_handle:
    for line in file_handle:
        tweet = json.loads(line)
        terms = [term for term in preprocess(tweet['text']) if term.startswith('#')]
        if key_word in terms:
            dates_data.append(tweet["created_at"])
                     
ones = [1.0]*len(dates_data)
idx = pandas.DatetimeIndex(dates_data)
data = pandas.Series(ones,index=idx)
result = data.resample('240s').sum()
time_chart = vincent.Line(result)
time_chart.legend(title='Topic Time Legend')
time_chart.axis_titles(x='Time', y='Freq')
time_chart.width = 1350
time_chart.height = 600
time_chart.to_json('../time_chart.json')