import pprint


def examine(filename):
    code=[]
    with open(filename) as f:
        lines = f.readlines()
        for line in lines:
            line = line.strip()
            #print(line)
            code.append(line)
    fNames = []
    for line in code:
        if(line[0] != '.' and line[len(line)-1] == ':'):
            fNames.append(line)
    print(fNames)
    dictCode = {}
    for function in fNames:
        dictCode[function] = {'code':[],'fCalled':[]}
    #print(dict)
    bool = False
    for function in fNames:
        for line in code:
            if(line == function):
                bool=True
                continue
            if(bool):
                if(line[0] != '.' and line[len(line)-1] == ':'):
                    bool = False
                    break
                dictCode[function]['code'].append(line)
                if(line[0:4] == 'call'):
                    dictCode[function]['fCalled'].append(line[5:])               
        if(len(dictCode[function]['fCalled'])>0):
            bool=False
            for method in dictCode[function]['fCalled']:
                jointMethod=method+':'
                if(fNames.count(jointMethod)>0):
                    dictCode[function][method]=[]
                    for line in code:
                        if(line==jointMethod):
                            bool=True
                            continue
                        if(bool):
                            if(line[0] != '.' and line[len(line)-1] == ':'):
                                bool = False
                                break
                            dictCode[function][method].append(line)
                            
    #pprint.pprint(dict)
    pprint.pprint(dictCode['getExpectedIdentity:'])  

examine('marginPhase.c.s') 
output = open("output.txt","w+")
for key,value in dictCode.items():
    output.write('%s:%n\n' % (key,value))
