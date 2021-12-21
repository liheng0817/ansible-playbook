#!/usr/bin/env python  
#coding:utf-8
#date=2020-04-10
#author=YeYang  
import os, json

portlist=["10050","22"]

port_list=[]

port_dict={"data":None}

for port in portlist:

    pdict={}

    pdict["{#TCP_PORT}"]=port

    port_list.append(pdict)

port_dict["data"]=port_list

jsonStr = json.dumps(port_dict, sort_keys=True, indent=4)

print jsonStr
