<?php

$path  = '/var/www/php_perf/sample.txt';
$page = file_get_contents($path);
echo $page;
?>
