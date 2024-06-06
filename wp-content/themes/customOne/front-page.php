<?php get_header(); //header afterwards for hover/cursor settings?>
<div class="banner-container">
    <?php
        $paintings_cat_id = 9; 
        $args = array('numberposts' => 100, 'category' => $paintings_cat_id);
        $paintings = get_posts($args); 
        shuffle($paintings);
        $numSlides = 7;
        $numSlides = sizeof($paintings) < $numSlides ? sizeof($paintings) : $numSlides;
        //$i = 0;
        //foreach ($paintings as $post): setup_postdata($post);
        for($i = 0; $i < $numSlides; ++$i):
            $post = get_post($paintings[$i]);
            $meta = get_post_meta($post->ID, 'banner_img', true);
            $attachment_id = attachment_url_to_postid($meta);
            $faded_image_small_data = wp_get_attachment_image_src($attachment_id, 'small-size');        
            $faded_image_full_data = wp_get_attachment_image_src($attachment_id, 'full-size');            
            if(!$meta || !$faded_image_small_data)
            {
                continue;
            }
            $faded_small_url = $faded_image_small_data[0];
            $faded_full_url = $faded_image_full_data[0];
        if(has_post_thumbnail() && $meta): ?>       
        <a class="fade-slide" href="<?php the_permalink()?>">
            <?php $img_id = get_post_thumbnail_id(get_the_ID());
                $alt_text = get_post_meta($img_id, '_wp_attachment_image_alt', true);
            ?>
            <img data-src="<?php echo $faded_small_url?>" loading="lazy" alt="<?php echo $alt_text; ?>"></img>        
            <span style="display: none"><?php echo $faded_full_url?></span>
        </a>
        <?php endif; ?>      
    <?php endfor; 
    wp_reset_postdata();
    ?>
    <a class="cursor" style="top: 484px; left: 683px">
        <div class="mag-icon">
            <div class="mag-glass"></div>
            <div class="mag-handle"></div>
        </div>
    </a>
</div>

<?php get_template_part('includes/section', 'header');?>

<section class="page-wrap">
<?php get_template_part('includes/section', 'content');?>

<?php 
    $post = get_post(86);
    $postOverwrite = true;
    setup_postdata($post);
    get_template_part('includes/section', 'single');
?>
</section>
<img class="zoom-image" src="" alt="">
<?php get_footer();?>