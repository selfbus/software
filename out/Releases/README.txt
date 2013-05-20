Aufbau der Firmware Dateinamen
------------------------------

Aufbau:  <Typ>_<Optionen>-<Version>.hex

* Typ:

  out4 - 4fach Binärausgang
  out8 - 8fach Binärausgang

* Optionen:

  Ein oder mehrere Buchstaben aus:
  h - mit Handbetätigung
  z - mit Zero Detect
  s - für bistabile Relais (SPI)
  i - für den IO Bistabile Relaise
* Beispiel:
  out8_h-3.35.hex ist für den 8fach Binärausgang, mit Handbetätigung, Version 3.35
