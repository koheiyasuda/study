#!/usr/bin/env python3

import urllib.request
import urllib.parse
import json

api_url = "http://localhost:8983/solr/solrbook/select"

while 1:

    query = input()

    pars = {"facet.field":"genre",
            "facet":"on",
            "indent":"on",
            "q":"title:" + query,
            "spellcheck":"on",
            "wt":"json"
    }
    enc_pars = urllib.parse.urlencode(pars)

    with urllib.request.urlopen(api_url + '?' + enc_pars) as res:
        html = res.read().decode("utf-8")
        #print(html)
        json_res = json.loads(html)
        #print(json_res["responseHeader"])
        print("関連する書籍として以下のものがあります。")
        max = json_res["response"]["numFound"]
        if max > 5:
            max = 5
        for i in range(max):
            print(json.dumps(json_res["response"]["docs"][i]["title"], ensure_ascii=False))
        print()
        print("下記のジャンルで絞り込めます。")
        glen = len(json_res["facet_counts"]["facet_fields"]["genre"])
        for i in range(10):
            freq = json_res["facet_counts"]["facet_fields"]["genre"][i*2+1]
            if freq > 0:
                print(str(freq) + "件:" + json.dumps(json_res["facet_counts"]["facet_fields"]["genre"][i*2], ensure_ascii=False))
            if (i+1)*2 > glen:
                break
        #print(json.dumps(json_res["facet_counts"]["facet_fields"]["genre"], ensure_ascii=False))

    break
