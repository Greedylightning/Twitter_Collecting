#!/usr/bin/env python3
#encoding=utf-8
#Description: Twitter text preprocess
#Library: re
#Instruction: ~
import re

emoticons_string = """
    (?:
      [<>]?
      [:=;]                                       # eyes
      [:;=8]                                     # eyes
      [:;=8]                                     # eyes
      [oO\-]?                                  # nose 
      [\-o\*\']?                                 # nose
      [\-o\*\']?                                 # nose
      [D\)\]\(\]/\\OpP]                      # mouth
      [\)\]\(\[dDpP/\:\}\{@\|\\]           # mouth      
      [\)\]\(\[dDpP/\:\}\{@\|\\]           # mouth
      [<>]?
    )"""
    
regex_string = [
                            emoticons_string,                                                                                              #Emotion-pattern
                            #"http[s]?:[/]*(?:[a-zA-Z]|[0-9]|[$-_@.&#+]|[!*(),]|(?:%[0-9a-fA-F][0-9a-fA-F]))+", #URL-pattern
                            "(?:\#+[\w_]+[\w\'_\-]*[\w_]+)",                                                                            #Hash-tags
                            "(?:@[\w_]+)",                                                                                                    #@-mentions
                            "<[^>]+>",                                                                                                          #HTML-tags
                            "(?:[a-z][a-z'\-_]+[a-z])",                                                                                     #Words with apostrophes or dashes
                            " (?:[+\-]?\d+[,/.:-]\d+[+\-]?)"                                                                               #Numbers, including fractions, decimals
                            "(?:[\w_]+)"                                                                                                        #Words without apostrophes or dashes
                            "(?:\.(?:\s*\.){1,})"                                                                                               #Ellipsis dots
                            "(?:\S)"                                                                                                              #Everything else that isn't whitespace
                ]

stop_words_list = ["a", "about", "above", "after", "again", "also","against", \
"all", "am", "an", "and", "any", "are", "aren't", "as",\
"at", "be", "because", "been", "before", "being", \
"below", "between", "both", "but", "by", "can","can't", \
"cannot", "could", "couldn't", "did", "didn't", "do", \
"does", "doesn't", "doing", "don't", "down", "during", \
"each", "few", "for", "from", "further", "had", "hadn't", \
"has", "hasn't", "have", "haven't", "having", "https","https://","he", \
"he'd", "he'll", "he's", "her", "here", "here's", "hers", \
"herself", "him", "himself", "his", "how", "how's", "i", \
"i'd", "i'll", "i'm", "i've", "if", "in", "into", "is", \
"isn't", "it", "it's", "its", "itself", "let's", "me", \
"more", "most", "mustn't", "my", "myself", "no", "nor",\
"not", "now","of", "off", "on", "once", "only","or", "other", \
"ought", "our", "ours", "ourselves", "out", "over", "own", \
"same", "shan't", "she", "she'd", "she'll", "she's", \
"should", "shouldn't", "so", "some", "such", "stop","than", "that", \
"that's", "the", "The","their", "theirs", "them", "themselves", \
"then", "there", "there's", "these", "they", "they'd", \
"they'll", "they're", "they've", "this", "those", "through", \
"to", "too", "under", "until", "up", "very", "via","was", "wasn't", \
"we", "we'd", "we'll", "we're", "we've", "were", "weren't", \
"what", "what's", "when", "when's", "where", "where's", \
"which", "while", "who", "who's", "whom", "why","why's", \
"with", "won't", "would", "wouldn't", "you", "you'd", \
"you'll", "you're", "you've", "your", "yours", "yourself", "yourselves",
":",",","'","í","!","#","$","%","&","(",")","*","+","-",".","/",":",";","<","=",">","?","@","[","]","^","_","`","{","|","}","~","Ö","RT"]

word_pattern = re.compile('('+'|'.join(regex_string)+')', re.VERBOSE | re.IGNORECASE | re.UNICODE)
emoticon_pattern = re.compile('^'+emoticons_string+'$', re.VERBOSE | re.IGNORECASE | re.UNICODE)

def tokenize(s):
    return word_pattern.findall(s)

def preprocess(s):
    raw_words = tokenize(s)
    processed_words = [item for item in raw_words if item.lower() not in stop_words_list]
    return processed_words
