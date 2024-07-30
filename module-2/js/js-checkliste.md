## JavaScript Checkliste

### 1. **Strings**

Strings sind eine der grundlegendsten Datentypen in JavaScript und es gibt viele eingebaute Methoden, um mit ihnen zu arbeiten. Hier sind die 10 am häufigsten verwendeten String-Methoden:

1. **`length`**
   - **Beschreibung**: Gibt die Länge des Strings zurück.
   - **Beispiel**: 
     ```javascript
     const str = "Hallo Welt";
     console.log(str.length); // 10
     ```

2. **`toUpperCase()`**
   - **Beschreibung**: Wandelt den gesamten String in Großbuchstaben um.
   - **Beispiel**:
     ```javascript
     const str = "Hallo Welt";
     console.log(str.toUpperCase()); // "HALLO WELT"
     ```

3. **`toLowerCase()`**
   - **Beschreibung**: Wandelt den gesamten String in Kleinbuchstaben um.
   - **Beispiel**:
     ```javascript
     const str = "Hallo Welt";
     console.log(str.toLowerCase()); // "hallo welt"
     ```

4. **`trim()`**
   - **Beschreibung**: Entfernt Leerzeichen am Anfang und Ende des Strings.
   - **Beispiel**:
     ```javascript
     const str = "   Hallo Welt   ";
     console.log(str.trim()); // "Hallo Welt"
     ```

5. **`includes(substring)`**
   - **Beschreibung**: Überprüft, ob der String eine bestimmte Teilzeichenfolge enthält.
   - **Beispiel**:
     ```javascript
     const str = "Hallo Welt";
     console.log(str.includes("Welt")); // true
     ```

6. **`indexOf(substring)`**
   - **Beschreibung**: Gibt den Index der ersten Vorkommen der angegebenen Teilzeichenfolge zurück oder `-1`, wenn nicht gefunden.
   - **Beispiel**:
     ```javascript
     const str = "Hallo Welt";
     console.log(str.indexOf("Welt")); // 6
     ```

7. **`slice(start, end)`**
   - **Beschreibung**: Extrahiert einen Teil des Strings und gibt ihn als neuen String zurück.
   - **Beispiel**:
     ```javascript
     const str = "Hallo Welt";
     console.log(str.slice(0, 5)); // "Hallo"
     ```

8. **`substring(start, end)`**
   - **Beschreibung**: Ähnlich wie `slice()`, extrahiert einen Teil des Strings zwischen zwei Indizes.
   - **Beispiel**:
     ```javascript
     const str = "Hallo Welt";
     console.log(str.substring(6, 10)); // "Welt"
     ```

9. **`replace(searchValue, newValue)`**
   - **Beschreibung**: Ersetzt einen Teil des Strings durch einen neuen Wert.
   - **Beispiel**:
     ```javascript
     const str = "Hallo Welt";
     console.log(str.replace("Welt", "JavaScript")); // "Hallo JavaScript"
     ```

10. **`split(separator)`**
    - **Beschreibung**: Teilt einen String in ein Array von Teilstrings anhand eines Trennzeichens.
    - **Beispiel**:
      ```javascript
      const str = "Hallo,Welt";
      console.log(str.split(",")); // ["Hallo", "Welt"]
      ```

### 2. **Numbers**

JavaScript unterstützt eine Vielzahl von Methoden, um mit Zahlen zu arbeiten. Hier sind die 10 nützlichsten:

1. **`parseInt(string)`**
   - **Beschreibung**: Wandelt eine Zeichenkette in eine ganze Zahl um.
   - **Beispiel**:
     ```javascript
     const num = parseInt("42");
     console.log(num); // 42
     ```

2. **`parseFloat(string)`**
   - **Beschreibung**: Wandelt eine Zeichenkette in eine Fließkommazahl um.
   - **Beispiel**:
     ```javascript
     const num = parseFloat("3.14");
     console.log(num); // 3.14
     ```

3. **`toFixed(digits)`**
   - **Beschreibung**: Rundet eine Zahl auf eine feste Anzahl von Dezimalstellen.
   - **Beispiel**:
     ```javascript
     const num = 3.14159;
     console.log(num.toFixed(2)); // "3.14"
     ```

4. **`toString(base)`**
   - **Beschreibung**: Wandelt eine Zahl in eine Zeichenkette um, optional mit einer bestimmten Basis.
   - **Beispiel**:
     ```javascript
     const num = 255;
     console.log(num.toString(16)); // "ff"
     ```

5. **`Math.round(number)`**
   - **Beschreibung**: Rundet eine Zahl auf die nächste ganze Zahl.
   - **Beispiel**:
     ```javascript
     console.log(Math.round(4.7)); // 5
     ```

6. **`Math.floor(number)`**
   - **Beschreibung**: Rundet eine Zahl ab.
   - **Beispiel**:
     ```javascript
     console.log(Math.floor(4.7)); // 4
     ```

7. **`Math.ceil(number)`**
   - **Beschreibung**: Rundet eine Zahl auf.
   - **Beispiel**:
     ```javascript
     console.log(Math.ceil(4.2)); // 5
     ```

8. **`Math.max(...numbers)`**
   - **Beschreibung**: Gibt die größte Zahl aus einer Liste von Zahlen zurück.
   - **Beispiel**:
     ```javascript
     console.log(Math.max(10, 20, 30)); // 30
     ```

9. **`Math.min(...numbers)`**
   - **Beschreibung**: Gibt die kleinste Zahl aus einer Liste von Zahlen zurück.
   - **Beispiel**:
     ```javascript
     console.log(Math.min(10, 20, 30)); // 10
     ```

10. **`Math.random()`**
    - **Beschreibung**: Gibt eine pseudozufällige Zahl zwischen 0 (inklusive) und 1 (exklusive) zurück.
    - **Beispiel**:
      ```javascript
      console.log(Math.random()); // z.B. 0.678945
      ```

### 3. **Arrays**

Arrays sind in JavaScript äußerst vielseitig und es gibt viele Methoden, um sie zu manipulieren. Hier sind die 10 wichtigsten:

1. **`push(element)`**
   - **Beschreibung**: Fügt ein oder mehrere Elemente ans Ende eines Arrays an.
   - **Beispiel**:
     ```javascript
     const arr = [1, 2, 3];
     arr.push(4);
     console.log(arr); // [1, 2, 3, 4]
     ```

2. **`pop()`**
   - **Beschreibung**: Entfernt das letzte Element aus einem Array und gibt es zurück.
   - **Beispiel**:
     ```javascript
     const arr = [1, 2, 3];
     arr.pop();
     console.log(arr); // [1, 2]
     ```

3. **`shift()`**
   - **Beschreibung**: Entfernt das erste Element aus einem Array und gibt es zurück.
   - **Beispiel**:
     ```javascript
     const arr = [1, 2, 3];
     arr.shift();
     console.log(arr); // [2, 3]
     ```

4. **`unshift(element)`**
   - **Beschreibung**: Fügt ein oder mehrere Elemente an den Anfang eines Arrays an.
   - **Beispiel**:
     ```javascript
     const arr = [2, 3];
     arr.unshift(1);
     console.log(arr); // [1, 2, 3]
     ```

5. **`indexOf(element)`**
   - **Beschreibung**: Gibt den ersten Index des angegebenen Elements zurück oder `-1`, wenn es nicht gefunden wird.
   - **Beispiel**:
     ```javascript
     const arr = [1, 2, 3];
     console.log(arr.indexOf(2)); // 1
     ```

6. **`splice(start, deleteCount, ...items)`**
   - **Beschreibung**: Fügt Elemente in ein Array ein, entfernt sie oder ersetzt sie.
   - **Beispiel**:
     ```javascript
     const arr = [1, 2, 3, 4];
     arr.splice(1, 2, "a", "b");
     console.log(arr); // [1, "a", "b", 4]
     ```

7. **`slice(start, end)`**
   - **Beschreibung**: Gibt einen Teil des Arrays als neues Array zurück.
   - **Beispiel**:
     ```javascript
     const arr = [1, 2, 3, 4];
     console.log(arr.slice(1, 3)); // [2, 3]
     ```

8. **`forEach(callback)`**
   - **Beschreibung**: Führt eine Funktion für jedes Element im Array aus.
   - **Beispiel**:
     ```javascript
     const arr = [1, 2, 3];
     arr.forEach(num =>

 console.log(num * 2)); // 2, 4, 6
     ```

9. **`map(callback)`**
   - **Beschreibung**: Erstellt ein neues Array mit den Ergebnissen der Funktionsausführung auf jedem Element des Arrays.
   - **Beispiel**:
     ```javascript
     const arr = [1, 2, 3];
     const doubled = arr.map(num => num * 2);
     console.log(doubled); // [2, 4, 6]
     ```

10. **`filter(callback)`**
    - **Beschreibung**: Erstellt ein neues Array mit allen Elementen, die den Test der bereitgestellten Funktion bestehen.
    - **Beispiel**:
      ```javascript
      const arr = [1, 2, 3, 4];
      const even = arr.filter(num => num % 2 === 0);
      console.log(even); // [2, 4]
      ```

### 4. **Objekte**

Objekte sind die Kernelemente von JavaScript. Hier sind 10 nützliche Methoden und Techniken, um mit Objekten zu arbeiten:

1. **Objekte erstellen**
   - **Beschreibung**: Erstellen eines einfachen Objekts.
   - **Beispiel**:
     ```javascript
     const person = {
       name: "Max",
       age: 30
     };
     ```

2. **Zugriff auf Eigenschaften**
   - **Beschreibung**: Zugriff auf Objekteigenschaften mit Punkt- oder Klammernotation.
   - **Beispiel**:
     ```javascript
     console.log(person.name); // "Max"
     console.log(person["age"]); // 30
     ```

3. **Eigenschaften hinzufügen oder ändern**
   - **Beschreibung**: Hinzufügen oder Ändern von Eigenschaften eines Objekts.
   - **Beispiel**:
     ```javascript
     person.job = "Entwickler";
     person["age"] = 31;
     console.log(person); // { name: "Max", age: 31, job: "Entwickler" }
     ```

4. **`delete`**
   - **Beschreibung**: Entfernt eine Eigenschaft aus einem Objekt.
   - **Beispiel**:
     ```javascript
     delete person.age;
     console.log(person); // { name: "Max", job: "Entwickler" }
     ```

5. **`Object.keys(obj)`**
   - **Beschreibung**: Gibt ein Array mit allen Schlüssel (Eigenschaften) eines Objekts zurück.
   - **Beispiel**:
     ```javascript
     const keys = Object.keys(person);
     console.log(keys); // ["name", "job"]
     ```

6. **`Object.values(obj)`**
   - **Beschreibung**: Gibt ein Array mit allen Werten eines Objekts zurück.
   - **Beispiel**:
     ```javascript
     const values = Object.values(person);
     console.log(values); // ["Max", "Entwickler"]
     ```

7. **`Object.entries(obj)`**
   - **Beschreibung**: Gibt ein Array von [key, value] Paaren eines Objekts zurück.
   - **Beispiel**:
     ```javascript
     const entries = Object.entries(person);
     console.log(entries); // [["name", "Max"], ["job", "Entwickler"]]
     ```

8. **`hasOwnProperty(prop)`**
   - **Beschreibung**: Überprüft, ob ein Objekt eine bestimmte Eigenschaft besitzt.
   - **Beispiel**:
     ```javascript
     console.log(person.hasOwnProperty("name")); // true
     console.log(person.hasOwnProperty("age")); // false
     ```

9. **`Object.assign(target, ...sources)`**
   - **Beschreibung**: Kopiert Werte aller Eigenschaften von einem oder mehreren Quellobjekten auf ein Zielobjekt.
   - **Beispiel**:
     ```javascript
     const additionalInfo = { age: 31, city: "Berlin" };
     const updatedPerson = Object.assign({}, person, additionalInfo);
     console.log(updatedPerson); // { name: "Max", job: "Entwickler", age: 31, city: "Berlin" }
     ```

10. **`Object.freeze(obj)`**
    - **Beschreibung**: Friert ein Objekt ein, sodass keine neuen Eigenschaften hinzugefügt oder vorhandene entfernt oder geändert werden können.
    - **Beispiel**:
      ```javascript
      const frozenPerson = Object.freeze(person);
      frozenPerson.age = 32; // Fehler, keine Änderung möglich
      console.log(frozenPerson); // { name: "Max", job: "Entwickler" }
      ```

### 5. **Schleifen (Loops)**

Schleifen sind essenziell, um durch Datenstrukturen zu iterieren und wiederholende Aufgaben durchzuführen. Hier sind die 10 wichtigsten Schleifen und Iterationsmethoden:

1. **`for` Schleife**
   - **Beschreibung**: Eine klassische Schleife mit Anfang, Bedingung und Inkrementierung.
   - **Beispiel**:
     ```javascript
     for (let i = 0; i < 5; i++) {
       console.log(i);
     }
     ```

2. **`while` Schleife**
   - **Beschreibung**: Führt den Schleifenblock aus, solange die Bedingung wahr ist.
   - **Beispiel**:
     ```javascript
     let i = 0;
     while (i < 5) {
       console.log(i);
       i++;
     }
     ```

3. **`do...while` Schleife**
   - **Beschreibung**: Führt den Schleifenblock mindestens einmal aus und dann, solange die Bedingung wahr ist.
   - **Beispiel**:
     ```javascript
     let i = 0;
     do {
       console.log(i);
       i++;
     } while (i < 5);
     ```

4. **`for...of` Schleife**
   - **Beschreibung**: Iteriert über iterable Objekte wie Arrays, Strings usw.
   - **Beispiel**:
     ```javascript
     const arr = [1, 2, 3];
     for (const num of arr) {
       console.log(num);
     }
     ```

5. **`for...in` Schleife**
   - **Beschreibung**: Iteriert über alle aufzählbaren Eigenschaften eines Objekts.
   - **Beispiel**:
     ```javascript
     const obj = { name: "Max", age: 30 };
     for (const key in obj) {
       console.log(`${key}: ${obj[key]}`);
     }
     ```

6. **`Array.forEach(callback)`**
   - **Beschreibung**: Führt eine Funktion für jedes Array-Element aus.
   - **Beispiel**:
     ```javascript
     const arr = [1, 2, 3];
     arr.forEach(num => console.log(num * 2)); // 2, 4, 6
     ```

7. **`Array.map(callback)`**
   - **Beschreibung**: Erstellt ein neues Array mit den Ergebnissen der Funktion für jedes Element.
   - **Beispiel**:
     ```javascript
     const arr = [1, 2, 3];
     const doubled = arr.map(num => num * 2);
     console.log(doubled); // [2, 4, 6]
     ```

8. **`Array.filter(callback)`**
   - **Beschreibung**: Erstellt ein neues Array mit allen Elementen, die den Test bestehen.
   - **Beispiel**:
     ```javascript
     const arr = [1, 2, 3, 4];
     const even = arr.filter(num => num % 2 === 0);
     console.log(even); // [2, 4]
     ```

9. **`Array.reduce(callback, initialValue)`**
   - **Beschreibung**: Reduziert das Array auf einen einzigen Wert, indem es eine Funktion für jedes Element ausführt.
   - **Beispiel**:
     ```javascript
     const arr = [1, 2, 3];
     const sum = arr.reduce((accumulator, num) => accumulator + num, 0);
     console.log(sum); // 6
     ```

10. **`Array.some(callback)` / `Array.every(callback)`**
    - **Beschreibung**: Überprüft, ob einige oder alle Elemente den Test bestehen.
    - **Beispiel**:
      ```javascript
      const arr = [1, 2, 3, 4];
      console.log(arr.some(num => num > 3)); // true
      console.log(arr.every(num => num > 0)); // true
      ```
