import json
file_name = "/Users/zack/Desktop/twitter/#BirdieSanders/birdiesanders.json"
directory = "/Users/zack/Desktop/twitter/#BirdieSanders/"
with open(file_name,'r') as file_handle:
     geo_data = {
        "type": "FeatureCollection",
        "features": []
    }
     for line in file_handle:
        tweet = json.loads(line)
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
            
with open('../geo_data.json', 'w') as geo_file:
    geo_file.write(json.dumps(geo_data, indent=4))