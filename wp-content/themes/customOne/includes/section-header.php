<header class="<?php echo is_front_page() ? 'hide-cursor' : ''?>">
    <div class="header-contents-wrapper">
        <?php $upload_dir_info = wp_upload_dir();
                $media_path = $upload_dir_info['baseurl'];
        ?>
        <a class="header-title" href="<?php echo get_home_url()?>">
            <img src="<?php echo $media_path . '/2024/04/sig-3.png' ?>"/>
        </a>
        <nav class="js-menu"> 
        <?php 
            $m = array('theme_location' => 'main', 'menu_class' => 'menu');
            wp_nav_menu($m);
        ?>
        </nav>
        <div class="menu-button js-menu-button">
            <div class="hamburger">
                <div class="bar bar1"></div>
                <div class="bar bar2"></div>
                <div class="bar bar3"></div>
            </div>
        </div>
    </div>
</header>