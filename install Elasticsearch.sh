# Create service user account
sudo adduser es 
sudo adduser es sudo
su -l es

# Download archive
sudo wget https://artifacts.elastic.co/downloads/elasticsearch/elasticsearch-8.10.0-linux-x86_64.tar.gz
sudo wget https://artifacts.elastic.co/downloads/elasticsearch/elasticsearch-8.10.0-linux-x86_64.tar.gz.sha512
sudo shasum -a 512 -c elasticsearch-8.10.0-linux-x86_64.tar.gz.sha512 
sudo tar -xzf elasticsearch-8.10.0-linux-x86_64.tar.gz

# Gain permission for es user
sudo chown -R es elasticsearch-8.10.0

#Start elasic search
cd elasticsearch-8.10.0
bin/elasticsearch

# Resetting elastic user's password
bin/elasticsearch-reset-password -u elastic
