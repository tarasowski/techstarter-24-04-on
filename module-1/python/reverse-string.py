# der benutzer muss was eingeben ✅
# die eingabe muss umgedreht werden 

eingabe = input("Gebe was ein:")
# wie bekomme ich den datentyp aus eingabe???
#print("das ist der typ: ", type(eingabe))
# die umwandlung mit str() brauchen wir nicht
#print("das ist die eingabe ", eingabe)

# wir wandeln die str eingabe in eine liste um
# Marcus

# lösung #1 👇 declarative way of doing thing
reversed_eingabe = eingabe[::-1]
print("reversed eingabe: ", reversed_eingabe)


# lösung #2 👇 imperative way of doing thing
print("meine eingabe: ", eingabe)

list_from_string = list(eingabe)
print("es wird eine liste erstellt: ", list_from_string)

list_from_string.reverse()
print("die buchstaben werden reversed", list_from_string)

joined_list = str().join(list_from_string)
print("die buchstaben werden zu einem string zusammengesetzt: ", joined_list)
