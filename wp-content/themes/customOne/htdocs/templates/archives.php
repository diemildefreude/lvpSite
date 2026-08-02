<?php
    use Prismic\Dom\Date;
    use Prismic\Predicates;
    
    
    $fn = basename($_SERVER["PHP_SELF"]);
    $urlEnd = substr($fn, 0, strrpos($fn, "."));

    $ogImg = $api->getByUID('about', 'about', ['fetch' => 'about.featured_image'])->data->featured_image->url;
    $ogType = "website";
    include $rootDir . "headCore.php";
?>
</head>
<body>    
    <div class="master-container">        
    <?php    
        include $rootDir . "headerMenu.php";
    ?>  
        <div class="main-footer-container">  
            <main>        
                <div class="content-wrapper">
                    <h1 class="big-heading"><?php echo $language == 'ja' ? 'アーカイブ' : 'Archives'?></h1>
                    <div class="tile-section-container">
                            <?php 
                                $eventQ = $api->query
                                (
                                    Predicates::at('document.type', 'event'),
                                    [
                                        'lang' => $language == 'ja' ? 'ja-jp' : 'en-us',
                                        'pageSize' => 100, 'orderings' => '[my.event.date desc]'
                                    ]
                                );
                                $archiveQ = $api->query
                                (
                                    Predicates::at('document.type', 'archive'),
                                    [ 
                                        'lang' => $language == 'ja' ? 'ja-jp' : 'en-us',
                                        'pageSize' => 100, 
                                        'orderings' => '[my.archive.date desc]'
                                    ]
                                );
                                $eventSecs = array();
                                for($i = 0; $i < sizeof($eventQ->results); ++$i)
                                {
                                    $eUid = $eventQ->results[$i]->uid;
                                    
                                    $filtered = \array_filter($archiveQ->results, function($archive) use ($eUid)
                                    {
                                        return $archive->data->event->uid === $eUid;
                                    });
                                    array_push($eventSecs, array_values($filtered));
                                }

                            for($i = 0; $i < sizeof($eventSecs); ++$i)
                            {
                                if(sizeof($eventSecs[$i]) == 0)
                                {
                                    continue;
                                } 
                                $secName = $eventQ->results[$i]->data->name;
                                echo "<h2 class='small-heading'>$secName</h2>";
                                echo "<ul class='tile-section'>";
                                for($j = 0; $j < sizeof($eventSecs[$i]); ++$j)
                                {
                                    $src = $eventSecs[$i][$j]->data->featured_image->url;
                                    $title = $eventSecs[$i][$j]->data->title;
                                    $date = Date::asDate($eventSecs[$i][$j]->data->date)->format($language == 'ja' ? 'Y年m月d日' : 'M jS, Y');
                                    $self = $_SERVER['PHP_SELF'];
                                    echo 
                                    "      
                                        <li class='tile'>                          
                                        <a href='$self'>
                                            <img src='$src'></img>
                                            <div class='tile-title'>$title</div>
                                            <time class='tile-date'>$date</time>
                                        </a>
                                        </li>
                                    ";
                                }
                                echo "</ul>";
                            } ?>
                    </div>                            
                </div>            
            </main>    
            <?php include $rootDir . "footer.php";?>
        </div>
    </div>    
</body>
</html>