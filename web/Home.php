<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
   "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<title>SAK&amp;Co</title>
<!-- (en) Add your meta data here -->
<!-- (de) Fuegen Sie hier ihre Meta-Daten ein -->

<link href="images/favicon.jpg" rel="Shortcut Icon">
<link href="css/HomeMock.css" rel="stylesheet" type="text/css"/>
<link href="css/colorbox.css" rel="stylesheet" type="text/css"/>
<link href="css/cloud-zoom.css" rel="stylesheet" type="text/css"/>
<!--[if lte IE 7]>
<link href="css/patches/patch_HomeMock.css" rel="stylesheet" type="text/css" />
<![endif]-->

<style>
.hlist ul li a, .hlist ul li strong{
  font-weight: normal;
  font-family: Arial,Helvetica,sans-serif;
}

ul.dropdown,
ul.dropdown li,
ul.dropdown ul {list-style: none;}

ul.dropdown {position: relative; z-index: 597;width:972px}
ul.dropdown li {float: left; line-height: 1.8em; vertical-align: middle;width: 160px;}
ul.dropdown li a{font-size: 1.2em; color: #c9a14a; text-align:center; float: none;}
ul.dropdown li a:visited{font-size: 1.2em; color: #c9a14a; text-align:center; float: none;}

ul.dropdown li.hover,
ul.dropdown li:hover {position: relative;z-index: 599;cursor: default;}

ul.dropdown ul {
 visibility: hidden;
 position: absolute;
 top: 100%;
 left: 0;
 z-index: 598;
 width: 100%;
 background: repeat-x scroll right center #020202;
}

ul.dropdown li:hover > ul {
 visibility: visible;
}
ul.dropdown li.rtl ul {
 top: 100%;
 right: 0;
 left: auto;
}

ul.dropdown li.rtl ul ul {
 top: 1px;
 right: 99%;
 left: auto;
}

ul .dir {
 margin:0;
 padding:0;
 display:inline;
 float:left;
}

.dir a,
.dir strong {
    background: repeat-x scroll right center #020202;
    color: #c9a14a;
    display:block;
    font-weight:normal;
    padding:5px 11px 3px 8px;
    text-decoration:none;
    text-transform:none;

    /**
     * @bugfix
     * @affected   IE5.x, IE6
     * @css-for    all browsers
     * @valid      yes
     */
    width:auto; /* only IE 5.x */
    width/**/:/**/ .1em; /* only IE 6.0 */
}

ul.dir li {
 line-height: 1.6em;
 /*border-left: 1px solid #020202;*/
 border-right: 1px solid #020202;
}

ul .dropdown ul li {
 position:relative;
 border:0;
}

.hlist{
 overflow:visible;
 background: repeat-x scroll right center #020202;
}

ul .dropdown li .hover ul  {
 background: repeat-x scroll right center #020202;
}

ul .dropdown ul li a {
 width:100%;
 border-bottom:1px solid #a3a3a3;
 height:auto;
 background: repeat-x scroll right center #020202;
}


#banner {margin:0 auto;overflow:hidden;z-index:-1; width:1064px; height:750px}
#btn{display:inline;width:110px;height:10px;float:left;margin:-715px 0px 0px 105px;position:absolute;z-index:1;}
#btn a{color:#36f;font:700 11px "Arial";background:url(images/home/inactive.png) no-repeat;float:left;width:10px;
 height:10px;line-height:10px;text-align:center;text-decoration:none;margin-left:5px;}
#btn a.activeSlide {color:#fff;background:url(images/home/active.png) no-repeat;}
#btn a:hover{color:#fff;background:url(images/home/active.png) no-repeat;}
</style>

<script src="js/jquery-1.4.2.js" type="text/javascript"></script>
<script src="js/jquery.cycle.js" type="text/javascript"></script>
<script src="js/jquery.colorbox.js" type="text/javascript"></script>
<script src="js/cloud-zoom.1.0.2.js" type="text/javascript"></script>
<script type="text/javascript">
$(document).ready(function(){
 $("ul.dropdown li").dropdown();

 if (jQuery.browser.msie) {
 var zIndexNumber = 1000;
 $('div .hlist').each(function() {
  $(this).css('zIndex', zIndexNumber);
  zIndexNumber -= 10;
 });  
}
});

$.fn.dropdown = function() {
 $(this).hover(function(){
  $(this).addClass("hover");
  $('> .dir',this).addClass("open");
  $('ul:first',this).css('visibility', 'visible');
 },function(){
  $(this).removeClass("hover");
  $('.open',this).removeClass("open");
  $('ul:first',this).css('visibility', 'hidden');
 });
}


$(function(){
 $('#banner').cycle({ 
  fx:'fade',
  timeout: 7000,
  pager:'#btn',
  speedIn: 1500, 
  speedOut:1500
 });

 $(".iframe").colorbox({iframe:true, width:"986px", height:"542px", onOpen:pauseCycle, onClosed:resumeCycle});
 $(".group1_1").colorbox({rel:'group1_1', singlePath:"./images/NewArrival/", title:"New Arrival", width:"850px", height:"450px", onOpen:pauseCycle, onClosed:resumeCycle, onComplete:addZoom});
 $(".group1_2").colorbox({rel:'group1_2', singlePath:"./images/NaturalWorld/", title:"Natural World", width:"850px", height:"450px", onOpen:pauseCycle, onClosed:resumeCycle, onComplete:addZoom});
 $(".group1_3").colorbox({rel:'group1_3', singlePath:"./images/LadyElegance/", title:"Lady Elegance", width:"850px", height:"450px", onOpen:pauseCycle, onClosed:resumeCycle, onComplete:addZoom});
 $(".group1_4").colorbox({rel:'group1_4', singlePath:"./images/CitySenior/", title:"City Senior", width:"850px", height:"450px", onOpen:pauseCycle, onClosed:resumeCycle, onComplete:addZoom});
 $(".group1_5").colorbox({rel:'group1_5', singlePath:"./images/FashionTrend/", title:"Fashion Trend", width:"850px", height:"450px", onOpen:pauseCycle, onClosed:resumeCycle, onComplete:addZoom});
 $(".group2_1").colorbox({rel:'group2_1', hasSecondFlg: false, title:"A/W 2012", onOpen:pauseCycle, onClosed:resumeCycle});
 $(".group2_2").colorbox({rel:'group2_2', hasSecondFlg: false, title:"S/S 2012", onOpen:pauseCycle, onClosed:resumeCycle});
 $(".group2_3").colorbox({rel:'group2_3', hasSecondFlg: false, title:"A/W 2011", onOpen:pauseCycle, onClosed:resumeCycle});
 $(".group3_1").colorbox({rel:'group3_1', hasSecondFlg: false, onOpen:pauseCycle, onClosed:resumeCycle});
 $(".group4_1").colorbox({rel:'group4_1', hasSecondFlg: false, onOpen:pauseCycle, onClosed:resumeCycle});

});

function addZoom() {
 var imgArray = $(".cboxPhoto").attr("src").split('/');
 var origName = imgArray[imgArray.length - 1];
 var origNamePrefix = origName.slice(0, 3);
 var newImgFile = '';
 if("lg_"==origNamePrefix || "md_"==origNamePrefix || "po_"==origNamePrefix || "sm_"==origNamePrefix) {
 	newImgFile = 'lg_' + origName.slice(3, origName.length);
 } else {
 	newImgFile = 'lg_' + origName;
 }
 
 var imgPath ='';
 for (i = 0; i< imgArray.length - 1; i++) {
  imgPath = imgPath + imgArray[i] + '/';
 }
 
 var aLink = document.createElement('a');
 $(aLink).attr('href', imgPath + newImgFile);
 $(aLink).attr('class','cloud-zoom');
 $(aLink).attr('ref', 'showTitle: false');
 $(aLink).attr('onclick', 'javascript:return false;');
 $('.cboxPhoto').wrap(aLink);
 $('.cloud-zoom').CloudZoom();
 
 $('#cboxNext').hide();
 $('#cboxPrevious').hide();
}

function pauseCycle() {
 $('#banner').cycle('pause');
}
function resumeCycle() {
 $('#banner').cycle('resume');
}

</script>

</head>
<body style="background:#000000">
<div class="page_margins">
  <div class="page">
    <!-- begin: main navigation #nav -->
    <div id="nav" role="navigation">
	
     <div class="hlist" align="center">
        <!-- main navigation: #nav_main -->
<ul class="dropdown">
  <li><a href="index.htm" style="font-family: TrajanPro-Regular,Arial">
   <span style="font-size:1.8em">SAK</span><span style="font-size:1em">&nbsp;&amp;&nbsp;CO.</span></a>
  </li>

  <li><a href="#">Collections</a>
    <ul class="dir">
<?php  
$arr1 = array(
  array("group1_1", "./images/NewArrival/", "New Arrival"),
  array("group1_2", "./images/NaturalWorld/", "Natural World"),
  array("group1_3", "./images/LadyElegance/", "Lady Elegance"),
  array("group1_4", "./images/CitySenior/", "City Senior"),
  array("group1_5", "./images/FashionTrend/", "Fashion Trend"));

foreach($arr1 as $subArr1) {

  $path = $subArr1[1];

  $tempArr1 = array();
  $tempArrKeyName = array();
  $handle=opendir($path);
  while($file=readdir($handle)) {
    if(is_dir($file)) continue;
	if(substr($file, 0, 3) == 'po_') {
	  array_push($tempArr1, substr($file, 3));
	  if(substr($file, -5, 5) == '1.jpg') {
	    array_push($tempArrKeyName, substr($file, 3, 5));
	  }
	}
  }
  sort($tempArr1);
  array_unique($tempArrKeyName);
  $finalArr=array();
  foreach($tempArrKeyName as $keyName) {
    $tempSubArr=array();

    foreach($tempArr1 as $tempItem1) {
	  if(substr($tempItem1, 0, 5) == $keyName) 
	    array_push($tempSubArr, $tempItem1);
	}
	array_push($finalArr, $tempSubArr);
  }

echo '<li>';

for($i=0;$i<count($finalArr);$i++) {
	$nameListStr=implode(",", $finalArr[$i]);
	
    if ($i==0) {
     echo '<a class="'.$subArr1[0].'" href="'.$path.'po_'.$finalArr[$i][0].'" singleList="'.$nameListStr.'">'.$subArr1[2].'</a>';
    } elseif($i==1) {
     echo '<div style="display:none">';
     echo '<a class="'.$subArr1[0].'" href="'.$path.'po_'.$finalArr[$i][0].'" singleList="'.$nameListStr.'"></a>';
   } elseif($i==count($finalArr)-1){
     echo '<a class="'.$subArr1[0].'" href="'.$path.'po_'.$finalArr[$i][0].'" singleList="'.$nameListStr.'"></a>';
     echo '</div>';
   } else {
     echo '<a class="'.$subArr1[0].'" href="'.$path.'po_'.$finalArr[$i][0].'" singleList="'.$nameListStr.'"></a>';
   }
  }

echo '</li>';
}
?>
	
	</ul>
  </li>
  
  <li><a href="#">Campaign</a>
    <ul class="dir">
<?php  
$arr = array(
  array("group2_1", "./images/2012AW/", "A/W 2012"),
  array("group2_2", "./images/2012SS/", "S/S 2012"),
  array("group2_3", "./images/2011FW/", "A/W 2011"));

foreach($arr as $eachSubArray) {
  echo '<li>';

  $path = $eachSubArray[1];
  $fileNum = count(glob($path.'*')) - count(glob($path.'*',GLOB_ONLYDIR));
  $i=1;
  
  $handle=opendir($path);
  while($file=readdir($handle)) {
    if(is_dir($file)) continue;

    if ($i==1) {
     echo '<a class="'.$eachSubArray[0].'" href="'.$path.$file.'">'.$eachSubArray[2].'</a>';
    } elseif($i==2) {
     echo '<div style="display:none">';
     echo '<a class="'.$eachSubArray[0].'" href="'.$path.$file.'"></a>';
   } elseif($i==$fileNum){
     echo '<a class="'.$eachSubArray[0].'" href="'.$path.$file.'"></a>';
     echo '</div>';
   } else {
     echo '<a class="'.$eachSubArray[0].'" href="'.$path.$file.'"></a>';
   }
   $i=$i+1;
  }
  
echo '</li>';
}
?>
	</ul>
  </li>
  
  <li><a href="#">About Us</a>
    <ul class="dir">
	  <li><a class="group3_1" href="images/home/brandstoryEN.jpg">Brand Story</a></li>
	</ul>
  </li>
  
  <li><a href="#">Our Stores</a>
    <ul class="dir">
	  <li><a class="iframe" href="StoreLocatorEN.html">Store Locator</a></li>
	</ul>
  </li>
  
  <li><a href="#">VIP Club</a>
    <ul class="dir">
	  <li><a class="iframe" href="ProductCare.html">Product Care</a></li>
	  <li><a class="iframe" href="RegistrationForm.html">Email/Registration</a></li>
	</ul>
  </li>
</ul>
    </div>
  </div>
    <!-- end: main navigation -->
    <!-- begin: main content area #main -->
    <div id="main">
      <!-- begin: #col1 - first float column -->
      <div id="col1" role="complementary">
        <div id="col1_content" class="clearfix">
		
<div id="banner" >
    	<img src="images/home/collections.1.jpg" alt="collections.1" width="100%" height="750px"/>
        <img src="images/home/collections.2.jpg" alt="collections.2" width="100%" height="750px"/>
        <img src="images/home/collections.3.jpg" alt="collections.3" width="100%" height="750px"/>
        <img src="images/home/collections.4.jpg" alt="collections.4" width="100%" height="750px"/>
</div>
<div id="btn"></div>

        </div>
      </div>
      <!-- end: #col1 -->
    </div>
    <!-- end: #main -->
  </div>
</div>

<!-- This contains the hidden content for inline calls -->

<p style="text-align:center;" >
<a style="color: #C9A14A;" href="http://www.miibeian.gov.cn">沪ICP备10209758-2号</a>
</p>

<!-- full skiplink functionality in webkit browsers -->
<script src="yaml/core/js/yaml-focusfix.js" type="text/javascript"></script>
</body>
</html>
