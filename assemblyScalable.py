import pprint

def getCode(fileList):
  code=[]
  for fileName in fileList:
    with open(fileName) as f:
      lines=f.readlines()
      for line in lines:
        line=line.strip()
        code.append(line)
    code.append('\n')
  return code

def getFNames(code):
  fNames=[]
  for line in code:
    if((not line.startswith('.'))  and line.endswith(':')):
      fNames.append(line)
  return fNames

def dInit(fNames):
  codeDict={}
  for function in fNames:
    codeDict[function]={'code':[],'fCalled':[]}
  return codeDict

def fPopulate(code,fNames, codeDict, key):
  bool=False
  for line in code:
    if(line==key):
      bool=True
      continue
    if(bool):
      if(((not line.startswith('.'))  and line.endswith(':')) or line=='\n'):
        break
      codeDict[key]['code'].append(line)
      if(line[0:4] == 'call'):
        codeDict[key]['fCalled'].append(line[5:]+':')

def fDiscern(code,fNames,codeDict,key):
  bool=False
  for function in codeDict[key]['fCalled']:
    if(fNames.count(function)>0):
      codeDict[key][function]=[]
      for line in code:
        if(line==function):
          bool=True
          continue
        if(bool):
          if(((not line.startswith('.'))  and line.endswith(':')) or line=='\n'):
            break
          codeDict[key][function].append(line)





def examine(fileList):
  code=getCode(fileList)
  fNames=getFNames(code)
  codeDict=dInit(fNames)
  for function in fNames:
    fPopulate(code,fNames,codeDict,function)
    fDiscern(code,fNames,codeDict,function)
  #pprint.pprint(codeDict['getExpectedIdentity:'])
  pprint.pprint(codeDict)
def main():
  f=[]
  #f.append('marginPhase.c.s')
  f.append('tester1.c.s')
  f.append('tester2.c.s')
  f.append('tester3.c.s')
  examine(f)
main()
