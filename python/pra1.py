# imgname = ""
# status = ""
# parts = ""

import csv
import glob
import os
import os.path
import shutil

workDir = "/Users/koheiyasuda/Desktop/study/python/"
inputDir = "/Users/koheiyasuda/Desktop/study/python/タグ情報/"
outputDir = "/Users/koheiyasuda/Desktop/study/python/copy/oneparts/"

imgDir = "/Users/koheiyasuda/Desktop/study/python/2.トリミング前画像/"

# 辞書
# status = "NULL"
# partsname = ""
# songaikibo = ["大", "中", "小", "取替", "脱着(分解)"]
# imgstatus = []
# partsDic = {}
# listpDic = []
# jikoimages = {
#     # "jpgname":imgstatus
# }
acdict = {}
imglist = []

for inputPath in glob.glob(inputDir + '*.txt'):
  # print(inputPath)
  basename = os.path.basename(inputPath)
  # print(basename)
  jikoname = os.path.splitext(basename)
#   #後ろから18文字をスライス
  jiko = jikoname[0][-18:]
  print(jiko)


  for line in open(inputPath, 'r', encoding='UTF-8'):
      data = line.split('\t')
      data[2] = data[2].rstrip("\n")
      data[2] = data[2].split(',')
      acdict.setdefault(jiko, []).append([data[0], data[1], data[2]])


# print(acdict["DA0085933932100011"])
# print("proc_data21-month130-day23-198515611-1-134014402220703.JPG" in acdict["DA0085933932100011"][0])
# print(len(acdict["DA0085933932100011"]))


for foldername, subfolders, filenames in os.walk(imgDir):

    jikoname = foldername[-19:]
    jikoname = jikoname.replace("_", "")

    if jikoname in acdict:
        for filename in filenames:
            rows = len(acdict[jikoname])
            for row in range(rows):
                if len(acdict[jikoname][row][2]) == 2:
                    partsname = acdict[jikoname][row][2][0]
                    if os.path.exists(outputDir+partsname):
                        "すでにあります"
                    else:
                        os.mkdir(outputDir+partsname)
                    jpgname = acdict[jikoname][row][0]
                    oldimage = foldername+"/"+jpgname
                    kibo = acdict[jikoname][row][2][1]
                    jpgrename = jpgname[0:-4]
                    newimage = outputDir+partsname+"/"+jpgrename+"_"+jikoname+"_"+partsname+"_"+kibo+".jpg"
                    shutil.copy(oldimage, newimage)
    else:
        print("事故はありません")
