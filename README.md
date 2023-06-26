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

3. aggiungi la seguente riga alla configurazione dei ruoli sul database pg_hba.conf

```
local   all             admin                                   md5
```

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
7. esci dal utente

```bash
exit
```

8.  configura il server per davinci resolve

```bash
studio --create {nome del database} {crea la tua password}
```

9. visualizza i database 

```bash
studio --list
```

10. cancella il database

```bash
studio --delete {nome del database}
```

11. crea un autobackup del database

```bash
studio --backup {nome del database}
```

12. visualizza i backup del database

```bash
studio --backup-list {nome del database}
```

13. per altri comandi visualizza la guida ufficiale [vai al sito](https://wirebear.co.uk/software/studio-server-client)

14. NB: http:// ip-del-tuo-server/pgadmin4/login
username: la mail che hai inserito prima
password: la tua password di postgres default ubuntu

15.  hai finito la configurazione complimenti
