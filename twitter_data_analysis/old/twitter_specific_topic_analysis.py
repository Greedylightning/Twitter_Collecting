from collections import Counter
import json
import sys
sys.path.append("../twitter_data_preprocess")
from twitter_text_preprocess import preprocess
from twitter_text_preprocess import preprocess
from twitter_analysis_stopwords import topic_stop_words,mention_stop_words,text_stop_words

specific_word = "rally"
directory = "/Users/zack/Desktop/twitter/#BirdieSanders/"
file_name = "/Users/zack/Desktop/twitter/#BirdieSanders/birdiesanders.json"
with open(file_name,'r') as file_handle:
    word_search = Counter()
    for line in file_handle:
        tweet = json.loads(line)
        terms = [term for term in preprocess(tweet['text']) if term not in text_stop_words and not term.startswith(("#","@"))]
        if specific_word in terms:
            word_search.update(terms)
with open(directory+"topic_analysis.json",'w') as data_file:
    data_file.write(str(word_search.most_common(30)))

