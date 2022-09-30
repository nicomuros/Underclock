# Underclock
Underclock en bash p/linux, controla la temperatura del core disminuyendo el clock. Para sistemas con refrigeración deficiente

Para iniciarlo con el sistema operativo:

1- sudo chmod +x underclock.sh
2- sudo nano /etc/rc.local
  2.1- sh /var/www/html/underclock.sh  <- incluir esta linea

Agregar un enlace simbólico en el directorio /etc/rc.d/:
3- ln -s /var/www/html/underclock.sh /etc/rc.d/.
