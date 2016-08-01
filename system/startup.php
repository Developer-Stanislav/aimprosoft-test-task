<?php

require_once (DIR_SYSTEM.'library/registry.php');
require_once (DIR_SYSTEM.'library/db.php');
require_once (DIR_SYSTEM.'library/request.php');
require_once (DIR_SYSTEM.'library/render.php');
require_once (DIR_SYSTEM.'library/controller.php');

use library\Registry;
$registry = new Registry();

$db = new \library\DB(DB_HOSTNAME, DB_USERNAME, DB_PASSWORD, DB_DATABASE, DB_PORT);
$registry->set('db', $db);

$request = new library\Request();
$registry->set('request', $request);

$render = new library\Render();
$registry->set('render', $render);

$controller = new library\Controller($registry);
$action = $controller->method;
$controller->$action();

