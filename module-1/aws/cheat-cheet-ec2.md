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

#### Placement Groups

1. **Cluster Placement Group:** Geringe Latenz, aber höheres Ausfallrisiko.
2. **Spread Placement Group:** Hohe Verfügbarkeit durch Verteilung auf unterschiedliche Hardware.
3. **Partition Placement Group:** Für verteilte Anwendungen wie Hadoop, Cassandra.

#### Elastic Network Interface (ENI)

- Virtuelle Netzwerkkarte in einem VPC, ermöglicht Konnektivität zwischen Instanzen und AWS Services.

#### EC2 Hibernate

- Speichert RAM-Zustand auf verschlüsseltem EBS, schnelles Starten der Instanzen.
- Maximale Dauer: 60 Tage, alle Daten im RAM werden auf EBS gespeichert.

---

Diese Cheat Sheet fasst die wichtigsten Punkte zu AWS EC2 zusammen, von Instanztypen und Kaufoptionen bis hin zu Sicherheitsgruppen und Netzwerkkonzepten.
