#!/usr/bin/env python3
# encoding=utf-8
# Description: Twitter text analysis
# Library: nltk 3.1, 
# Instruction: pip install nltk
import sys
import json
from nltk import bigrams
from collections import Counter
sys.path.append("../twitter_data_preprocess")
from twitter_text_preprocess import preprocess
from twitter_analysis_stopwords import topic_stop_words,mention_stop_words,text_stop_words

directory = "/Users/zack/Desktop/twitter/#BirdieSanders/"
file_name = "/Users/zack/Desktop/twitter/#BirdieSanders/birdiesanders.json"
with open(file_name,'r') as file_handle:
    count_topic = Counter()
    count_mention = Counter()
    count_text = Counter()
    count_bitext = Counter() 
    for line in file_handle:
        tweet = json.loads(line)
        terms_topic = [term for term in preprocess(tweet['text']) if term not in topic_stop_words and term.startswith("#")]
        terms_mention = [term for term in preprocess(tweet['text']) if term not in mention_stop_words and term.startswith("@")]
        terms_text = [term for term in preprocess(tweet['text']) if term not in text_stop_words and not term.startswith(("#","@"))]
        terms_bitext = [term for term in preprocess(tweet['text']) if term not in text_stop_words and not term.startswith(("#","@"))]
        terms_bigram = bigrams(terms_bitext)
        count_topic.update(terms_topic)
        count_mention.update(terms_mention)
        count_text.update(terms_text)
        count_bitext.update(terms_bigram)
with open(directory+"text_analysis.json",'w') as data_file:
    data_file.write(str(count_topic.most_common(30)))
    data_file.write('\n')
    data_file.write(str(count_mention.most_common(30)))
    data_file.write('\n')
    data_file.write(str(count_text.most_common(30)))
    data_file.write('\n')
    data_file.write(str(count_bitext.most_common(30)))
