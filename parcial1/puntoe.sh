grep MemTotal /proc/meminfo > filtro_basico.txt
sudo dmidecode -t chassis | grep 'Chassis Information' >> filtro_basico.txt
sudo dmidecode -t chassis | grep Manufacturer >> filtro_basico.txt
