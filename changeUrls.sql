UPDATE wp_options 
    SET option_value = replace(option_value, 'http://lvpart.com', 'https://lvpart.com') 
    WHERE option_name = 'home' OR option_name = 'siteurl';

UPDATE wp_posts SET guid = replace(guid, 'http://lvpart.com', 'https://lvpart.com');
UPDATE wp_posts SET post_content = replace(post_content, 'http://lvpart.com', 'https://lvpart.com'); 
UPDATE wp_postmeta SET meta_value = replace(meta_value,'http://lvpart.com', 'https://lvpart.com');
--------------------
UPDATE wp_options 
    SET option_value = replace(option_value, 'https://lvpart.com', 'http://lvpart.com') 
    WHERE option_name = 'home' OR option_name = 'siteurl';

UPDATE wp_posts SET guid = replace(guid, 'https://lvpart.com', 'http://lvpart.com');
UPDATE wp_posts SET post_content = replace(post_content, 'https://lvpart.com', 'http://lvpart.com'); 
UPDATE wp_postmeta SET meta_value = replace(meta_value,'https://lvpart.com', 'http://lvpart.com');
------------------------------------
UPDATE wp_options 
    SET option_value = replace(option_value, 'http://localhost/website/wordpress', 'https://lvpart.com') 
    WHERE option_name = 'home' OR option_name = 'siteurl';

UPDATE wp_posts SET guid = replace(guid, 'http://localhost/website/wordpress', 'https://lvpart.com');
UPDATE wp_posts SET post_content = replace(post_content, 'http://localhost/website/wordpress', 'https://lvpart.com'); 
UPDATE wp_postmeta SET meta_value = replace(meta_value,'http://localhost/website/wordpress', 'https://lvpart.com');
-------------------------------------
UPDATE wp_options 
    SET option_value = replace(option_value, 'http://lvpart.com', 'http://localhost/website/wordpress') 
    WHERE option_name = 'home' OR option_name = 'siteurl';

UPDATE wp_posts SET guid = replace(guid, 'http://lvpart.com', 'http://localhost/website/wordpress');
UPDATE wp_posts SET post_content = replace(post_content, 'http://lvpart.com', 'http://localhost/website/wordpress'); 
UPDATE wp_postmeta SET meta_value = replace(meta_value,'http://lvpart.com', 'http://localhost/website/wordpress');