# taschenrechner --math-- modulen erstellen
# add - ohne math lösen
# sub - ohne math lösen
# mul - ohne math lösen
# div  - ohen math lösen
# Quadratwurzel
# Potenzierung
import math

num1 = float(input("Bitte gebe die ersten Zahl an: "))
num2 = float(input("Bitte gebe die zweiten Zahl an: "))

operation = input(
    "Bitte gebe die gewünschen Mathoperation an mit +, -, *, /, sqrt, **: ")

if operation == "+":
    ergebnis = (num1 + num2)  # wie kann ich das hier mit math machen???
elif operation == "-":
    ergebnis = (num1 - num2)
elif operation == "/":
    if num2 == 0:
        print("Das geht nicht, weil du durch 0 teilen willst.")
    else:
        ergebnis = (num1 / num2)
elif operation == "*":
    ergebnis = (num1 * num2)
elif operation == "sqrt":
    ergebnis = math.sqrt(num1)
elif operation == "**":
    ergebnis = (num1 ** num2)  # ergebnis = math.pow(num1, num2)

print(num1, num2, operation, ergebnis)
