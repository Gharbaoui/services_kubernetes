<?php
declare(strict_types=1);

$cfg['blowfish_secret'] = ''; /* YOU MUST FILL IN THIS FOR COOKIE AUTH! */

$i = 0;


$i++;
/* Authentication type */
$cfg['Servers'][$i]['auth_type'] = 'cookie';
/* Server parameters */
$cfg['Servers'][$i]['host'] = "mysql-svc";
$cfg['Servers'][$i]['compress'] = false;
$cfg['Servers'][$i]['port'] = "8888";
$cfg['Servers'][$i]['AllowNoPassword'] = true;
