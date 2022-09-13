import requests, json 

headers = { 
    
    "Accept" : "application/json",
    "Authorization" : "Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzUxMiIsImtpZCI6IjI4YTMxOGY3LTAwMDAtYTFlYi03ZmExLTJjNzQzM2M2Y2NhNSJ9.eyJpc3MiOiJzdXBlcmNlbGwiLCJhdWQiOiJzdXBlcmNlbGw6Z2FtZWFwaSIsImp0aSI6IjYxZWNkMjE1LTU4YmMtNGI3Yi1hZWY4LTZlNzVlNjVmNzIxOCIsImlhdCI6MTY2MzAzMTU0OCwic3ViIjoiZGV2ZWxvcGVyLzc2MDhmYTYwLTk4MDAtN2YyYi1kMTI2LTFmNWQ3Mzg3MWUwMCIsInNjb3BlcyI6WyJyb3lhbGUiXSwibGltaXRzIjpbeyJ0aWVyIjoiZGV2ZWxvcGVyL3NpbHZlciIsInR5cGUiOiJ0aHJvdHRsaW5nIn0seyJjaWRycyI6WyIxODkuMTEwLjQwLjE0NSJdLCJ0eXBlIjoiY2xpZW50In1dfQ.XD3kXgBtt14gtHl_IYbPR8HDeL-4h3eOf5_aBxfoOdsdwb0SS4fSxkHuvyRSkHrVBojPfv3TVyrgpZvRQt8fAQ"

}


def info_clan():
    r = requests.get('https://api.clashroyale.com/v1/clans/%239V2Y', headers=headers)
    json_clans = r.json()
    membros = json_clans['members']
    trofeus = json_clans['clanWarTrophies']

    print(f'A Quantidade de membros do clã : {membros} e a quantidade de troféus : {trofeus}')

info_clan()