Per utilizzare questo container, è necessario avere:

\- Docker Desktop

\- WSL2 con una distro Ubuntu installata e WSLg attivo su di essa (dovrebbe esserlo di default)

Anzitutto, clonare questa repository in una cartella locale (preferibilmente una cartella utente che non richieda permessi da amministratore).

Per caricare il container:

* **avviare Docker Desktop** (assicurarsi che il Docker Engine sia in esecuzione)
* eseguire lo script "*setup.bat*". E' normale che il terminale che viene aperto resti fermo per un po' di tempo, dovendo elaborare alcuni GB di informazioni. Al termine dell'operazione, il terminale dovrebbe chiudersi da sé, indicando che è possibile avviare il container con "_launch.bat_".

Al termine dell'operazione il container sarà disponibile dalla dashboard di Docker Desktop.

Per interagire con il container, eseguire lo script script "*launch.bat*" (assicurandosi sempre di avere Docker Desktop attivo e l'engine in esecuzione).

Per compilare e visualizzare il codice assembly:

1. **riscv\_compile** <*file*.s> 			(genera *file)*
2. **gem5\_run** gem5\_config.py <*file> <file*.log>	(genera *file.log*)
3. **visualize**

Il comando **visualize** aprirà il visualizzatore della pipeline, dal quale è possibile aprire il *file*.log generato.

La versione di base del file gem5\_config.py è presente nella home (directory "~", su tastiera italiana ottenibile come alt+126): ricordarsi di copiarlo nella directory di lavoro per specificarlo tra i parametri di gem5\_run, o alternativamente di specificare il percorso relativo ~/gem5\_config.py quando lo si utilizza.

L'editor di testo disponibile di default nel container è "nano", ma è possibile installarne altri mediante apt.

Per evitare spreco di risorse ed energia, si raccomanda di interrompere l'esecuzione del docker engine da Docker Desktop quando non lo si utilizza.

Dopo aver avviato il container con launch.bat, al termine dell'utilizzo, prima di chiudere la finestra del terminale, premere la combinazione di tasti Ctrl+D. In questo modo, lo script si occuperà di interrompere automaticamente l'esecuzione del container, evitando che consumi inutilmente risorse dell'host.

