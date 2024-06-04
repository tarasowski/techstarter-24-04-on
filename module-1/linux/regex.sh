#!/bin/bash

# Metadaten für den script 👇
# Author: <NAME>
# Version: 1.0 (semver)
# Date: 2020-07-12

# Beispieltext
text="apple banana cat dog elephant"

# Ausgabe aller Metazeichen und ihrer Muster

# -E: Dies steht für "Extended Regular Expressions". Mit dieser Option können Sie erweiterte reguläre Ausdrücke verwenden, die zusätzliche Muster und Metazeichen enthalten, die in grundlegenden regulären Ausdrücken nicht verfügbar sind.
# -o: Dies steht für "only-matching". Mit dieser Option gibt grep nur den tatsächlich übereinstimmenden Teil der Zeile aus, nicht die gesamte Zeile.

# Punkt: Einzelnes beliebiges Zeichen
echo "Suche nach Metazeichen '.' (Punkt):"
# Das Metazeichen '.' steht für ein beliebiges einzelnes Zeichen.
# Hier wird nach jedem einzelnen Zeichen im Text gesucht.
echo $text
echo "$text" | grep -Eo "."
echo "--------------------------"

# Punkt: Einzelnes beliebiges Zeichen
echo "Suche nach Metazeichen '.' (Punkt) in Kombination mit einem Buchstaben:"
# Das Metazeichen '.' steht für ein beliebiges einzelnes Zeichen.
# Hier wird nach einem 'a' gefolgt von einem beliebigen Zeichen im Text gesucht.
echo $text
echo "$text" | grep -Eo "a."
echo "--------------------------"


# Stern: Null oder mehr Vorkommen des vorhergehenden Elements
echo "Suche nach Metazeichen '*' (Stern):"
# Das Metazeichen '*' steht für null oder mehr Vorkommen des vorhergehenden Elements.
# Hier wird nach null oder mehr 'a' im Text gesucht.
echo $text
echo "$text" | grep -Eo "a*"
echo "--------------------------"

# Suche nach Metazeichen '*' (Stern):
# Das Metazeichen '*' steht für null oder mehr Vorkommen des vorhergehenden Elements.
# Hier wird nach null oder mehr 'b' im Text gesucht.
echo "Suche nach null oder mehr Vorkommen von 'b':"
echo $text
echo "$text" | grep -Eo "b*"
echo "--------------------------"


# Plus: Ein oder mehr Vorkommen des vorhergehenden Elements
echo "Suche nach Metazeichen '+' (Plus):"
# Das Metazeichen '+' steht für ein oder mehr Vorkommen des vorhergehenden Elements.
# Hier wird nach einem oder mehr 'a' im Text gesucht.
echo $text
echo "$text" | grep -Eo "a+"
echo "--------------------------"


# Fragezeichen: Null oder ein Vorkommen des vorhergehenden Elements
echo "Suche nach Metazeichen '?' (Fragezeichen):"
# Das Metazeichen '?' steht für null oder ein Vorkommen des vorhergehenden Elements.
# Hier wird nach null oder einem 'd' im Text gesucht.
echo $text
echo "$text" | grep -Eo "d?"
echo "--------------------------"


# Hut: Anfang einer Zeile oder Zeichenfolge
echo "Suche nach Metazeichen '^' (Hut):"
# Das Metazeichen '^' steht für den Anfang einer Zeile oder Zeichenfolge.
# Hier wird nach Zeilen, die mit 'a' beginnen, gesucht.
echo $text
echo "$text" | grep -Eo "^a.*"
echo "--------------------------"

# Hut: Anfang einer Zeile oder Zeichenfolge
echo "Suche nach Metazeichen '^' (Hut):"
# Das Metazeichen '^' steht für den Anfang einer Zeile oder Zeichenfolge.
# Hier wird nach Zeilen, die mit 'a' beginnen, gesucht.
echo $text
echo "$text" | grep -Eo "^b.*"
echo "Das wird nicht funktiionieren, da es kein 'b' gibt."
echo "--------------------------"


# Dollarzeichen: Ende einer Zeile oder Zeichenfolge
echo "Suche nach Metazeichen '$' (Dollarzeichen):"
# Das Metazeichen '$' steht für das Ende einer Zeile oder Zeichenfolge.
# Hier wird nach Zeilen, die mit 't' enden, gesucht.
echo $text
echo "$text" | grep -Eo "t$"
# Hier wird nach Zeilen, die mit 'd' enden, gesucht.
echo "--------------------------"


# Eckige Klammern: Definiert eine Zeichenklasse
echo "Suche nach Metazeichen '[]' (Eckige Klammern):"
# Eckige Klammern [] definieren eine Zeichenklasse, aus der ein beliebiges Zeichen ausgewählt wird.
# Hier wird nach 'a' oder 'e' im Text gesucht.
echo $text
echo "$text" | grep -Eo "[ae]"
echo "--------------------------"


# Senkrechter Strich: Logisches ODER
echo "Suche nach Metazeichen '|' (Senkrechter Strich):"
# Das Metazeichen '|' steht für logisches ODER zwischen zwei Mustern.
# Hier wird nach 'ba' oder 'do' im Text gesucht.
echo $text
echo "$text" | grep -Eo "ba|do"
echo "--------------------------"


# Klammern: Definiert eine Gruppe von Zeichen
echo "Suche nach Metazeichen '()' (Klammern):"
# Klammern () definieren eine Gruppe von Zeichen, aus denen mindestens eins ausgewählt wird.
# Hier wird nach 'ap' oder 'do' im Text gesucht.
echo $text
echo "$text" | grep -Eo "(ap|do)"
echo "--------------------------"

# Backslash: Escape-Zeichen
echo "Suche nach Metazeichen '\' (Backslash):"
# Das Metazeichen '\' wird verwendet, um die spezielle Bedeutung eines Zeichens aufzuheben (zu escapen).
# Hier wird nach dem Punkt '.' im Text gesucht.
echo $text
echo "$text" | grep -Eo "\."
echo "--------------------------"

# Suche nach einem Muster, das aus einem Wort besteht, gefolgt von einem Komma und einem Leerzeichen, und dann einem anderen Wort.
echo "Suche nach einem Muster, das aus einem Wort besteht, gefolgt von einem Komma und einem Leerzeichen, und dann einem anderen Wort:"
echo $text
echo "$text" | grep -Eo "\b\w+,\s\w+\b"
echo "--------------------------"

exit 0
