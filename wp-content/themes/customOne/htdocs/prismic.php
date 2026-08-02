<?php 
include_once __DIR__."/vendor/autoload.php";
use Prismic\Api;
// use Prismic\Dom\Date;
// use Prismic\Dom\RichText;
// use Prismic\LinkResolver;
// use Prismic\Predicates;

$site = "https://hamtama.prismic.io/api/v2";
$token = "MC5ZS3lteEJFQUFDTUFoMUdO.FF0277-9YVfvv73vv71Y77-977-9Mkvvv73vv73vv73vv73vv70t77-9V15s77-977-977-977-977-977-977-9LUw";
$api = Api::get($site, $token);

// class Prismic
// {
//     use Prismic\Api;
//     use Prismic\Dom\Date;
//     use Prismic\Dom\RichText;
//     use Prismic\LinkResolver;
//     use Prismic\Predicates;
//     private $api = Api::get($site, $token);
//     private $site = "https://hamtama.prismic.io/api/v2";
//     private $token = "MC5ZS3lteEJFQUFDTUFoMUdO.FF0277-9YVfvv73vv71Y77-977-9Mkvvv73vv73vv73vv73vv70t77-9V15s77-977-977-977-977-977-977-9LUw";

//     public $query = function ($p, $o1, $o2) 
//     {
//         $api->query
//         (
//             Predicates::at($p), $o1, $o2;
//         );
//     };
// }



//$doc = $api->getByUID("archive", "staghunt-miaki", (['lang' => 'ja-jp']));


        //$date = Date::asDate($doc->data->date);
        //echo $date->format('Y-m-d H:i:s') . '<br>';
        //echo RichText::asHtml($doc->data->content);
        //echo RichText::asText($doc->data->content);
        //echo $doc->data->images[0]-;
        
        // $response = $api->query(
        //   Predicates::at('document.type', 'archive'),
        //   [ 'pageSize' => 100 ],
        //    [ 'orderings' => '[my.archive.date desc]' ]
        // );
        //$last = sizeof($response->results) - 1;
        //echo $last;
        //$document = $response->results[$last];
        //echo RichText::asHtml($document->data->content);
    
    
?>
    <!-- <img src="<?php echo $doc->data->featured_image->url?>" alt="featured stag image"></img> -->
    <!-- <img src="<?php echo $doc->data->images[1]->image->url?>" alt="featured stag image"></img> -->
    <!-- <img src="<?php echo $document->data->featured_image->url?>" alt="featured"></img> -->
    
