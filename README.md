<h1 align="center" id="title">install server for davinci resolve</h1>

## 🛠️ Passaggi di installazione:

1. scarica ed esegui il file installer.sh

```bash
git clone https://github.com/ArduinoDenis/install-server-for-davinci-resolve.git && cd install-server-for-davinci-resolve/ && chmod 700 installer.sh && ./installer.sh
```
2. aggiungi la seguente riga sulla configurazione del database postgresql-15

```
listen_addresses = '*'
```

3. aggiungi le seguenti righe alla configurazione dei ruoli sul database pg_hba.conf

- prima riga "# Database administrative login by Unix domain socket"

```
local   all             admin                                   md5
```
- seconda riga alla fine della colonna: "# replication privilege"
```
host    all             all             0.0.0.0/0               trust
```

4. crea il ruolo admin con i privilegi - modifica la password di default admin

```
create role admin with login superuser createdb createrole inherit replication connection limit -1 password 'admin';
```

5. modifica la password del utente postgres - modifica la password di default ubuntu

```
ALTER USER postgres PASSWORD 'ubuntu';
```
6. esci dal database

```bash
exit
```
7. esci dal utente e aspetta che finisca l'installazione

```bash
exit
```
8. ad un certo punto chiede di inserire un indirizzo email e mettete la vostra email per entrare nel database.

9. create una password e confermala riscrivendola alla prossima domanda.

10. dopo poco tempo ti chiede se vuoi creare la configurazione di pgadmin4 e digita y e premi invio.

11. digita y e poi invio per riavviare pgadmin4.

12. se tutto è andato a buon fine ti aprirà la pagina studio server dove ti chiedera per quanti gioni vuoi avere un backup del database quindi inserisci il numero e premi invio.

13. premi invio se non vuoi ricevere pubblicità sulla tua mail.

14. una volta finito la configurazione ti mostrerà questo avviso "Congratulations, the installation is now complete!".

15.  a questo punto configura il server per davinci resolve

```bash
sudo studio --create {nome del database} {crea la tua password}
```

16. visualizza i database 

```bash
sudo studio --list
```

17. cancella il database

```bash
sudo studio --delete {nome del database}
```

18. crea un autobackup del database

```bash
sudo studio --backup {nome del database}
```

19. visualizza i backup del database

```bash
sudo studio --backup-list {nome del database}
```

20. per altri comandi visualizza la guida ufficiale [vai al sito](https://wirebear.co.uk/software/studio-server-client)

21. NB: http:// ip-del-tuo-server/pgadmin4/login
username: la mail che hai inserito prima
password: la tua password di postgres default ubuntu

22.  hai finito la configurazione complimenti
