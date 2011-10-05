<?php

// uncomment this line if you must temporarily take down your site for maintenance
// require '.maintenance.php';

$params = array();

// absolute filesystem path to this web root
$params['wwwDir'] = __DIR__;

// absolute filesystem path to the application root
$params['appDir'] = realpath(__DIR__ . '/../app');

// absolute filesystem path to the application log
$params['logDir'] = realpath(__DIR__ . '/../log');

// pro navigation addon debugBaru
define( 'APP_DIR', $params['appDir'] );

// load bootstrap file
require $params['appDir'] . '/bootstrap.php';
