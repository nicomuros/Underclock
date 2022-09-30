# Underclock
Underclock en bash p/linux, controla la temperatura del core disminuyendo el clock. Para sistemas con refrigeración deficiente <br />

Para iniciarlo con el sistema operativo: <br />

1- sudo chmod +x underclock.sh \n <br />
2- sudo nano /etc/rc.local \n <br />
  2.1- sh /var/www/html/underclock.sh  <- incluir esta linea <br />
 <br />
3- Agregar un enlace simbólico en el directorio /etc/rc.d/: <br />
3.1- ln -s /var/www/html/underclock.sh /etc/rc.d/.
