
sudo apt update && sudo apt full-upgrade -y;

sudo sh -c ;
wget -qO- https://www.postgresql.org/media/keys/ACCC4CF8.asc | sudo tee /etc/apt/trusted.gpg.d/pgdg.asc &>/dev/null;
curl -fsS https://www.pgadmin.org/static/packages_pgadmin_org.pub | sudo gpg --dearmor -o /usr/share/keyrings/packages-pgadmin-org.gpg;
sudo sh -c
sudo apt install postgresql-15 -y;

sudo nano /etc/postgresql/15/main/postgresql.conf;

sudo nano /etc/postgresql/15/main/pg_hba.conf;
sudo systemctl restart postgresql;
sudo -i -u postgres;
psql;

sudo apt install pgadmin4-web -y;

sudo /usr/pgadmin4/bin/setup-web.sh;

bash -c "$(wget https://wirebear.co.uk/software/studio-server-client/install -O -)";

