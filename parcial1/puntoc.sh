#!/bin/bash

sudo groupadd grupoprogramadores
sudo groupadd grupotester
sudo groupadd grupoanalistas
sudo groupadd grupodisenadores

sudo useradd -m -s /bin/bash programadores
echo "programadores:programadores" | sudo chpasswd

sudo useradd -m -s /bin/bash tester
echo "tester:tester" | sudo chpasswd

sudo useradd -m -s /bin/bash analistas
echo "analistas:analistas" | sudo chpasswd

sudo useradd -m -s /bin/bash disenadores
echo "disenadores:disenadores" | sudo chpasswd

sudo usermod -aG grupoprogramadores programadores
sudo usermod -aG grupotester tester
sudo usermod -aG grupoanalistas analistas
sudo usermod -aG grupodisenadores disenadores

sudo chown programadores:grupoprogramadores Examenes-UTN/alumno_1/
sudo chmod 750 Examenes-UTN/alumno_1/

sudo chown tester:grupotester Examenes-UTN/alumno_2/
sudo chmod 760 Examenes-UTN/alumno_2/

sudo chown analistas:grupoanalistas Examenes-UTN/alumno_3/
sudo chmod 700 Examenes-UTN/alumno_3/

sudo chown disenadores:grupodisenadores Examenes-UTN/profesores/
sudo chmod 775 Examenes-UTN/profesores/

sudo -u programadores bash -c "whoami > Examenes-UTN/alumno_1/validar.txt"
sudo -u tester bash -c "whoami > Examenes-UTN/alumno_2/validar.txt"
sudo -u analistas bash -c "whoami > Examenes-UTN/alumno_3/validar.txt"
sudo -u disenadores bash -c "whoami > Examenes-UTN/profesores/validar.txt"
