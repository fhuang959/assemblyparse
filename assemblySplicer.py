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
    dict = {}
    for function in fNames:
        dict[function] = {'code':[],'fCalled':[]}
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
                dict[function]['code'].append(line)
                if(line[0:4] == 'call'):
                    dict[function]['fCalled'].append(line[5:])               
        if(len(dict[function]['fCalled'])>0):
            bool=False
            for method in dict[function]['fCalled']:
                jointMethod=method+':'
                if(fNames.count(jointMethod)>0):
                    dict[function][method]=[]
                    for line in code:
                        if(line==jointMethod):
                            bool=True
                            continue
                        if(bool):
                            if(line[0] != '.' and line[len(line)-1] == ':'):
                                bool = False
                                break
                            dict[function][method].append(line)
                            
    #pprint.pprint(dict)
    pprint.pprint(dict['getExpectedIdentity:'])  

examine('marginPhase.c.s') 
output = open("output.txt","w+")
for key,value in dict.items(dict):
    output.write('%s:%n\n' % (key,value))
