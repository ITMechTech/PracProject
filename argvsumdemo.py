from sys import argv
SUM=0
ARG=argv[1:]
for val in ARG:
  v=int(val)
  SUM=SUM+v
print(SUM)

