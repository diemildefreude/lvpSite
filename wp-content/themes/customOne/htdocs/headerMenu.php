<script>
  function redirectToChannel() {
    if (/Android|webOS|iPhone|iPad|iPod|BlackBerry|IEMobile|Opera Mini/i.test(navigator.userAgent)) {
      window.location.href = 'https://m.youtube.com/@ste_e_p';
    } else {
      window.location.href = 'https://www.youtube.com/@ste_e_p';
    }
  }
</script>
<?php $menuPath = $rootDir . ($language == 'ja' ? 'ja/' : '') . 'archives.php';?> 
<div class="header-menu-container">
    <header class="js-header"> 
        <button title="menu-button" class="js-menu-button menu-button"
                type="button" 
                aria-controls="menu-button"
                aria-expanded="false">
            <div class="hamburger">
                <span class="bar bar1"></span>
                <span class="bar bar2"></span>
                <span class="bar bar3"></span>
            </div>
        </button>
        <a class="header-logo" href="<?php echo $menuPath?>">
            <img src="<?php echo $rootDir . 'assets/logo.svg'?>" alt="hamtama logo"></img>
        </a>
    </header>

    <nav class="menu-container">
        <ul class="js-menu menu">            
            <li class="menu-item"><a href="<?php echo $menuPath?>">
              <?php echo $language == 'ja' ? 'ハムたまについて' : 'about'?></a></li>
            <li class="menu-item"><a href="<?php echo $menuPath?>">
              <?php echo $language == 'ja' ? 'ニュース' : 'news'?></a></li>
            <li class="menu-item"><a href="<?php echo $menuPath?>">
              <?php echo $language == 'ja' ? 'イベント' : 'events'?></a></li>
            <li class="menu-item"><a href="<?php echo $menuPath?>">
              <?php echo $language == 'ja' ? 'アーカイブ' : 'archives'?></a></li>
            <li class="menu-item"><a href="<?php echo $menuPath?>">
              <?php echo $language == 'ja' ? 'アーティスト' : 'artists'?></a></li>
            <li class="menu-item"><a href="<?php echo $menuPath?>">
              <?php echo $language == 'ja' ? 'お問い合わせ' : 'contact'?></a></li>   
            <li class="menu-item">
              <div class="language-container">
                <a href="<?php echo $rootDir . 'archives.php'?>">EN</a>
                <a href="<?php echo $rootDir . 'ja/archives.php'?>">JA</a>
              </div>
            </li>
        </ul>
    </nav>
</div>

<script src="<?php echo $rootDir . 'menu.js'?>"></script>
