<?php 
/*
Template Name: contact
*/
get_header();
?>
<div class="page-wrap header-offset">
    <h1 class="article-title contact">Contact us</h1>

<?php
if (isset($_POST['dat-submit']))
{
    $cfSecret = "3x00000000000000000000FF"; //force challenge
    //$cfSecret = "2x00000000000000000000AB"; //fail
    $remoteAddr = $_SERVER['REMOTE_ADDR'];
    $cfUrl = 'https://challenges.cloudflare.com/turnstile/v0/siteverify';
    $token = $_POST["cf-turnstile-response"];
    $data = ["secret" => $cfSecret, "response" => $token, "remoteip" => $remoteAddr];

    $cUrl = curl_init();
    curl_setopt($cUrl, CURLOPT_URL, $cfUrl);
    curl_setopt($cUrl, CURLOPT_POST, true);
    curl_setopt($cUrl, CURLOPT_POSTFIELDS, $data);
    curl_setopt($cUrl, CURLOPT_RETURNTRANSFER, true);

    $response = curl_exec($cUrl);

    if(curl_errno($cUrl))
    {
        $errorMessage = curl_error($cUrl);

        echo "<div class='submit-notice error'>human check failed. message not sent.</div>";
    }
    else
    {
        $response = json_decode($response, true);
        if($response['error-codes'] && count($response['error-codes']) > 0)
        { 
            echo "<div class='submit-notice error'>human check failed. message not sent.</div>";
        }
        else
        {     
            sendForm();
            echo "<div class='submit-notice'> Your message has been sent. </div>";
        }
    }
    curl_close($cUrl);
}
else
{
    echo "<div class='submit-notice'> <br> </div>";
}
function sendForm()
{
        $myMail = 'placeholder@gmail.com';
        $senderName = $_POST['dat-name'];
        $senderMail = $_POST['dat-email'];
        if(is_email($senderMail))
        {
            $GLOBALS['custom_from_email'] = $senderMail;
            $GLOBALS['custom_from_name'] = $senderName;
        }

        $subject = 'message via lvpart.com: ' . $_POST['dat-subject'];
        $message = nl2br($_POST['dat-message']);
        $headers = array('Content-Type: text/html; charset=UTF-8');

        $txt = $senderName . " ( " . $senderMail . " ) " . "has sent you an e-mail via lvpart.com's contact form:<br><br>".$message;
        try
        {
            $sent = wp_mail($myMail, $subject, $txt, $headers);
        }
        catch(Exception $e)
        {
            echo 'error: ' . $e . '<br>';
        }
}
?>          
<script src="https://challenges.cloudflare.com/turnstile/v0/api.js" defer></script>
    <form class="contact-form" action="" method="post">
        <label for="dat-name">name</label>
        <input type="text" name="dat-name" placeholder="your name" required>

        <label for="dat-email">e-mail</label>
        <input type="email" id="dat-email" name="dat-email" placeholder="your@e.mail" required>

        <label for="dat-subject">subject</label>
        <input type="text" id="dat-subject" name="dat-subject" placeholder="your message subject" required>

        <label for="dat-message">message</label>
        <textarea id="dat-message" name="dat-message" rows="6" placeholder="your message" required></textarea>
        <div class="cf-turnstile" data-sitekey="placeholder"></div>
        <button type="submit" name="dat-submit">submit</button>
    </form>
</div>
<?php get_footer();?>