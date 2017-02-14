from collections import defaultdict
from collections import Counter
import operator
import json
import sys
sys.path.append("../twitter_data_preprocess")
from twitter_text_preprocess import preprocess
from twitter_analysis_stopwords import topic_stop_words,mention_stop_words,text_stop_words

term_matrix = defaultdict(lambda : defaultdict(int))

directory = "/Users/zack/Desktop/twitter/#BirdieSanders/"
file_name = "/Users/zack/Desktop/twitter/#BirdieSanders/birdiesanders.json"
with open(file_name,'r') as file_handle:
    for line in file_handle:
        tweet = json.loads(line)
        terms = [term for term in preprocess(tweet['text']) if term not in text_stop_words and not term.startswith(("#","@"))]
        for i in range(len(terms)-1):
            for j in range(i+1,len(terms)):
                first, last = sorted([terms[i],terms[j]])
                if first != last:
                    term_matrix[first][last] = term_matrix[first][last] + 1
                
term_common_matrix = []
for first in term_matrix:
    first_term_max = max(term_matrix[first].items(),key=operator.itemgetter(1))[0:30]
    for last in first_term_max:
        term_common_matrix.append(((first, last), term_matrix[first][last]))
terms_max = sorted(term_common_matrix,key=operator.itemgetter(1), reverse=True)
print(terms_max)