#Die Glückskeks-Botschaft:
#Schreibe ein Bash-Skript, das eine zufällige Glückskeks-Botschaft aus einer vordefinierten Liste ausgibt, wenn es ausgeführt wird.

# Christian's Gruppe
#!/bin/bash
# an array with ten elements
array=(
    "Ein Lächeln ist die schönste Sprache der Welt."
    "Glaube an dich selbst, und alles ist möglich."
    "Der Weg zum Erfolg beginnt mit dem ersten Schritt."
    "Mutig zu sein bedeutet nicht, keine Angst zu haben, sondern Angst zu überwinden."
    "Die größten Abenteuer beginnen mit einem einzigen Gedanken."
    "Ein offenes Herz öffnet Türen zu unendlichen Möglichkeiten."
    "Das Geheimnis des Glücks liegt im Genießen des Augenblicks."
    "Kleine Dinge können große Freude bringen."
    "Ein freundliches Wort kann den Tag erhellen."
    "Träume groß und wage es, sie Wirklichkeit werden zu lassen."
)
echo ${array[ $(( $RANDOM % ${#array[@]} )) ]}
#echo ${#array[@]}

# Dimi's Gruppe
echo $(shuf -n 1 "./fortunes.txt")

# Christian's v2
#!/bin/bash
array=(
    "Ein Lächeln ist die schönste Sprache der Welt."
    "Glaube an dich selbst, und alles ist möglich."
    "Der Weg zum Erfolg beginnt mit dem ersten Schritt."
    "Mutig zu sein bedeutet nicht, keine Angst zu haben."
    "Die größten Abenteuer beginnen mit"
)

random_index=$(( $RANDOM % ${#array[@]} ))

echo "this is my random index: $random_index"

echo ${array[random_index]}

# Ilona's Gruppe
#!/bin/bash
# Array mit Glückskeksnachrichten
GLUECKSKEKSE=(
"Heute wirst du eine interessante Person treffen."
"Du wirst eine angenehme Überraschung erleben."
"Ein Lächeln ist die schönste Sprache der Welt."
"Glaube an Wunder, Liebe und Glück.")

echo "GLUECKSKEKSE: $GLUECKSKEKSE"

# Anzahl der Glückskekse im Array
ANZAHL_GLUECKSKEKSE=${#GLUECKSKEKSE[@]}

echo "ANZAHL: $ANZAHL_GLUECKSKEKSE"

# Zufällige Auswahl einer Glückskeksnachricht
ZUFALLSINDEX=$((RANDOM % ANZAHL_GLUECKSKEKSE))

echo "Index: $ZUFALLSINDEX"

GLUECKSKEKS="${GLUECKSKEKSE[$ZUFALLSINDEX]}"

echo $GLUECKSKEKS

