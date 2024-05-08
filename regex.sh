#!/bin/bash

# Beispieltext
text="apple banana cat dog elephant"

# Ausgabe aller Metazeichen und ihrer Muster

# Punkt: Einzelnes beliebiges Zeichen
echo "Suche nach Metazeichen '.' (Punkt):"
# Das Metazeichen '.' steht für ein beliebiges einzelnes Zeichen.
# Hier wird nach jedem einzelnen Zeichen im Text gesucht.
echo "$text" | grep -Po "."
echo "--------------------------"

# Stern: Null oder mehr Vorkommen des vorhergehenden Elements
echo "Suche nach Metazeichen '*' (Stern):"
# Das Metazeichen '*' steht für null oder mehr Vorkommen des vorhergehenden Elements.
# Hier wird nach null oder mehr 'a' im Text gesucht.
echo "$text" | grep -Po "a*"
echo "--------------------------"

# Plus: Ein oder mehr Vorkommen des vorhergehenden Elements
echo "Suche nach Metazeichen '+' (Plus):"
# Das Metazeichen '+' steht für ein oder mehr Vorkommen des vorhergehenden Elements.
# Hier wird nach einem oder mehr 'a' im Text gesucht.
echo "$text" | grep -Po "a+"
echo "--------------------------"

# Fragezeichen: Null oder ein Vorkommen des vorhergehenden Elements
echo "Suche nach Metazeichen '?' (Fragezeichen):"
# Das Metazeichen '?' steht für null oder ein Vorkommen des vorhergehenden Elements.
# Hier wird nach null oder einem 'd' im Text gesucht.
echo "$text" | grep -Po "d?"
echo "--------------------------"

# Hut: Anfang einer Zeile oder Zeichenfolge
echo "Suche nach Metazeichen '^' (Hut):"
# Das Metazeichen '^' steht für den Anfang einer Zeile oder Zeichenfolge.
# Hier wird nach Zeilen, die mit 'a' beginnen, gesucht.
echo "$text" | grep -Po "^a.*"
echo "--------------------------"

# Dollarzeichen: Ende einer Zeile oder Zeichenfolge
echo "Suche nach Metazeichen '$' (Dollarzeichen):"
# Das Metazeichen '$' steht für das Ende einer Zeile oder Zeichenfolge.
# Hier wird nach Zeilen, die mit 't' enden, gesucht.
echo "$text" | grep -Po "t$"
echo "--------------------------"

# Eckige Klammern: Definiert eine Zeichenklasse
echo "Suche nach Metazeichen '[]' (Eckige Klammern):"
# Eckige Klammern [] definieren eine Zeichenklasse, aus der ein beliebiges Zeichen ausgewählt wird.
# Hier wird nach 'a' oder 'e' im Text gesucht.
echo "$text" | grep -Po "[ae]"
echo "--------------------------"

# Senkrechter Strich: Logisches ODER
echo "Suche nach Metazeichen '|' (Senkrechter Strich):"
# Das Metazeichen '|' steht für logisches ODER zwischen zwei Mustern.
# Hier wird nach 'ba' oder 'do' im Text gesucht.
echo "$text" | grep -Po "ba|do"
echo "--------------------------"

# Klammern: Definiert eine Gruppe von Zeichen
echo "Suche nach Metazeichen '()' (Klammern):"
# Klammern () definieren eine Gruppe von Zeichen, aus denen mindestens eins ausgewählt wird.
# Hier wird nach 'ap' oder 'do' im Text gesucht.
echo "$text" | grep -Po "(ap|do)"
echo "--------------------------"

# Backslash: Escape-Zeichen
echo "Suche nach Metazeichen '\' (Backslash):"
# Das Metazeichen '\' wird verwendet, um die spezielle Bedeutung eines Zeichens aufzuheben (zu escapen).
# Hier wird nach dem Punkt '.' im Text gesucht.
echo "$text" | grep -Po "\."
echo "--------------------------"

