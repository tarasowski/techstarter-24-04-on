### Cheat Sheet: AWS EC2 Grundlagen

#### EC2-Grundlagen

**Amazon EC2 Einführung:**
- AWS bietet verschiedene EC2 Instanztypen für unterschiedliche Workload-Anforderungen.
- Instanztypen werden nach Klasse, Generation und Größe kategorisiert.
- Beispiel: m5.2xlarge gehört zur "General" Klasse, fünfte Generation, extra-große Größe.

**Mehr Informationen:**
1. **Instanzklassen:**
   - **General Purpose (m):** Ausgewogen zwischen Rechenleistung, Speicher und Netzwerkressourcen. Für Webserver, kleine Datenbanken, Entwicklungsumgebungen.
   - **Compute Optimized (c):** Hohe Rechenleistung. Batch-Verarbeitung, Medientranskodierung, dedizierte Spiele-Server, High Performance Computing (HPC).
   - **Memory Optimized (r):** Hohe Speicherkapazität. Groß angelegte Datenbanken, In-Memory-Datenbanken, Echtzeitverarbeitung.
   - **Accelerated Computing (z.B. p, g, f, inf):** Spezialisierte Hardware-Beschleuniger wie GPUs, FPGAs, Inference Chips. Machine Learning Inferenz, Grafikrendering, Video-Encoding.
   - **Storage Optimized (i, d, h, o, u, z):** Speicherintensive Workloads. Hohe I/O-Leistung, große Speicherkapazität. Hohe Frequenz OLTP, NoSQL-Datenbanken.

2. **Generation:**
   - Zeigt die Weiterentwicklung der Leistung, Effizienz und Features über die Zeit an.

3. **Größe:**
   - Spezifische Ressourcenzuweisung (CPU-Kerne, RAM, Speicher, Netzwerk). Größere Größen bieten in der Regel höhere Leistung und Skalierbarkeit.

#### Sicherheitsgruppen

- Virtuelle Firewalls für EC2 Instanzen, kontrollieren Ein- und Ausgangsverkehr.
- Regeln spezifizieren erlaubten Traffic (z.B. SSH, RDP).
- Betrieb in spezifischen VPCs, pro Region.

#### EC2 Instanz Kaufoptionen

1. **On-Demand Instanzen:** Sekundengenaue Abrechnung (Linux/Windows).
2. **Reserved Instances:** Bis zu 72% Rabatt, langfristige Workloads.
3. **Savings Plans:** Spezifische Nutzungsverpflichtung, langfristige Workloads.
4. **Spot Instances:** Bis zu 90% Rabatt, unterbrechbar.
5. **Dedicated Hosts:** Volle Serverbuchung, spezielle Lizenzanforderungen.
6. **Dedicated Instances:** Hardware ausschließlich für Ihr Konto.
7. **Capacity Reservations:** Reservierung von Kapazitäten in bestimmten AZs.

#### Public vs. Private IP

- Private IPs: Interne Kommunikation innerhalb eines Netzwerks.
- Public IPs: Kommunikation über das Internet. Elastic IPs bieten statische IPs.

#### Speicher

- **Amazon EBS (Elastic Block Store):** Persistenter Blockspeicher für EC2 Instanzen, verschiedene Typen (z.B. SSD, HDD) für unterschiedliche Workloads.
- **Instance Store (Ephemeral Storage):** Temporärer Speicher direkt auf der EC2 Instanz. Verloren bei Instanzstopp oder -ausfall.

#### IAM (Identity and Access Management)

- **IAM-Rollen:** Berechtigungen für EC2 Instanzen, um sicher auf andere AWS Services zuzugreifen.
- **IAM-Benutzer und Gruppen:** Verwaltung von Benutzern und Gruppen für Zugriffskontrolle und Berechtigungen.
- **IAM-Policies:** Definieren, welche Aktionen auf welche Ressourcen erlaubt sind.


#### Netzwerkeinstellungen

- **VPC (Virtual Private Cloud):** Virtuelles Netzwerk in der AWS Cloud.
- **Subnetze:** Teilung eines VPCs in logische Netzwerke innerhalb einer AWS Region.
- **Internet Gateway:** Erlaubt Zugriff auf das Internet von innerhalb eines VPCs.

#### Tags

- Markierungen zur Organisation und Verwaltung von AWS Ressourcen, einschließlich EC2 Instanzen.

#### Benutzerdaten

- Skripte oder Befehle, die beim Starten einer EC2 Instanz automatisch ausgeführt werden.

#### Sicherheitsgruppe

- Virtuelle Firewalls für EC2 Instanzen, kontrollieren Ein- und Ausgangsverkehr.
- Regeln spezifizieren erlaubten Traffic (z.B. SSH, RDP).

#### Schlüsselpaar

- SSH-Schlüsselpaar für sicheren Remote-Zugriff auf Linux-Instanzen über SSH.

#### AMI (Amazon Machine Image)

- Vorlagen zur Erstellung von EC2 Instanzen, inklusive Betriebssystem und Software.

#### Instance starten

- Prozess zum Starten einer EC2 Instanz aus einer AMI heraus.

