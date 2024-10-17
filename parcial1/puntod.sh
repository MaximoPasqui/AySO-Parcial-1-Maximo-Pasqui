mkdir -p Estructura_asimetrica/{correo,clientes}

for i in {1..50}; do
        touch Estructura_asimetrica/correo/cartas$i
        touch Estructura_asimetrica/clientes/cartas$i
done

for i in {1..10}; do
        touch Estructura_asimetrica/correo/carteros$i
done

tree Estructura_asimetrica
