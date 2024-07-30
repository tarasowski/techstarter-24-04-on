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
