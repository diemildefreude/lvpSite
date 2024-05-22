
<?php 
    while (have_posts()): the_post(); 
?>

    <div class="card">
        <?php if(has_post_thumbnail()):
            $img_id = get_post_thumbnail_id(get_the_ID());
            $alt_text = get_post_meta($img_id , '_wp_attachment_image_alt', true);
            $lName = get_the_author_meta('last_name');
            $fName = get_the_author_meta('first_name');
        ?>
        <img class="main-image" src="<?php the_post_thumbnail_url('blog-large');?>" alt="<?php echo $alt_text; ?>">
        <?php endif; ?>
        <div class="text-container">
        <h2><?php the_title(); ?></h3>
        <div class="date-n-author">
            
            <time><?php echo get_the_date('l, F j Y'); ?></time>
        </div>
        <?php the_excerpt(); ?>
        <a class="read-more" href="<?php the_permalink()?>">read more</a>
        </div>
    </div>

<?php endwhile; ?>