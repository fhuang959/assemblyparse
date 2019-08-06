import assemblyScalable
import pprint
import os

def getTargetMethod(fNames):
    s = input("Print target method: "+"\n")
    if(fNames.count(s)>0):
        return s
    else:
        return getTargetMethod(fNames)


def dictInit():
  f=[]
  cwd = os.getcwd()
  print(cwd)
  files = os.listdir(cwd)
  for file in files:
    if(file.endswith('.s') ):#and not file.startswith('m')):
      f.append(file)
  codeDict = assemblyScalable.examine(f)
  return codeDict

def tDictInit(tDict,codeDict,s):
    tDict[s]=codeDict[s]
    return tDict

def recursivelyPrintToDict(codeDict,tFxn,fNames,tDict):
    for fxn in codeDict[tFxn]['fCalled']:
        if(fNames.count(fxn)>0):
            tDict[fxn]=codeDict[fxn]
            return recursivelyPrintToDict(codeDict,fxn,fNames,tDict)




def main():
    codeDict=dictInit()
    fNames=assemblyScalable.getFNames(codeDict)
    print(fNames)
    s = getTargetMethod(fNames)
    tDict={}
    tDict=tDictInit(tDict,codeDict,s)
    recursivelyPrintToDict(codeDict,s,fNames,tDict)
    #pprint.pprint(tDict)
    assemblyScalable.codeWrite(tDict)

main()
