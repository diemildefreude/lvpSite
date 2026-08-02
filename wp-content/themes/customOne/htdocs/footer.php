<div class="newsletter">
    <h2 class="big-heading"><?php echo $language == 'ja' ? 'ニュースレター' : 'Newsletter' ?></h2>
    <p><?php echo $language == 'ja' ? '今すぐニュースレターに登録！' : 'Get our latest news directly in your inbox!'?></p>
    <form class="newsletter-form">
        <input type="email" name="email" placeholder="<?php echo $language == 'ja' ? 'メールアドレス' : 'Enter your email address...'?>" required>
        <button type="submit">
            <div class="paper-plane">
                <div class="wings">
                    <div class="wing-line left-side"></div>
                    <div class="wing-line right-side"></div>
                    <div class="wing-line bottom-side"></div>
                    <div class="wing-line middle-fold"></div>
                </div>
                <div class="bottom-triangle"></div>
            </div>
            <div class="subscribe-text-container">
                <div class="subscribe-text">
                <?php echo $language == 'ja' ? '登録する' : 'Subscribe' ?>
                </div>
            </div>
        </button>
    </form>
</div> 
<footer>    
    <h1> 
        <?php echo $language == 'ja' ? 'ハム' : 'HAM' ?>
        <br>
        <?php echo $language == 'ja' ? 'たまご' : 'TAMAGO' ?>
        <br>
        <?php echo $language == 'ja' ? 'サンドイッチ' : 'SANDWICH' ?>
    </h1>
    <div class="copyright">
        2024 © All rights reserved
    </div>
    <a aria-label="i-g logo" class="ig-logo" href="https://www.instagram.com/hamtama.tokyo/">
        <div class="ig-logo-lense"></div>
        <div class="ig-logo-flash"></div>
    </a>
</footer>