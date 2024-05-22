<?php get_header();?>

<div class="page-wrap header-offset">
    <h1 class="article-title centered"><?php the_title(); ?></h1>
    <?php get_template_part('includes/section', 'content');?>
</div>

<?php get_footer();?>