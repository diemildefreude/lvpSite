UPDATE wp_options 
    SET option_value = replace(option_value, 'http://localhost/website/lvpSite', 'https://lvpart.com') 
    WHERE option_name = 'home' OR option_name = 'siteurl';

UPDATE wp_posts SET guid = replace(guid, 'http://localhost/website/lvpSite', 'https://lvpart.com');
UPDATE wp_posts SET post_content = replace(post_content, 'http://localhost/website/lvpSite', 'https://lvpart.com'); 
UPDATE wp_postmeta SET meta_value = replace(meta_value,'http://localhost/website/lvpSite', 'https://lvpart.com');
-------------------------------------
UPDATE wp_options 
    SET option_value = replace(option_value, 'https://lvpart.com', 'http://localhost/website/lvpSite') 
    WHERE option_name = 'home' OR option_name = 'siteurl';

UPDATE wp_posts SET guid = replace(guid, 'https://lvpart.com', 'http://localhost/website/lvpSite');
UPDATE wp_posts SET post_content = replace(post_content, 'https://lvpart.com', 'http://localhost/website/lvpSite'); 
UPDATE wp_postmeta SET meta_value = replace(meta_value,'https://lvpart.com', 'http://localhost/website/lvpSite');
