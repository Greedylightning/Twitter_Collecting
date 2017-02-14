import sys
sys.path.append("../twitter_data_preprocess")
sys.path.append("../twitter_data_analysis")
from twitter_text_preprocess import preprocess
from twitter_analysis_stopwords import topic_stop_words,mention_stop_words,text_stop_words
import vincent
import pandas
import json
        
match_data = dict(x=per_minute_x, y=per_minute_y, z=per_minute_z)
all_matches = pandas.DataFrame(data=text_data,index=per_minute_x.index)
all_matches = all_matches.resample('60s').sum()
time_chart = vincent.Line(all_matches[['', '', '']])
time_chart.axis_titles(x='Time', y='Freq')
time_chart.legend(title='')
time_chart.to_json('time_chart.json')