import time
import sys

eingabe = input("Geben einen Vornamen ein: ")
eingabe_wert = str(eingabe) # str() macht typecasting -> datentyp conversion von zb. int to str

vokale = "AaEeIiOoUu" # <- hier werden die Vokale gespeichert

count = 0 # <- initializieren den wert mit 0

for buchstabe in eingabe_wert:
  time.sleep(2)
  print("buchstabe", buchstabe)
  if buchstabe in vokale:
    count = (count +  1)
    print("neuer count wert: ", count)

"""
  if i in y:
    print("gefunden")
    print("zähler: ", count)
    count += 1
"""

