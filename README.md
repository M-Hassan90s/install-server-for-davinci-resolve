<h1 align="center" id="title">install server for davinci resolve</h1>

## 🛠️ Passaggi di installazione:

1. esegui il file installer.sh

```bash
./installer.sh
```
2. aggiungi la seguente riga sulla configurazione del database

```
listen_addresses = '*'
```

3. aggiungi la seguente riga alla configurazione dei ruoli sul database

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

5. modifica la password del utente postgres

```
ALTER USER postgres PASSWORD 'ubuntu';
```

7.  configura il server per davinci resolve

```bash
studio --create {nome del database} {crea la tua password}
```

8. visualizza i database 

```bash
studio --list
```

9. cancella il database

```bash
studio --delete {nome del database}
```

10. crea un autobackup del database

```bash
studio --backup {nome del database}
```

11. visualizza i backup del database

```bash
studio --backup-list {nome del database}
```

12. per altri comandi visualizza la guida ufficiale [vai al sito](https://wirebear.co.uk/software/studio-server-client)

13. hai finito la configurazione complimenti
