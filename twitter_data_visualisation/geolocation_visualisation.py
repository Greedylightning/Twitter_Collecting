import os
import json

class Geolocation_Visualisation():
    
    def __init__(self,path,filename):
        self.path = path
        self.filename = filename
        
    def handle(self):
        with open(os.path.join(self.path,self.filename),'r') as file_handle:
             geo_data = {
                                    "type": "FeatureCollection",
                                    "features": []
                                }
             for line in file_handle:
                 tweet = json.loads(line)
                 try:
                     if tweet['coordinates']:
                         geo_json_feature = {
                                                            "type": "Feature",
                                                            "geometry": tweet['coordinates'],
                                                            "properties": {
                                                                                    "text": tweet['text'],
                                                                                    "created_at": tweet['created_at']
                                                                                }
                                                    }
                         geo_data['features'].append(geo_json_feature)
                 except KeyError:
                    continue
        self.geo_data = geo_data
    
    def display(self):
        with open("geo_data.json",'w') as file_handle:
            file_handle.write(json.dumps(self.geo_data,indent=4))
 
x = Geolocation_Visualisation("/Users/zack/eclipse_workspace/Graduate/Tibet/","Tibet.json")
x.handle()
x.display()                   