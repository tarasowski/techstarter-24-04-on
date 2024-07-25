Hier ist ein CSS-Spickzettel mit den am häufigsten verwendeten CSS-Eigenschaften und -Selektoren auf Deutsch:

## CSS Grundlagen

### 1. **Selektoren**

Selektoren werden verwendet, um HTML-Elemente zu stylen.

- **Element-Selektor:** Wendet Stile auf alle Elemente eines bestimmten Typs an.

  ```css
  p {
    color: blue;
  }
  ```

- **ID-Selektor:** Wendet Stile auf ein einzelnes Element mit einer bestimmten ID an.

  ```css
  #header {
    background-color: lightgrey;
  }
  ```

- **Klassen-Selektor:** Wendet Stile auf alle Elemente mit einer bestimmten Klasse an.

  ```css
  .button {
    border-radius: 5px;
  }
  ```

- **Attribut-Selektor:** Wendet Stile auf Elemente mit einem bestimmten Attribut an.

  ```css
  input[type="text"] {
    border: 1px solid #ccc;
  }
  ```

- **Universal-Selektor:** Wendet Stile auf alle Elemente an.

  ```css
  * {
    box-sizing: border-box;
  }
  ```

### 2. **Kombinatoren**

Kombinatoren werden verwendet, um die Beziehung zwischen Selektoren zu bestimmen.

- **Nachkommenschafts-Kombinator (Leerstelle):** Wendet Stile auf Elemente an, die Nachkommen eines bestimmten Elements sind.

  ```css
  div p {
    font-size: 16px;
  }
  ```

- **Kind-Kombinator (`>`):** Wendet Stile auf Elemente an, die direkte Kinder eines bestimmten Elements sind.

  ```css
  ul > li {
    list-style-type: none;
  }
  ```

- **Adjazenz-Kombinator (`+`):** Wendet Stile auf ein Element an, das unmittelbar nach einem anderen Element folgt.

  ```css
  h1 + p {
    margin-top: 10px;
  }
  ```

- **Geschwister-Kombinator (`~`):** Wendet Stile auf alle Geschwister eines Elements an, die nach diesem Element folgen.

  ```css
  h1 ~ p {
    color: red;
  }
  ```

## Häufig verwendete CSS-Eigenschaften

### 3. **Farben**

- **Textfarbe:** Setzt die Textfarbe eines Elements.

  ```css
  color: #333;
  ```

- **Hintergrundfarbe:** Setzt die Hintergrundfarbe eines Elements.

  ```css
  background-color: #f4f4f4;
  ```

### 4. **Text**

- **Schriftart:** Legt die Schriftart eines Elements fest.

  ```css
  font-family: Arial, sans-serif;
  ```

- **Schriftgröße:** Legt die Schriftgröße eines Elements fest.

  ```css
  font-size: 16px;
  ```

- **Schriftstil:** Setzt den Schriftstil eines Elements (normal, kursiv, etc.).

  ```css
  font-style: italic;
  ```

- **Schriftgewicht:** Setzt das Gewicht oder die Dicke der Schrift.

  ```css
  font-weight: bold;
  ```

- **Textausrichtung:** Richtet den Text horizontal aus (links, rechts, zentriert).

  ```css
  text-align: center;
  ```

- **Textdekoration:** Setzt oder entfernt Textdekorationen wie Unterstreichungen.

  ```css
  text-decoration: none;
  ```

### 5. **Layout**

- **Breite:** Legt die Breite eines Elements fest.

  ```css
  width: 100%;
  ```

- **Höhe:** Legt die Höhe eines Elements fest.

  ```css
  height: 200px;
  ```

- **Rand (Margin):** Setzt den äußeren Abstand eines Elements.

  ```css
  margin: 10px;
  ```

- **Innenabstand (Padding):** Setzt den inneren Abstand eines Elements.

  ```css
  padding: 15px;
  ```

- **Rand (Border):** Setzt die Rahmenlinie eines Elements.

  ```css
  border: 1px solid #ccc;
  ```

- **Box-Sizing:** Bestimmt, wie die Gesamtbreite und -höhe eines Elements berechnet wird.

  ```css
  box-sizing: border-box;
  ```

### 6. **Hintergrund**

- **Hintergrundbild:** Setzt ein Bild als Hintergrund.

  ```css
  background-image: url('image.jpg');
  ```

- **Hintergrundwiederholung:** Bestimmt, ob und wie ein Hintergrundbild wiederholt wird.

  ```css
  background-repeat: no-repeat;
  ```

- **Hintergrundposition:** Bestimmt die Startposition eines Hintergrundbildes.

  ```css
  background-position: center;
  ```

### 7. **Positionierung**

- **Position:** Bestimmt die Positionierungsart eines Elements (statisch, relativ, absolut, fest, sticky).

  ```css
  position: absolute;
  ```

- **Z-Index:** Bestimmt die Stapelreihenfolge eines Elements.

  ```css
  z-index: 10;
  ```

- **Oben, Unten, Links, Rechts:** Bestimmt den Versatz eines Elements basierend auf seinem positionierten Vorfahren.

  ```css
  top: 10px;
  left: 20px;
  ```

### 8. **Flexbox**

Flexbox ist eine leistungsstarke Methode, um Layouts zu gestalten.

- **Anzeige (Display):** Legt den flexiblen Container fest.

  ```css
  display: flex;
  ```

- **Ausrichtung der Elemente (justify-content):** Bestimmt die horizontale Ausrichtung der Elemente.

  ```css
  justify-content: center;
  ```

- **Ausrichtung der Elemente (align-items):** Bestimmt die vertikale Ausrichtung der Elemente.

  ```css
  align-items: center;
  ```

- **Flex-Richtung (flex-direction):** Bestimmt die Ausrichtung der Elemente innerhalb des Containers.

  ```css
  flex-direction: row;
  ```

### 9. **Grid Layout**

Das CSS Grid Layout ermöglicht die Erstellung komplexer Layouts.

- **Anzeige (Display):** Legt den Gitter-Container fest.

  ```css
  display: grid;
  ```

- **Grid-Spalten (grid-template-columns):** Bestimmt die Anzahl und Größe der Spalten.

  ```css
  grid-template-columns: 1fr 2fr;
  ```

- **Grid-Reihen (grid-template-rows):** Bestimmt die Anzahl und Größe der Reihen.

  ```css
  grid-template-rows: 100px auto;
  ```

- **Grid-Bereich (grid-area):** Bestimmt den Platz eines Elements im Grid.

  ```css
  grid-area: header;
  ```

### 10. **Responsive Design**

- **Media Queries:** Ermöglichen unterschiedliche Stile für verschiedene Gerätegrößen.

  ```css
  @media (max-width: 768px) {
    body {
      font-size: 14px;
    }
  }
  ```

- **Einheiten:** Verwenden Sie relative Einheiten wie `%`, `em`, oder `rem`, um Layouts anpassbar zu machen.

  ```css
  font-size: 1rem;
  width: 50%;
  ```

### 11. **Transitionen und Animationen**

- **Transitionen:** Erlauben sanfte Übergänge zwischen CSS-Eigenschaften.

  ```css
  transition: all 0.3s ease;
  ```

- **Animationen:** Definieren Keyframes und animieren Elemente.

  ```css
  @keyframes slideIn {
    from {
      transform: translateX(-100%);
    }
    to {
      transform: translateX(0);
    }
  }

  .box {
    animation: slideIn 1s forwards;
  }
  ```

### 12. **Pseudoklassen und -elemente**

- **Pseudoklassen:** Stylen Elemente basierend auf ihrem Status oder Position.

  ```css
  a:hover {
    color: red;
  }

  li:nth-child(2) {
    font-weight: bold;
  }
  ```

- **Pseudo-Elemente:** Stylen bestimmte Teile eines Elements.

  ```css
  p::first-line {
    font-style: italic;
  }

  div::after {
    content: '✔';
    color: green;
  }
  ```

## Beispiel eines vollständigen CSS-Stils

Hier ist ein Beispiel für einen vollständigen CSS-Stil, der einige der oben genannten Eigenschaften verwendet:

```css
/* Grundlegende Stile */
body {
  font-family: Arial, sans-serif;
  line-height: 1.6;
  background-color: #f4f4f9;
  color: #333;
  margin: 0;
  padding: 0;
}

h1 {
  color: #444;
  text-align: center;
}

p {
  margin-bottom: 10px;
}

/* Layout mit Flexbox */
.container {
  display: flex;
  justify-content: space-between;
  align-items: center;
  padding: 20px;
}

/* Responsive Design */
@media (max-width: 600px) {
  .container {
    flex-direction: column;
  }

  h1 {
    font-size: 20px;
  }
}

/* Button-St
