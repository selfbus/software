Die Firmware gibt es in verschiedenen Ausführungen. Am Dateinamen kann man erkennen welche
Features die Firmware unterstützt.
 
Aufbau des Dateinamens:  in8_<size><flags>-<version>.hex
 
size ist 2 für 2TE, 4 für 4TE Gehäuse
 
flags besteht aus mehreren Buchstaben, "_" kann ignoriert werden:
  w - Wertgeber
  z - Zähler
  d - Dimmen
  y - zyklisch Senden

Beispiel: in8_2wz_y6-3.08  (in8 für 2TE in Version 3.08 mit Wertgeber, Zähler, zyklisch Senden)
Es sind nicht immer alle Optionen gesetzt weil nicht alles in den Flash passt.

-------
ENGLISH

The firmware is available in different Versions. The file name shows the features of
the firmware.

Filename format:  in8_<size><flags>-<version>.hex
 
size is 2 for 2TE, 4 for 4TE housing
 
flags consists of multiple letters, "_" can be ignored:
  w - Value sender
  z - Counter
  d - Dimmer
  y - Cyclic sender
 
Example: in8_2wz_y6-3.08  (in8 for 2TE in version 3.08 with value sender, counter, cyclic sending)
Note that not all of options can be set, because the programm is to large.
