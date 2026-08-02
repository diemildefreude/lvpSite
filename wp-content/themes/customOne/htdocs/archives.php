<?php
    error_reporting(E_ALL); ini_set('display_errors', 1);
    $rootDir = "";
    include $rootDir . 'prismic.php';

    $language = 'en';    
    $title = "Archives - HAMTAMA";
    $description = "performance art platform";
    include $rootDir . "templates/" . basename(__FILE__);
?>