# Underclock
Underclock en bash p/linux, controla la temperatura del core disminuyendo el clock. Para sistemas con refrigeración deficiente

Para iniciarlo con el sistema operativo:

sudo chmod +x underclock.sh \n
sudo nano /etc/rc.local \n
  sh /var/www/html/underclock.sh  <- incluir esta linea

Agregar un enlace simbólico en el directorio /etc/rc.d/:
ln -s /var/www/html/underclock.sh /etc/rc.d/.
