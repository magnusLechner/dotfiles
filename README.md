# dotfiles

Zum Zeitersparnis, einer leichteren Wiederverwendung, sowie zur Sicherung der Einstellungen, werden in diesem Repository regelmäßig Änderungen an Konfigurationsdateien für Programme, die ich verwende und deren Konfiguration nicht-trivial ist, gespeichert.

## Limitierungen

- Um eine komplexe und aufwandreiche (teils sogar unmögliche) Konfliktauflösung von Änderungen an Dateien zu vermeiden, wird davon ausgegangen, dass nie Änderungen vom Remote Repository, sondern nur vom lokalen Repository eingereicht werden.
- Als Folge des vorausgegangen Punktes bedeutet das, dass das Script momentan nur auf einem Rechner ausgeführt werden darf.

## VIM

Als Plugin-Manager wird ```vim-plug``` eingesetzt.

Viele auskommentierte Plugins und Zeilen sind dadurch bedingt, dass ```vim``` vielleicht in Zukunft als ```rust-lang``` Editor verwendet wird. Sollte sich das nicht Bewahrheiten, dann wird die ```.vimrc``` zeitnah bereinigt.

## TMUX

Als Plugin-Manager wird ```tpm``` eingesetzt.

- kleinere Remaps (u.a. ```<prefix>``` von ```Ctrl+b``` auf ```Ctrl+a```)
- Einsatz des Plugins ```tmux-resurrect```
