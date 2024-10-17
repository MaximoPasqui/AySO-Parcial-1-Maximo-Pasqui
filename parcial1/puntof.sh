echo "Mi IP Publica es: $(curl -s ifconfig.me)" > filtro_avanzado.txt
echo "Mi Usuario es: $(grep $(whoami) /etc/passwd | cut -d':' -f1)" >> filtro_avanzado.txt
echo "El Hash de mi Usuario es: $(sudo grep $(whoami) /etc/shadow | cut -d':' -f2)" >> filtro_avanzado.txt
