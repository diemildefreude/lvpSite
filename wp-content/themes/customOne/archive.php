<?php get_header();?>

<section class="page-wrap header-offset archive">
    <h1 class="article-title"><?php echo single_cat_title();?></h1>
    <?php get_template_part('includes/section', 'archive');?>
    <?php previous_posts_link(); ?>
    <?php next_posts_link(); ?>
    
    <!-- <?php
    $big = 999999999;
    echo paginate_links( array(
        'base' => str_replace( $big, '%#%', esc_url( get_pagenum_link($big) ) ),
        'format' => '?paged=%#%',
        'current' => max(1, get_query_var('paged') ),
        'total' => $wp_query->max_num_pages
    ));
    ?> -->

</section>

<?php get_footer();?>