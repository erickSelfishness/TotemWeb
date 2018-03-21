Sistema para estación del sueño.

Desarrollado por:
Fernando Wentland (fwentland@devonix.net)

Para más info: http://www.devonix.net

Modificado por:
Felipe Huerta Iturra - Ing. Desarrollador y Diseñador
Erick Carvallo - infrastructura
Para Más info: info@selfishness.cl

Version Actualizada 21-03-2018


Para cambiar a prd modificar archivos de configuracion en

protected/config/configlocal.php


<?php

// ESTO ES PARA TRABAJAR LOCAL, SE DEBE COMENTAR EN PROD. LOCAL


$dbhost = "localhost";
$dbname = "estacion_sueno3";
$dbuser = "root";
$dbpass = "";

$preload = array(
    'log',
    'bootstrap',
    'less', // REMOVE IN PRODUCTION
);



----------------PRODUCCION------------------

<?php
$dbhost = "aalrdwptf8t3mv.cavwsztvupxj.us-east-1.rds.amazonaws.com";
$dbname = "estacion_sueno2";
$dbuser = "root";
$dbpass = "Selftech_123*";

$preload = array(
    'log',
    'bootstrap',
//    'less', // REMOVE IN PRODUCTION
);


Modificado por Felipe Huerta Iturra y Erick Carvallo
