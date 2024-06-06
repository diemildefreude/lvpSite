<?php
    $count;
    $loopOn = true;
    $postCat;
    while(have_posts() && $loopOn):
        global $postOverwrite; //if a template loads a specific post instead of the default for this page
        if(!isset($postOverwrite) || !$postOverwrite)
        {
            the_post();
        } 
        else
        {
            global $loopOn;
            $loopOn = false;
        }
        the_content();
        $fName = get_the_author_meta('first_name');
        $lName = get_the_author_meta('last_name');
        $postCat = get_the_category();
?>
    <?php if($postCat[0]->term_id != 9): //9 is paintings category ?>
    <div class="info">posted by <?php echo $fName . ' ' . $lName; ?> on <time><?php the_date('l, F j Y'); ?></time>
    <?php endif; ?>

    <?php $tags = get_the_tags();
    if(get_the_tags()): foreach($tags as $t):?>
        <a href="<?php echo get_tag_link($t->term_id);?>">
            <?php echo $t->name ?>
        </a>
    <?php endforeach; endif; ?>

    <?php 
    // if ( comments_open() || get_comments_number() ) :
    //         comments_template();
    // endif;
    ?>
<?php endwhile; ?>
