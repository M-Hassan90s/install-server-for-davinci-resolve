echo "aggiorno la lista dei pacchetti"
sudo apt update && sudo apt full-upgrade -y;
echo "aggiungo il link per installare pgadmin"
curl -fsS https://www.pgadmin.org/static/packages_pgadmin_org.pub | sudo gpg --dearmor -o /usr/share/keyrings/packages-pgadmin-org.gpg;
sudo sh -c 'echo "deb [signed-by=/usr/share/keyrings/packages-pgadmin-org.gpg] https://ftp.postgresql.org/pub/pgadmin/pgadmin4/apt/$(lsb_release -cs) pgadmin4 main" > /etc/apt/sources.list.d/pgadmin4.list && apt update';
echo "installo postgresql"
sudo apt install postgresql-15 -y;
echo "configura il database"
sudo nano /etc/postgresql/15/main/postgresql.conf;
echo "configura i ruoli del database"
sudo nano /etc/postgresql/15/main/pg_hba.conf;
sudo systemctl restart postgresql;
sudo -i -u postgres;
echo "installo pgadmin4-web"
sudo apt install pgadmin4-web -y;
echo "avvio il configuratore di pgadmin4"
sudo /usr/pgadmin4/bin/setup-web.sh;
echo "installo il server"
bash -c "$(wget https://wirebear.co.uk/software/studio-server-client/install -O -)";
