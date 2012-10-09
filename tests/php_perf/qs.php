<?php

function quicksort($seq) {

    if(count($seq)<2) return $seq;
    $pivot= 0;
    $low = $high = array();
    $length = count($seq);
    $sameAsPivot=0;
    for($i=0; $i < $length; $i++) {
        if($seq[$i] < $seq[$pivot]) {
            $low [] = $seq[$i];
        } else if($seq[$i] > $seq[$pivot]) {
            $high[] = $seq[$i];
        }else
             $sameAsPivot++;
    }
    $low=quicksort($low);
    for($i=0;$i<$sameAsPivot;$i++){
        $low=array_merge($low,array($seq[$pivot]));
    }
    $high=quicksort($high);
    return array_merge($low,$high);
}

$myarr = array();
for($i=0;$i<100;$i++){
    $myarr[$i]=rand(0,200);
}
$final = quicksort($myarr);
for($i=0;$i<100;$i++){
    echo $final[$i];
    echo ", ";
}

?>
