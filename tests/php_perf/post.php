<?php

$url = 'http://localhost/common/welcome.php';
$postdata = http_build_query(
    array(
        'name' => 'WSO2',
        'address' => '59, Flower Road, Colombo 7'
    )
);

$opts = array('http' =>
array(
    'method'  => 'POST',
    'content' => $postdata
)
);

$context  = stream_context_create($opts);

$result = file_get_contents($url, false, $context);

echo $result;

?>
