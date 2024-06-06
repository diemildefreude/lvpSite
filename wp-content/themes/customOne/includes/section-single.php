
    <?php if(has_post_thumbnail()):
        $img_id = get_post_thumbnail_id(get_the_ID());
        $alt_text = get_post_meta($img_id , '_wp_attachment_image_alt', true);
    ?>
    <!-- <script>eruda.init()</script> -->
    <div class="article-container">     
        <div class="main-image-container">   
            <img tabindex="0" class="main-image" src="<?php the_post_thumbnail_url('full-size');?>" alt="<?php echo $alt_text; ?>">
        </div>
        <div class="cursor article-image-cursor">
            <div class="mag-icon">
                <div class="mag-glass"></div>
                <div class="mag-handle"></div>
            </div>
        </div>
        <div class="article-body">            
            <h1 class="article-title"><?php the_title(); ?></h1>
        <?php $meta = get_post_meta($post->ID, 'year_medium_size', true); 
            if($meta):?>
                <h2 class="year-medium-size"><?php echo $meta; ?></h2>
        <?php endif;
           get_template_part('includes/section', 'blogcontent');
        ?>
        </div>
    </div>  
    <img class="zoom-image" src="" alt="">  
    <?php endif;?>

    