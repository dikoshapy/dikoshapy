sudo apt update
sudo apt-get install apache2 -y
sudo systemctl enable apache2

sudo mkdir /var/www/dianaweb/
cd /var/www/dianaweb/
nano index.html

<< 'MULTILINE-COMMENT'
paste it
<html>
<head>
  <title> Diana Koshtura </title>
</head>
<body>
  <p> Diana Koshtura </p>
</body>
</html>
MULTILINE-COMMENT

sudo nano [dianaweb]
cd /etc/apache2/sites-available/
sudo cp 000-default.conf dianaweb.conf
sudo nano dianaweb.conf
sudo a2ensite dianaweb.conf
service apache2 reload
