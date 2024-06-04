import time

brands = ["Mercedes", "Porsche", "BMW", "VW", "Opel"]
empty_list = []
empty_list2 = list("10", "10")
print(empty_list)
print(empty_list2)
# for das keywords reservier von python
# mark ist die variable die temporär ist, nimmt immer einen neuen wert beim durchlauf
# brands ist halt hier die liste s. oben 
for marke in brands:
  print(marke + "!!!")
  print("2")
  
"""
for name in ["Marcus", "Kaho", "Ilona"]:
  print("hier ist der name: ", name)
"""  
  
names = ["Marcus", "Kaho", "Ilona"] # array / list
satz = "Hallo hier sind die Namen: Marcus, Kaho, Ilona"
length = len(names)
length_satz = len(satz)

#print(length)
#print(length_satz)

# script im terminal erstellen 
# z.B. program.py
# die daten hier in program.py einfügen
# im terminal python3 program.py laufen lassen


eigegebenes_passwort = " 123456 "
stripped_passwort = eigegebenes_passwort.strip()

if stripped_passwort == "123456":
  print("ja, du kommst hier rein")
else:
  print("nein, du kommst hier nicht rein")

x = "Hallo!"
my_name = "dimi"
print(
  x[0], # H
  x[-1], # !
  x[1:6], # allo!
  x[1:3],
  my_name.capitalize()
  )
  
quote = "As soon as you trust yourself, you will know how to live."
zahlen = [1,2,3,4,5,6]
# zahlen.reverse()

print(
  # string in eine liste umgewandelt
  quote.split(" "),
  "\n",
  quote.find("you"),
  "\n",
  quote[11:25],
  "\n",
  quote.count("you"),
  "\n",
  zahlen
  )


# Data types such as decimal, integer, and string are primitive data types. You can assign primitive data types to ports in any transformation. Complex data type. A transformation data type that represents multiple data values in a single column position.

# primitive datentypen
1 # int
1.5 # float
"string" # string
"dimi"
my_name = "dimi"

print(
  my_name[0],
  my_name.upper(),
  my_name.lower()
)

print(
  "wert1",
  "wert2",
  "wert3"
  )


# complexe datentypen
[1,2,3,4,5,6] # liste
zahlen = [1,2,3,4,5,6]
for zahl in zahlen:
  print(zahl * 2)
  
{"key": "value", "key": "value"} # dict

# jeder datentyp kann anders
# manipuliert werden / verändert

# + macht addition bei integer
sum = 1 + 1 
print("sum: ", sum)

# + macht concatenation (verkettung)
name = "Dimi" + "Tarasowski"
print("name :", name)
print(name.upper())

name = " Dimi " # string
jahr = 2022 # < int
b = True # or False

print(5 + 5) # math operations
print(5 / 5)
print(5 * 5)

# funktion len()
print( len(name) )

# methode .strip()
print( name.strip() )

#name = "Marcus"
#name = "Marius"


if name == "Dimi":
  print("du kommst hier rein!")
else:
  print("du kommt hier nicht rein")
  

# Boolean entweder True or False
is_positiv = (5 > 0) # Ausdruck
print(is_positiv)
return_false = (5 < 0) # Ausdruck
print(return_false)
  
