import assemblyScalable
import assemblyReader

def getFiles(fileList):
    s=input("enter file name or done to finish")
    if(s=='done'):
        return fileList
    fileList.append(s)
    getFiles(fileList)


def main():
    fileList=[]
    codeDict={}

    s=input("auto/manual?")

    if(s=="a" or s=='auto'):
        codeDict=assemblyReader.dictInit()
        assemblyScalable.codeWrite(codeDict)
    elif(s=='m' or s=='manual'):
        fileList=getFiles()
        codeDict=assemblyScalable.examine(fileList)
        assemblyScalable.codeWrite(codeDict)

main()
