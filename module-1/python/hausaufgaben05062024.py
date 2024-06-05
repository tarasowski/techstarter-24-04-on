#!/usr/bin/env python
# coding: utf-8

# In[5]:


print("Hello techstarter")


# In[2]:


names = ["Ilona", "Kaho", "Marcus"]
print(names)


# In[4]:


for name in names:
    print("Unsere Teilnehmer: ", name)


# In[7]:


# list comperehension = Listenabstraktion

liste = [print("Unsere Teilnhemer: ", name) for name in names]



# In[15]:


liste = []

# start is included
# stop is not included
# von 1 bis 6 ; die 6 wird hier nicht inkludiert

# 👇 imperative
x = []
x.append(1)
x.append(2)
x.append(3)
x.append(4)
x.append(5)

print(x)

# 👇 declarative
for number in range(1, 6): # valide lösung
  liste.append(number)

print(liste)

# 👇 declarative
new_list = list(range(1,6)) # auch eine valide lösung 

print("new_list", new_list)


# In[24]:


# magic string

alter = 30
city = "Stuttgart"
country = "Deutschland"

print("Mein alter ist : ", alter)
print(f"Mein alter ist :  {alter}")
print(f"{alter} << so funktoniert ein magic string")

print(f"Ich bin in {city} in {country} aufgewachsen") # <<< preferred variant to use!!!

print("Ich bin in " + city + " in " + country + " aufgewachsen")


# In[36]:


#prüfen ob 10 größerist als 5
# (10 > 5)
if 20 > 5:
    print("10 ist grosser als 5")

#gebe die überprüfung aus
print("10 ist größer als 50!")

# Lösung #2

# 👇 nur die zahl variable muss angepasst werden wenn sich die aufgabenstellung ändert!!!
zahl1 = 50
zahl2 = 10

# 👇 dieser teil muss nie geändert werden
if zahl1 > zahl2:
    print(f"Die Zahl {zahl1} ist größer als {zahl2}")
else:
    print(f"Die Zahl {zahl1} is nicht größser als {zahl2}")



# In[41]:


liste = []

if len(liste) == 0: # << explizit
    print("die liste ist leer")
else:
    print("die liste ist nicht leer")


# In[42]:


rest = 17%5
# https://realpython.com/python-modulo-operator/
print(f"modulo: {rest}")


# In[43]:


print("hallo" + "welt")


# In[ ]:


{"key": "value"}

