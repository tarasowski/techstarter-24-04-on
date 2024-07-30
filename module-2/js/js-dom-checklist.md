### Checkliste für HTML und JavaScript

#### 1. **HTML-Elemente mit IDs versehen**
   - **Button**
     ```html
     <button id="myButton">Click me</button>
     ```
   - **Input**
     ```html
     <input type="text" id="myInput" value="Hello World">
     ```
   - **Paragraph (p)**
     ```html
     <p id="myParagraph">This is a paragraph.</p>
     ```
   - **Unordered List (ul) mit Listenelementen (li)**
     ```html
     <ul id="myList">
       <li>Item 1</li>
       <li>Item 2</li>
       <li>Item 3</li>
     </ul>
     ```

#### 2. **Elemente mit `getElementById` in JavaScript selektieren**
   - **Button**
     ```javascript
     let button = document.getElementById("myButton");
     ```
   - **Input**
     ```javascript
     let input = document.getElementById("myInput");
     ```
   - **Paragraph (p)**
     ```javascript
     let paragraph = document.getElementById("myParagraph");
     ```
   - **Unordered List (ul)**
     ```javascript
     let list = document.getElementById("myList");
     ```

#### 3. **Inhalte auslesen oder manipulieren**

   - **Button**
     - **Auslesen der Button-Beschriftung**
       ```javascript
       let buttonText = button.textContent; // "Click me"
       ```
     - **Ändern der Button-Beschriftung**
       ```javascript
       button.textContent = "New Label";
       ```

   - **Input**
     - **Auslesen des Input-Werts**
       ```javascript
       let inputValue = input.value; // "Hello World"
       ```
     - **Ändern des Input-Werts**
       ```javascript
       input.value = "New Value";
       ```

   - **Paragraph (p)**
     - **Auslesen des Paragraph-Inhalts**
       ```javascript
       let paragraphText = paragraph.textContent; // "This is a paragraph."
       ```
     - **Ändern des Paragraph-Inhalts**
       ```javascript
       paragraph.textContent = "New paragraph text.";
       ```

   - **Unordered List (ul)**
     - **Hinzufügen eines neuen Listenelements**
       ```javascript
       let newListItem = document.createElement("li");
       newListItem.textContent = "New Item";
       list.appendChild(newListItem);
       ```
     - **Hinzufügen eines Listenelements mit einem bestimmten Wert**
       ```javascript
       function addListItem(value) {
         let newListItem = document.createElement("li");
         newListItem.textContent = value;
         list.appendChild(newListItem);
       }

       // Beispielaufruf
       addListItem("Another Item");
       ```
     - **Einfügen eines Listenelements am Anfang der Liste**
       ```javascript
       let newFirstListItem = document.createElement("li");
       newFirstListItem.textContent = "First Item";
       list.insertBefore(newFirstListItem, list.firstChild);
       ```
     - **Einfügen eines Listenelements an einer bestimmten Position**
       ```javascript
       function insertListItemAt(index, value) {
         let newListItem = document.createElement("li");
         newListItem.textContent = value;
         let referenceItem = list.children[index];
         list.insertBefore(newListItem, referenceItem);
       }

       // Beispielaufruf
       insertListItemAt(1, "Inserted Item");
       ```

#### 4. **Beispiele für Event-Handling**

   - **Button-Klick-Ereignis**
     ```javascript
     button.addEventListener("click", function() {
       alert("Button was clicked!");
     });
     ```

   - **Input-Wert-Änderung**
     ```javascript
     input.addEventListener("input", function() {
       console.log("Input value changed to: " + input.value);
     });
     ```

### HTML-Code mit Button zum Absenden des Formulars

```html
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Formular Beispiel</title>
    <style>
        /* Einfache Stile für das Layout */
        body {
            font-family: Arial, sans-serif;
            margin: 20px;
        }
        form {
            margin-bottom: 20px;
        }
        #formResults {
            margin-top: 20px;
            border: 1px solid #ddd;
            padding: 10px;
        }
    </style>
</head>
<body>
    <h1>Formular Beispiel</h1>
    <form id="myForm">
        <label for="name">Name:</label>
        <input type="text" id="name" name="name" required><br><br>

        <label for="email">Email:</label>
        <input type="email" id="email" name="email" required><br><br>

        <label for="age">Alter:</label>
        <input type="number" id="age" name="age" min="0" required><br><br>

        <button type="button" id="submitButton">Absenden</button>
    </form>

    <div id="formResults"></div>

    <script>
        // Funktion zum Auslesen und Anzeigen der Formularwerte
        function handleFormSubmit() {
            // Lese die Werte der Formulareingaben aus
            let name = document.getElementById("name").value;
            let email = document.getElementById("email").value;
            let age = document.getElementById("age").value;

            // Zeige die Werte im Ergebnis-Div an
            document.getElementById("formResults").innerHTML = `
                <h2>Formular Ergebnisse:</h2>
                <p>Name: ${name}</p>
                <p>Email: ${email}</p>
                <p>Alter: ${age}</p>
            `;
        }

        // Füge einen Event-Listener für den Button hinzu
        document.getElementById("submitButton").addEventListener("click", function() {
            // Rufe die Funktion zum Verarbeiten des Formulars auf
            handleFormSubmit();
        });
    </script>
</body>
</html>
```

### Erklärung

1. **HTML-Struktur:**
   - Der `input type="submit"` wurde durch einen `button`-Tag ersetzt. Der Button hat die ID `submitButton`.
   - Die Formularfelder bleiben unverändert.

2. **JavaScript:**
   - Die Funktion `handleFormSubmit` ist weiterhin definiert, um die Formularwerte auszulesen und anzuzeigen.
   - Der Event-Listener ist auf den Button (`submitButton`) angewendet. Wenn der Button geklickt wird, wird die Funktion `handleFormSubmit` aufgerufen, um die Formularverarbeitung durchzuführen.
