1. **Länge eines Strings:** Schreibe ein Programm, das die Länge eines vom Benutzer eingegebenen Strings ausgibt.

2. **Groß- und Kleinschreibung umkehren:** Schreibe ein Programm, das den vom Benutzer eingegebenen String in Großbuchstaben in Kleinbuchstaben und umgekehrt umwandelt.

3. **Vokale zählen:** Schreibe ein Programm, das zählt, wie viele Vokale (A, E, I, O, U) in einem vom Benutzer eingegebenen String enthalten sind.
   
4. **String umdrehen:** Schreibe ein Programm, das einen vom Benutzer eingegebenen String umdreht.
   
5. **Teile einen String auf:** Schreibe ein Programm, das einen vom Benutzer eingegebenen String an einem bestimmten Zeichen aufteilt und die Teile ausgibt.

```py
# Teile einen String auf: 
# Schreibe ein Programm, das einen vom Benutzer eingegebenen String 
# an einem bestimmten Zeichen aufteilt 
# und die Teile ausgibt

"""
eingabe = input("Gebe String ein: ")
# muss aufgeteil werden an einer stelle ,
# gebe die teile aus
print("das ist meine eingabe: ", eingabe)

# das trennzeichen kann in spli() gesetzt werden, hier komma
aufgeteile_eingabe = eingabe.split(",")

print("augeteilte eingabe: ", aufgeteile_eingabe)
```
7. **String entfernen:** Schreibe ein Programm, das einen vom Benutzer eingegebenen String und ein bestimmtes Zeichen erhält. Das Programm soll den String ohne das angegebene Zeichen ausgeben.

```py
# String entfernen: Schreibe ein Programm, das einen vom Benutzer eingegebenen String
# und ein bestimmtes Zeichen erhält. 
# Das Programm soll den String ohne das angegebene Zeichen ausgeben.

eingabe = input("Gebe String ein: ")
buchstabe = "f"

print("das ist meine eingabe: ", eingabe)

# # 2 jetzt muss nach einem zeichen gesucht werden
x = eingabe.strip("f")

print("das ist ein test", x)
```
   
9. **Prüfen auf Palindrom:** Schreibe ein Programm, das prüft, ob ein vom Benutzer eingegebener String ein Palindrom ist (d.h. ob er vorwärts und rückwärts gelesen dasselbe ergibt).
   
10. **Ersetze Teile eines Strings:** Schreibe ein Programm, das einen vom Benutzer eingegebenen String erhält und ein bestimmtes Teilwort in diesem String durch ein anderes Teilwort ersetzt.
   
11. **Prüfen auf Substring:** Schreibe ein Programm, das prüft, ob ein vom Benutzer eingegebener String einen bestimmten Substring enthält.
   
12. **String formatieren:** Schreibe ein Programm, das einen vom Benutzer eingegebenen Namen und Alter erhält und diese Informationen in einem Satz ausgibt.
