import vincent
directory = "/Users/zack/Desktop/twitter/#BirdieSanders/"
file_name = "/Users/zack/Desktop/twitter/#BirdieSanders/birdiesanders.json"


labels, frequence = zip(*topic)
data = {"data" : frequence,"x": labels}
bar = vincent.Bar(data,iter_idx='x')
bar.width = 1350
bar.height = 600
bar.to_json("../data_chart.json",html_out=True,html_path='data_chart.html',pretty_print=True)
#===============================================================================
# labels, frequence = zip(*word_freq)
# data = {"data" : frequence,"x" : labels}
# bar = vincent.Bar(data,iter_idx='x')
# bar.display()
#===============================================================================