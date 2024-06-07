# lvpSite
website for the Lourdes Perez Art Archive, online [here](https://lvpart.com).

original theme for the Wordpress content management system.

dependencies
----------
php 7.4+ and Wordpress. 

front page
----------
the front page features a randomized, interactive display of fading images, randomly selected from all the archives. Because drawing gradient borders for moving images in css is performance-costly, every archive has a custom field (banner_img), which holds a link to a version of the image which has had gradients pre-applied to its borders. The motion and interactiviy of these images is driven by banner.js. The images are also not set with src immediately, but are instead loaded asynchronously- first lores versions of the images, which are then replaced with hires versions as soon as the latter are loaded. This allows images to be visible as soon as possible, even with slower internet connections.

setup
----------
1) set up a local server using something like [Xampp](https://www.apachefriends.org/download.html)
2) download Wordpress [here](https://wordpress.org/download/) and place the Wordpress folder inside your localhost directory (in the case of Xampp, probably c:/xampp/htdocs)
3) delete the wp-content folder from the Wordpress download and clone this repository into the Wordpress folder (eg. c:/xampp/htdocs/wordpress)
4) start the local server. In Xampp, this is done by pressing the start buttons for Apache and MySQL.
5) open phpAdmin. In Xampp: MySql>Admin
6) create a database called wp_lvp (or something else). Set the name of the database in wp-config.php: `define( 'DB_NAME', 'wp_lvp' );`
7) with that database selected in phpadmin, go to "import". Drag and drop wp_lvp.sql
8) the site should be functional now. Open it from localhost/path, where localhost reflects the htdocs folder. So if the folder is c:/xampp/htdocs/wordpress, enter localhost/wordpress into the address bar
9) when hosting the site on a non-local server, use the first half of changeUrls.sql to search and replace the localhost url root with the new domain url. (or the 2nd half to revert it for local use). Likewise, wp-config.php values also need to be changed.
