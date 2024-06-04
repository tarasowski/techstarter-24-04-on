Eine Analogie aus dem realen Leben für die Unterteilung von Netzwerken in Subnetze könnte das Konzept einer Stadt sein, die in verschiedene Viertel oder Bezirke unterteilt ist.

Stell dir vor, eine Stadt hat eine große Bevölkerung und viele verschiedene Aktivitäten finden gleichzeitig statt: Menschen gehen zur Arbeit, besuchen Schulen, gehen einkaufen oder treffen sich in Parks. Damit alles reibungslos funktioniert, ist es sinnvoll, die Stadt in verschiedene Viertel oder Bezirke aufzuteilen, die jeweils für bestimmte Aktivitäten oder Zwecke bestimmt sind.

- **Wohnviertel**: Hier befinden sich die Wohngebiete, in denen die Menschen leben.
- **Geschäftsviertel**: Dies ist der Bereich, in dem sich die Geschäfte, Büros und Unternehmen befinden.
- **Schulviertel**: Hier befinden sich Schulen, Universitäten und andere Bildungseinrichtungen.
- **Freizeitviertel**: Dieser Bereich enthält Parks, Restaurants, Kinos und andere Freizeiteinrichtungen.

Durch die Unterteilung der Stadt in verschiedene Viertel kann jeder Bereich spezifischen Bedürfnissen und Aktivitäten gerecht werden. Die Menschen können sich leichter orientieren, der Verkehr kann besser organisiert werden, und die Sicherheit und Verwaltung der Stadt kann effizienter erfolgen.

Ähnlich wie bei der Unterteilung eines Netzwerks in Subnetze erleichtert die Aufteilung der Stadt in verschiedene Viertel die Organisation, das Management und die Sicherheit der Stadt und trägt dazu bei, dass alles reibungslos funktioniert.


Wozu überhaupt Subnetting?

Die Unterteilung von Netzwerken in Subnetze hat mehrere wichtige Anwendungen und Vorteile:

1. **Effiziente Nutzung von IP-Adressen**: Durch die Unterteilung eines großen Netzwerks in kleinere Subnetze können IP-Adressen effizienter zugewiesen werden. Dies ist besonders wichtig in großen Netzwerken, in denen die Anzahl der verfügbaren IP-Adressen begrenzt ist.

2. **Verbesserte Netzwerkorganisation**: Die Unterteilung eines Netzwerks in Subnetze ermöglicht eine klarere und strukturiertere Organisation des Netzwerks. Dies erleichtert das Management, die Fehlerbehebung und das Troubleshooting.

3. **Verbesserte Sicherheit**: Subnetze ermöglichen die Implementierung von Sicherheitsmaßnahmen auf Netzwerkebene, indem der Datenverkehr zwischen Subnetzen eingeschränkt und kontrolliert wird. Dies trägt zur Verbesserung der Netzwerksicherheit bei, indem potenziell schädlicher oder unerwünschter Datenverkehr isoliert wird.

4. **Effizientes Routing**: Die Unterteilung eines Netzwerks in Subnetze erleichtert das Routing von Datenverkehr innerhalb des Netzwerks. Router können effizienter arbeiten, da sie genau wissen, wie sie den Datenverkehr zwischen verschiedenen Subnetzen weiterleiten sollen.

5. **Skalierbarkeit**: Subnetze ermöglichen eine bessere Skalierbarkeit von Netzwerken, da sie es erleichtern, neue Geräte und Subnetze hinzuzufügen, ohne die gesamte Netzwerkstruktur neu zu gestalten.

Insgesamt ermöglicht die Unterteilung von Netzwerken in Subnetze eine flexiblere, effizientere und sicherere Netzwerkarchitektur, die den Anforderungen von Organisationen und Unternehmen besser gerecht wird.


Subnetting:

Subnetting (Unterteilung eines Netzwerks) ist eine Methode, um ein großes Netzwerk in kleinere, überschaubarere Netzwerke, sogenannte Subnetze, aufzuteilen.

IP Adresse
Eine IP-Adresse (Internet Protocol Address) ist eine eindeutige Adresse, die einem Gerät in einem Netzwerk zugewiesen wird. Wir konzentrieren uns hier auf IPv4, das aus vier Zahlen besteht, die jeweils von 0 bis 255 reichen (z.B. 192.168.1.1).

Eine IPv4-Adresse sieht so aus: 192.168.1.1. Sie besteht aus vier Oktetten, die jeweils 8 Bits umfassen (insgesamt 32 Bits)

11000000.10101000.00000001.00000001

Netzwerkmaske (Subnet Mask)
Eine Netzwerkmaske bestimmt, welcher Teil einer IP-Adresse das Netzwerk und welcher Teil das spezifische Gerät (Host) im Netzwerk identifiziert. Eine typische Netzwerkmaske sieht so aus: 255.255.255.0.

In der Netzwerkmaske steht jede "1" für den Netzwerkanteil, und jede "0" steht für den Hostanteil.

Klassenbasierte Netzwerke
Früher wurden IP-Adressen in Klassen unterteilt (A, B, C), und jede Klasse hatte eine feste Netzwerkmaske:

Klasse A: Netzwerkmaske 255.0.0.0 (Netzwerk/Host/Host/Host)
Klasse B: Netzwerkmaske 255.255.0.0 (Netzwerk/Netzwerk/Host/Host)
Klasse C: Netzwerkmaske 255.255.255.0 (Netzwerk/Netzwerk/Netzwerk/Host)

Also ist 255.255.255.0 in binär:
11111111.11111111.11111111.00000000
8+8+8 = 24 (netzwerk)
8 bits die für den host stehen

Bedeutung
Jedes "11111111" repräsentiert ein Netzwerk-Bit, und jedes "00000000" repräsentiert ein Host-Bit. Da die Netzwerkmaske 255.255.255.0 lautet, bedeutet dies, dass die ersten drei Oktetten (24 Bits) den Netzwerkanteil und das letzte Oktett (8 Bits) den Hostanteil identifizieren.

192.168.1.1/24
192.168.1.1 - 192.168.1.49 - Range 1 (Marketing Subnetz) < 1 Machine mit IP 192.168.1.5
192.168.1.50 - 192.168.1.99 - Range 2 (Vertrieb Subnetz) < 1 Maschine mit IP 192.168.1.51
Angenommen, du hast eine Netzwerkmaske von 255.255.255.0 (/24), was bedeutet, dass die ersten 24 Bits den Netzwerkanteil identifizieren und die restlichen 8 Bits den Hostanteil.

Die Schreibweise "/24" in Bezug auf eine Netzwerkmaske gibt an, wie viele Bits der Netzwerkanteil in der IPv4-Adresse umfasst. Es ist eine alternative und kompaktere Methode, die Länge der Netzwerkmaske anzugeben. Insgesamt gibt es 32 Bits in einer Adresse, also 8 Bits ist der Hostanteil.

Die Netzwerkmaske 255.255.255.0 (/24) bedeutet, dass die ersten 24 Bits der IP-Adresse den Netzwerkanteil definieren und die restlichen 8 Bits den Hostanteil. Für das Subnetting bedeutet das, dass die IP-Adressen innerhalb dieses Subnets im Bereich von 192.168.1.0 bis 192.168.1.255 liegen.

IP: 192.168.1.0
Subnetmaske: 255.255.255.0 (/24) = 32 Bits - 24 = 2^8 = 256 verfügbaren IP-Addresses 
Range: 192.168.1.0 - 192.168.1.255 < hier können wir Maschinen registrieren mit irgendeiner IP zwischen 0 und 255 (bei AWS sind 4 Ips immer reserviert für bestimmte Zwecke so haben wir nur noch 252 zur Verfügung) es können in diesem Netz nur 252 Machine mit eindeutiger IP registriert werden.

Um das Netzwerk in Subnetze aufzuteilen, kannst du die Netzwerkmaske ändern und dadurch die Anzahl der verfügbaren Hostadressen pro Subnetz steuern.

Angenommen, du möchtest das Netzwerk in vier gleich große Subnetze aufteilen. Du könntest die Netzwerkmaske ändern, um mehr Bits für den Netzwerkanteil zu verwenden. Eine Möglichkeit wäre die Verwendung einer Maske von 255.255.255.192 (/26), was bedeutet, dass die ersten 26 Bits den Netzwerkanteil identifizieren.

255.255.255.192 <<< Subnetzmaske
binary 👇
11111111.11111111.11111111.11000000 (/26) 32 - 26 = 6 > 2^6 = 64 Adressen

Mit dieser neuen Netzwerkmaske könntest du vier Subnetze erstellen, von denen jedes eine Größe von 64 Adressen hat (2^6 = 64). Die möglichen Subnetze wären:

Subnetz 1: Netzwerkadresse von x.x.x.0 bis x.x.x.63 + 64 <<< 100 Machine
Subnetz 2: Netzwerkadresse von x.x.x.64 bis x.x.x.127 + 64
Subnetz 3: Netzwerkadresse von x.x.x.128 bis x.x.x.191 + 64
Subnetz 4: Netzwerkadresse von x.x.x.192 bis x.x.x.255 + 64

(/25) = 32 - 25 = 7 = 2^7 = als Range ??? 128
Subnetz 1: Netzwerkadresse von x.x.x.0 bis x.x.x.127 <<< 100 Maschine würden hier reinpassen, weil wir 128 IPs haben
....

[CIDR Calculator](https://www.ipaddressguide.com/cidr)

Durch Anpassen der Netzwerkmaske kannst du also die Größe und Anzahl der Subnetze in einem Netzwerk steuern, ohne die genauen IP-Adressen zu kennen. Dies ist besonders nützlich, wenn du die Netzwerkstruktur planst oder Änderungen vornehmen möchtest.

Unsichtbare Trennung / Formel:
Stellen wir uns vor, du arbeitest in einem großen Bürogebäude mit vielen Abteilungen und Mitarbeitern. Jeder Mitarbeiter hat einen eindeutigen Arbeitsplatz, der durch eine Nummer oder Adresse identifiziert wird.

Die Netzwerkmaske ist wie eine unsichtbare Trennwand im Bürogebäude, die die verschiedenen Abteilungen und Büros voneinander trennt. Sie hilft den Mitarbeitern und dem Büroverwalter zu wissen, welcher Teil des Gebäudes zu welcher Abteilung gehört.

Zum Beispiel könnte die Netzwerkmaske sagen: "Die Büros auf den Etagen 1 und 2 gehören zur Vertriebsabteilung, während die Büros auf den Etagen 3 und 4 der Marketingabteilung gehören."

Die Netzwerkmaske ist wie eine Formel, die angibt, wie die IP-Adresse in Netzwerk- und Hostanteil aufgeteilt wird. Sie ist entscheidend für die Berechnung von Subnetzen.


Beispiel:

Schritt 1: Netzwerkmaske in Binär umwandeln
Die Netzwerkmaske 255.255.255.192 (/26) wird zuerst in ihre Binärform umgewandelt. Die Dezimalzahlen 255 und 192 entsprechen in Binär:

255: 11111111
192: 11000000
Die Netzwerkmaske besteht aus 26 Einsen gefolgt von Nullen:


11111111.11111111.11111111.11000000

Schritt 2: Bestimmung des Netzwerkanteils
Da die Netzwerkmaske 26 Einsen hat, gehören die ersten 26 Bits dem Netzwerkanteil und die restlichen 6 Bits dem Hostanteil.

Schritt 3: Berechnung der Subnetzgröße
Die Anzahl der Hostbits bestimmt die Anzahl der verfügbaren Hostadressen pro Subnetz. Mit 6 Hostbits können insgesamt 64 (2^6) Hostadressen pro Subnetz erstellt werden.

Schritt 4: Unterteilung des Netzwerks
Basierend auf der neuen Netzwerkmaske können wir das Netzwerk in Subnetze unterteilen:

Subnetz 1: Netzwerkadresse von x.x.x.0 bis x.x.x.63
Subnetz 2: Netzwerkadresse von x.x.x.64 bis x.x.x.127
Subnetz 3: Netzwerkadresse von x.x.x.128 bis x.x.x.191
Subnetz 4: Netzwerkadresse von x.x.x.192 bis x.x.x.255

Jedes Subnetz hat eine Größe von 64 Adressen (von 0 bis 63, 64 bis 127, usw.), wobei die erste Adresse für das Netzwerk und die letzte für die Broadcast-Adresse verwendet wird.

Zusammenfassung
Die Netzwerkmaske 255.255.255.192 (/26) definiert, dass die ersten 26 Bits den Netzwerkanteil und die restlichen 6 Bits den Hostanteil identifizieren. Basierend darauf können wir das Netzwerk in Subnetze mit jeweils 64 Hostadressen aufteilen.
