Per utilizzare questo container, è necessario avere:

\- Docker Desktop

\- WSL2 con una distro Ubuntu installata e WSLg attivo (dovrebbe esserlo di default)



Per caricare il container, avviare Docker Desktop (assicurarsi che il Docker Engine sia in esecuzione) ed eseguire lo script "*setup.bat*", al termine dell'operazione il container sarà disponibile dalla dashboard di Docker Desktop.



Per interagire con il container, eseguire il comando "*docker exec -it gem5\_polito bash*" (per comodità, disponibile anche come script "*launch.bat*").



Per compilare e visualizzare il codice assembly:



1. **riscv\_compile** <*file*.s> 			(genera *file)*
2. **gem5\_run** gem5\_config.py <*file> <file*.log>	(genera *file.log*)
3. **visualize**



Il comando **visualize** aprirà il visualizzatore della pipeline, dal quale è possibile aprire il *file*.log generato.



La versione di base del file gem5\_config.py è presente nella home (directory "~", su tastiera italiana ottenibile come alt+126): ricordarsi di copiarlo nella directory di lavoro per specificarlo tra i parametri di gem5\_run, o alternativamente di specificare il percorso relativo ~/gem5\_config.py quando lo si utilizza.



L'editor di testo disponibile di default nel container è "nano", ma è possibile installarne altri mediante apt.



Per evitare spreco di risorse ed energia, si raccomanda di interrompere l'esecuzione del docker engine da Docker Desktop quando non lo si utilizza.



Dopo aver avviato il container con launch.bat, al termine dell'utilizzo, prima di chiudere la finestra del terminale, premere la combinazione di tasti Ctrl+D. In questo modo, lo script si occuperà di interrompere automaticamente l'esecuzione del container, evitando che consumi inutilmente risorse dell'host.

