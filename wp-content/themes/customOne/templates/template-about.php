<?php 
/*
Template Name: about
*/
    get_header();
?>
<section class="page-wrap">
<?php
    $post = get_post(86);
    $postOverwrite = true;
    setup_postdata($post);
    get_template_part('includes/section', 'single');
?>
</section>
<?php get_footer();?>