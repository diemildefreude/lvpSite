<?php 
use PHPMailer\PHPMailer\PHPMailer;
use PHPMailer\PHPMailer\Exception;

function load_css()
{
    wp_register_style('reset', get_template_directory_uri() . '/reset.css');
    wp_enqueue_style('reset');
    wp_register_style('custom', get_template_directory_uri() . '/style.css');
    wp_enqueue_style('custom');
    
}
function load_js()
{
    //wp_register_script('mobile-console', "https://cdn.jsdelivr.net/npm/eruda");
    //wp_enqueue_script('mobile-console');
    wp_register_script('banner', get_template_directory_uri() . '/scripts/banner.js');
    wp_enqueue_script('banner');
    wp_register_script('menu', get_template_directory_uri() . '/scripts/menu.js');
    wp_enqueue_script('menu');
    wp_register_script('header', get_template_directory_uri() . '/scripts/header.js');
    wp_enqueue_script('header');
    wp_register_script('mouse', get_template_directory_uri() . '/scripts/mouse.js');
    wp_enqueue_script('mouse');
    wp_register_script('zoom', get_template_directory_uri() . '/scripts/zoom.js');
    wp_enqueue_script('zoom');
    // wp_register_script('script', get_template_directory_uri() . '/scripts/script.js');
    // wp_enqueue_script('script');
}

function smtplog_mailer_errors( $wp_error ){
    $fn = ABSPATH . '/mail.log'; // mail.log file in server root
    $fp = fopen($fn, 'a');
    fputs($fp, date('m/d/Y h:i:s a', time()) . " Mailer Error: " . $wp_error->get_error_message() ."\n");
    fclose($fp);
}

function my_phpmailer_setup(PHPMailer $phpmailer)
{
    $phpmailer->IsSMTP();
    $phpmailer->Host = "smtp.gmail.com"; // your SMTP server
    $phpmailer->Port = 587;
    $phpmailer->SMTPDebug = 0; // write 0 if you don't want to see client/server communication in page
    $phpmailer->SMTPAuth = true;
    $phpmailer->SMTPSecure = PHPMailer::ENCRYPTION_STARTTLS;
    $phpmailer->Username = 'placeholder@gmail.com';
    $phpmailer->Password = 'placeholder';
    $phpmailer->From = 'placeholder@gmail.com';
    $phpmailer->FromName = 'lvpart.com';
}

$GLOBALS['custom_from_email'] = 'placeholder@gmail.com';
$GLOBALS['custom_from_name'] = 'lvpart.com';
function set_from()
{
    return $GLOBALS['custom_from_email'];
}
function set_from_name()
{
    return $GLOBALS['custom_from_name'];
}
add_filter('wp_mail_from', 'set_from');
add_filter('wp_mail_from_name', 'set_from_name');

// Function to set the 'Reply-To' email dynamically
// function set_mail_from_reply_to( $phpmailer ) 
// {
//     // Assuming $_POST['email'] is the field where the user inputs their email address
//     if ( isset( $_POST['dat-email'] ) && is_email( $_POST['dat-email'] ) ) {
//     $phpmailer->setFrom( get_option('admin_email'), get_option('blogname') );
//     $phpmailer->addReplyTo( $_POST['dat-email'], $_POST['dat-name'] ); // Name is optional
//     }
// }

add_action('wp_mail_failed', 'smtplog_mailer_errors', 10, 1);
add_action( 'phpmailer_init', 'my_phpmailer_setup', 10, 1);
//add_action( 'phpmailer_init', 'set_mail_from_reply_to', 999, 1);

add_action('wp_enqueue_scripts', 'load_css');
add_action('wp_enqueue_scripts', 'load_js');
add_theme_support('menus');
$menus = array('main' => 'main menu location');
register_nav_menus($menus);

add_theme_support('post-thumbnails');
add_image_size('full-size', 1920, 1080, false);
add_image_size('small-size', 960, 540, false);
add_image_size('blog-large', 800, 800, true);
add_image_size('blog-small', 400, 400, true);

function mytheme_custom_excerpt_length( $length ) 
{
    return 30;
}
add_filter( 'excerpt_length', 'mytheme_custom_excerpt_length', 999 );
// function disable_autop_shortcode($atts, $content = '') 
// {
//     remove_filter('the_content', 'wpautop');
//     $content = do_shortcode(shortcode_unautop($content));
//     add_filter('the_content', 'wpautop');
//     return $content;
// }
// add_shortcode('no_autop', 'disable_autop_shortcode');
remove_filter('the_content', 'wpautop');
?>