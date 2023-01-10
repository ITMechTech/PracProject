#!/usr/bin/python3

NAME=input("Enter your name: ")
GEN=input("Enter Gender(M/F)")
AGE=int(input("Enter your age: "))

if GEN=='M':
  if AGE >= 25:
     print("HEllO",NAME,"you are eligible")
  else:
     print("HEllO",NAME,"you are not eligible")
else
    if AGE >= 21: 
     print("HEllO",NAME,"you are eligible")
    else:
     print("HEllO",NAME,"you are not eligible")
print("End of program")

