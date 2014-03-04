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
 $(".group1_1").colorbox({language:'cn', rel:'group1_1', singlePath:"./images/NewArrival/", title:"最新产品", width:"850px", height:"450px", onOpen:pauseCycle, onClosed:resumeCycle, onComplete:addZoom});
 $(".group1_2").colorbox({language:'cn', rel:'group1_2', singlePath:"./images/NaturalWorld/", title:"手工经典", width:"850px", height:"450px", onOpen:pauseCycle, onClosed:resumeCycle, onComplete:addZoom});
 $(".group1_3").colorbox({language:'cn', rel:'group1_3', singlePath:"./images/LadyElegance/", title:"雅致俪人", width:"850px", height:"450px", onOpen:pauseCycle, onClosed:resumeCycle, onComplete:addZoom});
 $(".group1_4").colorbox({language:'cn', rel:'group1_4', singlePath:"./images/CitySenior/", title:"都市白领", width:"850px", height:"450px", onOpen:pauseCycle, onClosed:resumeCycle, onComplete:addZoom});
 $(".group1_5").colorbox({language:'cn', rel:'group1_5', singlePath:"./images/FashionTrend/", title:"时尚先锋", width:"850px", height:"450px", onOpen:pauseCycle, onClosed:resumeCycle, onComplete:addZoom});
 $(".group2_1").colorbox({language:'cn', rel:'group2_1', hasSecondFlg: false, title:"2014 春夏", onOpen:pauseCycle, onClosed:resumeCycle});
 $(".group2_2").colorbox({language:'cn', rel:'group2_2', hasSecondFlg: false, title:"2013 秋冬", onOpen:pauseCycle, onClosed:resumeCycle});
 $(".group2_3").colorbox({language:'cn', rel:'group2_3', hasSecondFlg: false, title:"2013 春夏", onOpen:pauseCycle, onClosed:resumeCycle});
 $(".group2_4").colorbox({language:'cn', rel:'group2_4', hasSecondFlg: false, title:"2012 秋冬", onOpen:pauseCycle, onClosed:resumeCycle});
 $(".group2_5").colorbox({language:'cn', rel:'group2_5', hasSecondFlg: false, title:"2012 春夏", onOpen:pauseCycle, onClosed:resumeCycle});
 $(".group2_6").colorbox({language:'cn', rel:'group2_6', hasSecondFlg: false, title:"2011 秋冬", onOpen:pauseCycle, onClosed:resumeCycle});
 $(".group3_1").colorbox({language:'cn', rel:'group3_1', hasSecondFlg: false, onOpen:pauseCycle, onClosed:resumeCycle});
 $(".group4_1").colorbox({language:'cn', rel:'group4_1', hasSecondFlg: false, onOpen:pauseCycle, onClosed:resumeCycle});
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

  <li><a href="#">系列产品</a>
    <ul class="dir">
	
<% 
set fso = CreateObject("Scripting.FileSystemObject")

dim group1Arr(5,3)
group1Arr(0,0)="group1_1"
group1Arr(0,1)="./images/NewArrival/"
group1Arr(0,2)="最新产品"
group1Arr(1,0)="group1_2"
group1Arr(1,1)="./images/NaturalWorld/"
group1Arr(1,2)="手工经典"
group1Arr(2,0)="group1_3"
group1Arr(2,1)="./images/LadyElegance/"
group1Arr(2,2)="雅致俪人"
group1Arr(3,0)="group1_4"
group1Arr(3,1)="./images/CitySenior/"
group1Arr(3,2)="都市白领"
group1Arr(4,0)="group1_5"
group1Arr(4,1)="./images/FashionTrend/"
group1Arr(4,2)="时尚先锋"

dim index1,index2
dim tempArray()
dim tempKeyNameArray()

dim finalArray(25,8)
dim index3, index4
dim nameList

dim m
for m=0 to 4
Set group1Folder = fso.GetFolder(Server.MapPath(group1Arr(m,1)))
set group1Files = group1Folder.Files

redim tempArray(200)
redim tempKeyNameArray(25)
index1=0
index2=0
for each fileItem in group1Files
sFileName = fileItem.Name
if left(sFileName,3)="po_" then
 tempArray(index1) = right(sFileName, 11)
 index1 = index1 + 1
  if right(sFileName,6)="_1.jpg" then
   tempKeyNameArray(index2) = mid(sFileName, 4, 5)
   index2= index2 + 1
  end if
end if

next


index3=0
for each tempKeyItem in tempKeyNameArray 
 index4=0
 if tempKeyItem<>"" then
 for each tempItem in tempArray
  if tempItem<>"" then
  if tempKeyItem=left(tempItem, 5) then
     finalArray(index3, index4) = tempItem
	 index4 = index4 + 1
  end if
  end if
 next
 index3 = index3 + 1
 end if
next


response.write("<li>")


for index3=0 to 25
 if finalArray(index3,0)="" then 
  exit for
 end if

 nameList=""
 maxNum=0
 for index4=0 to 8
  if finalArray(index3, index4)="" then 
   maxNum=index4
   exit for
  end if
  if index4 <> 0 then  nameList = nameList & "," end if
  nameList=nameList & finalArray(index3, index4)
 next
 
 if index3=0 then
  response.write("<a class=""" & group1Arr(m,0) & """ href=""" & group1Arr(m,1) & "po_"& finalArray(index3,0) & """ singleList=""" & nameList & """>" & group1Arr(m,2) &"</a>")
 elseif index3=1 then
  response.write("<div style=""display:none"">")
  response.write("<a class=""" & group1Arr(m,0) & """ href=""" & group1Arr(m,1) & "po_"& finalArray(index3,0) & """ singleList=""" & nameList & """></a>")
 elseif index=maxNum then
  response.write("<a class=""" & group1Arr(m,0) & """ href=""" & group1Arr(m,1) & "po_"& finalArray(index3,0) & """ singleList=""" & nameList & """></a>")
  response.write("</div>")
 else 
  response.write("<a class=""" & group1Arr(m,0) & """ href=""" & group1Arr(m,1) & "po_"& finalArray(index3,0) & """ singleList=""" & nameList & """></a>")
 end if
next

erase tempArray
erase tempKeyNameArray
erase finalArray

response.write("</li>")
next
%>

	</ul>
  </li>
  
  <li><a href="#">主题欣赏</a>
    <ul class="dir">

	  
<% dim group2Arr(6,3)
group2Arr(0,0)="group2_1"
group2Arr(0,1)="./images/2014SS/"
group2Arr(0,2)="2014 春夏"

group2Arr(1,0)="group2_2"
group2Arr(1,1)="./images/2013AW/"
group2Arr(1,2)="2013 秋冬"

group2Arr(2,0)="group2_3"
group2Arr(2,1)="./images/2013SS/"
group2Arr(2,2)="2013 春夏"

group2Arr(3,0)="group2_4"
group2Arr(3,1)="./images/2012AW/"
group2Arr(3,2)="2012 秋冬"

group2Arr(4,0)="group2_5"
group2Arr(4,1)="./images/2012SS/"
group2Arr(4,2)="2012 春夏"

group2Arr(5,0)="group2_6"
group2Arr(5,1)="./images/2011FW/"
group2Arr(5,2)="2011 秋冬"




dim i
for i=0 to 5

response.write "<li>"

Set group2Folder = fso.GetFolder(Server.MapPath(group2Arr(i,1)))
set group2Files = group2Folder.Files

dim index
index=1
for each fileItem in group2Files
sFileName = fileItem.Name

if index=1 then
response.write("<a class=""" & group2Arr(i,0) & """ href=""" & group2Arr(i,1) & sFileName & """>" & group2Arr(i,2) &"</a>")
elseif index=2 then
response.write("<div style=""display:none"">")
response.write("<a class=""" & group2Arr(i,0) & """ href=""" & group2Arr(i,1) & sFileName & """></a>")
elseif index=group2Files.Count then
response.write("<a class=""" & group2Arr(i,0) & """ href=""" & group2Arr(i,1) & sFileName & """></a>")
response.write("</div>")
else 
response.write("<a class=""" & group2Arr(i,0) & """ href=""" & group2Arr(i,1) & sFileName & """></a>")
end if
index = index + 1
next

response.write("</li>")
next
%>
	</ul>
  </li>
  
  <li><a href="#">关于我们</a>
    <ul class="dir">
	  <li><a class="group3_1" href="images/home/brandstoryCN.jpg">品牌故事</a></li>
	</ul>
  </li>
  
  <li><a href="#">店铺形象</a>
    <ul class="dir">
	  <li><a class="iframe" href="StoreLocatorCN.html">店铺地址</a></li>
	</ul>
  </li>
  
  <li><a href="#">客户服务</a>
    <ul class="dir">
	  <li><a class="iframe" href="ProductCareCN.html">产品护理</a></li>
	  <li><a class="iframe" href="RegistrationFormCN.html">邮件/注册</a></li>
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
