<?php
    global $wp;
    $url = home_url( add_query_arg( array(), $wp->request ) );
    $title = "Lourdes Perez Art Archive";
    $description = "The Paintings of Lourdes Vasquez Perez";
    $ogType = "website";
    $ogImg = "https://lvpart.com/wp-content/uploads/2024/05/ogImg.png";    
    //echo $ogImg . "<br>";
?>
<!DOCTYPE html>
<html lang="en">
<head>
<title><?php echo $title ?></title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="<?php echo $description ?>">

    <!-- Open Graph Meta Tags -->
    <meta property="og:url" content="<?php echo $url ?>">
    <meta property="og:type" content="<?php echo $ogType ?>">
    <meta property="og:title" content="<?php echo $title ?>">
    <meta property="og:description" content="<?php echo $description ?>">
    <meta property="og:image" content="<?php echo $ogImg ?>">
    <meta property="og:image:width" content="1920">
    <meta property="og:image:height" content="1080">

    <!-- Twitter Meta Tags -->
    <meta name="twitter:card" content="summary_large_image">
    <meta property="twitter:domain" content="lvpart.com">
    <meta property="twitter:url" content="<?php echo $url ?>">
    <meta name="twitter:title" content="<?php echo $title ?>">
    <meta name="twitter:description" content="<?php echo $description ?>">
    <meta name="twitter:image" content="<?php echo $ogImg ?>">
    <?php wp_head();?>
</head>
<body>
<?php if(!is_front_page()):?>
    <?php get_template_part('includes/section', 'header');?>
<?php endif; ?>