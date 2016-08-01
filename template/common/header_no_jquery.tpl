<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8"/>
    <title><?php echo $title; ?></title>
    <meta name="robots" content="noindex" />
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