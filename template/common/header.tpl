<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8"/>
    <title><?php echo $title; ?></title>
    <meta name="robots" content="noindex" />
    <script type="text/javascript" src="view/javascript/jquery-3.0.0.min.js"></script>
    <script type="text/javascript" src="view/javascript/bootstrap.js"></script>
    <link href="view/stylesheet/bootstrap.css" type="text/css" rel="stylesheet"/>
    <link href="view/stylesheet/font-awesome.css" type="text/css" rel="stylesheet"/>
    <link href="view/stylesheet/stylesheet.css" type="text/css" rel="stylesheet"/>
    <?php foreach ($scripts as $script) { ?>
    <script src="<?php echo $script; ?>" type="text/javascript"></script>
    <?php } ?>
<body>
<div id="container">
    <header id="header" class="navbar navbar-static-top">
        <div class="navbar-header">
            <a href="<?php echo HTTP_SERVER; ?>" class="navbar-brand" >Home TT</a>
        </div>
    </header>