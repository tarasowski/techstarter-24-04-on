# S3 Grundlagen

Amazon S3 (Simple Storage Service) bietet eine hoch skalierbare, robuste und sichere Speicherlösung, die sich problemlos den Anforderungen von Unternehmen jeder Größe anpassen kann. Hier sind die wichtigsten Konzepte und Funktionen:

### Hauptmerkmale:
- **Unendlich skalierbarer Speicher:** S3 kann nach Bedarf wachsen, um eine unbegrenzte Datenmenge zu speichern.
- **Backup und Speicherung:** Ideal für die Sicherung von Daten und die Speicherung großer Datenmengen.
- **Desaster-Recovery:** Ermöglicht die Wiederherstellung von Daten in verschiedenen Regionen zur Gewährleistung der Datenverfügbarkeit und -haltbarkeit.
- **Data Lakes:** Kann verwendet werden, um Data Lakes für Analytik und Big Data-Verarbeitung zu erstellen.

### Daten Speicherung in S3:
- **Buckets:** Daten in S3 werden in Containern namens Buckets gespeichert. Jeder Bucket-Name muss global eindeutig sein.
- **Objekte:** Dateien, die in S3 gespeichert sind, werden als Objekte bezeichnet. Jedes Objekt besteht aus den Dateidaten und Metadaten.
- **Namenskonventionen:** Bucket-Namen dürfen keine Großbuchstaben oder Unterstriche enthalten.
- **Schlüssel (Keys):** Jedes Objekt in S3 wird durch einen eindeutigen Schlüssel identifiziert, der im Wesentlichen der vollständige Pfad zum Objekt ist. Der Schlüssel ist eine Kombination aus einem Präfix (ähnlich einem Verzeichnispfad) und dem Objektnamen.

### Objektdetails:
- **Objektinhalt:** Die tatsächlichen Daten, die im Objekt gespeichert sind, werden als Objektwert oder Body bezeichnet.
- **Maximale Größe:** Ein einzelnes Objekt kann bis zu 5 TB groß sein. Für Objekte, die größer als 5 GB sind, wird empfohlen, den multipart Upload zu verwenden.
- **Versionierung:** Wenn die Versionierung für einen Bucket aktiviert ist, hat jedes Objekt eine Versions-ID, die es ermöglicht, mehrere Versionen desselben Objekts zu speichern.

### Zugriff und Sicherheit:
- **Vorab signierte URLs:** Wenn Sie einem Benutzer den Zugriff auf ein Objekt ermöglichen möchten, können Sie eine vorab signierte URL generieren. Diese URL enthält temporäre Anmeldeinformationen und ist nur für einen begrenzten Zeitraum gültig, um einen kontrollierten und sicheren Zugriff zu gewährleisten.

### Weitere Überlegungen:
- **Keine Verzeichnisse:** Obwohl die Schlüsselstruktur Verzeichnisse nahelegt, hat S3 keine echte Verzeichnishierarchie. Das Präfix des Schlüssels kann verwendet werden, um Verzeichnisse nur zu simulieren und zur Organisation.
- **Multipart-Upload:** Für große Dateien über 5 GB unterstützt S3 den Multipart-Upload, der es ermöglicht, Teile der Datei parallel hochzuladen und so Effizienz und Widerstandsfähigkeit zu verbessern.

Amazon S3 ist ein leistungsstarkes Werkzeug zur Verwaltung und Speicherung von Daten im großen Maßstab, mit Funktionen, die darauf ausgelegt sind, Datenhaltbarkeit, Verfügbarkeit und Sicherheit zu gewährleisten.

# Amazon S3 Sicherheit

### Arten von Richtlinien:
- **Benutzerbasierte Richtlinien:** Verwaltet über AWS IAM (Identity and Access Management) Richtlinien. Diese Richtlinien definieren Berechtigungen für Benutzer oder Rollen.
- **Ressourcenbasierte Richtlinien:** Enthalten Bucket-Richtlinien und Zugriffssteuerungslisten (ACLs) für Objekte.

# S3 - Hosting einer statischen Website

- Um eine statische Website auf S3 zu hosten, muss der Bucket öffentlich zugänglich sein und die Einstellung "Block all public access" deaktiviert sein.

# S3 - Versionierung

### Funktionsweise der Versionierung:
- **Einstellung auf Bucket-Ebene:** Versionierung ist auf der Bucket-Ebene aktiviert.
- **Versionserstellung:** Das mehrfache Hochladen desselben Schlüssels erstellt neue Versionen (z.B. Version 1, 2, 3).
- **Löschmarker:** Das Löschen einer Datei fügt einen Löschmarker hinzu, anstatt die Datei zu entfernen.
- **Einfaches Rollback:** Ermöglicht das Zurücksetzen auf frühere Versionen einer Datei.
- **Nullversion:** Dateien, die vor der Aktivierung der Versionierung hochgeladen wurden, haben eine Versions-ID von Null.
- **Löschung einer spezifischen Version:** Zum Zurücksetzen wird die spezifische Version gelöscht. Das Löschen einer Version entfernt den Löschmarker, aber das ursprüngliche Objekt bleibt im Bucket.

Amazon S3 bietet robuste Sicherheitsfunktionen, flexible Hosting-Optionen für Websites und erweiterte Versionierungsfähigkeiten zur effektiven Verwaltung und zum Schutz Ihrer Daten.

# S3 Speicherklassen

Amazon S3 bietet verschiedene Speicherklassen, die für unterschiedliche Anwendungsfälle, Zugriffsmuster und Kostenvoraussetzungen konzipiert sind. Hier sind die Hauptspeicherklassen, die in S3 verfügbar sind:


### Storage Classes:

1. **Standard General Purpose:**
   - **Description:** For frequently accessed data.
   - **Features:** Low latency, high throughput, can sustain 2 concurrent facility failures.
   - **Use Cases:** Big data analytics, mobile gaming, content distribution.
   - **Durability:** 99.999999999% (11 nines).
   - **Availability:** 99.99%.

2. **Standard Infrequent Access (IA):**
   - **Description:** For infrequently accessed data that still requires rapid access.
   - **Features:** Lower cost than Standard, but with slightly higher retrieval costs.
   - **Use Cases:** Disaster recovery, backups.
   - **Durability:** 99.999999999% (11 nines).
   - **Availability:** 99.9%.

3. **One-Zone Infrequent Access:**
   - **Description:** High durability within a single Availability Zone.
   - **Features:** Lower cost, but data is lost if the AZ is destroyed.
   - **Use Cases:** Secondary backups of on-premise data, data that can be easily recreated.
   - **Durability:** 99.999999999% (11 nines) in a single AZ.
   - **Availability:** 99.5%.

4. **Glacier Instant Retrieval:**
   - **Description:** For archived data that requires milliseconds retrieval time.
   - **Features:** Great for data accessed once a quarter, minimum storage duration of 90 days.
   - **Use Cases:** Archiving data with occasional access.
   - **Durability:** 99.999999999% (11 nines).

5. **Glacier Flexible Retrieval:**
   - **Description:** For long-term archive with flexible retrieval options.
   - **Features:**
     - Expedited retrieval: 1 to 5 minutes.
     - Standard retrieval: 3 to 5 hours.
     - Bulk retrieval: 5 to 12 hours.
     - Minimum storage duration: 90 days.
   - **Use Cases:** Archiving data with less frequent access needs.
   - **Durability:** 99.999999999% (11 nines).

6. **Glacier Deep Archive:**
   - **Description:** Lowest-cost storage class for archiving data that rarely needs to be accessed.
   - **Features:**
     - Standard retrieval: 12 hours.
     - Bulk retrieval: 48 hours.
     - Minimum storage duration: 180 days.
   - **Use Cases:** Long-term data archiving.
   - **Durability:** 99.999999999% (11 nines).

7. **Intelligent Tiering:**
   - **Description:** Automatically moves objects between different access tiers based on changing access patterns.
   - **Features:** No retrieval charges in S3 Intelligent-Tiering.
     - **Frequent Access Tier:** Default tier for frequently accessed data.
     - **Infrequent Access Tier:** For data not accessed for 30 days.
     - **Archive Instant Access Tier:** For data not accessed for 90 days.
     - **Archive Access Tier:** Optional tier for data not accessed for 90-700+ days.
     - **Deep Archive Access Tier:** Optional tier for data not accessed for 180-700+ days.
   - **Use Cases:** Data with unpredictable access patterns.

### Bewegen von Objekten zwischen Speicherklassen:

- **Lebenszyklusregeln:** Sie können Lebenszyklusregeln festlegen, um Objekte automatisch basierend auf bestimmten Bedingungen zwischen verschiedenen Speicherklassen zu verschieben.
- **Manuelle Übertragung:** Objekte können manuell zwischen Speicherklassen verschoben werden, wenn sie erstellt werden oder über die S3-Lebenszykluskonfiguration.

### Definitionen:

- **Haltbarkeit:** Misst, wie zuverlässig Daten gespeichert werden können, typischerweise mit einer durchschnittlichen Verlustwahrscheinlichkeit eines Objekts von einmal in 10.000 Jahren.
- **Verfügbarkeit:** Misst, wie leicht verfügbar ein Dienst für die Nutzung ist.
