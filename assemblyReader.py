import assemblyScalable

def main():
  f=[]
  cwd = os.getcwd()
  print(cwd)
  files = os.listdir(cwd)
  for file in files:
    if(file.endswith('.c.s') and not file.startswith('m')):
      f.append(file)
  codeDict = examine(f)

main()
