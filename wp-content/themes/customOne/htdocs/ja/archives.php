<?php
    error_reporting(E_ALL); ini_set('display_errors', 1);
    $rootDir = "../";
    include $rootDir . 'prismic.php';

    $language = 'ja';    
    $title = "アーカイブ | ハムたま";
    $description = "パフォーマンスアート・プラットフォーム";
    include $rootDir . "templates/" . basename(__FILE__);
?>