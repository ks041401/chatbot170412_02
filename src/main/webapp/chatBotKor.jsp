<!DOCTYPE html>
<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" %>

<html>
    <head>
    <meta charset="utf-8">
    <title></title>
    <meta http-equiv="X-UA-Compatible" content="IE=Edge, chrome=1">
    <meta name="title" content="">
    <meta name="description" content="">
    <meta name="keywords" content="">
    <meta name="description" content="">
    <link rel="shortcut icon" type="image/x-icon" href="/img/favicon.ico">
    <link rel="stylesheet" href="/css/jquery-ui.css" media="all">
    <link rel="stylesheet" href="/css/wCommon.css" media="all">
    <link href="http://bluemembers.hyundai.com/oc/hindex.jsp" rel="canonical" />
	<link href="http://bluemembers.hyundai.com/oc/hindex.jsp" rel="alternate" hreflang="ko" />
	<link rel="stylesheet" type="text/css" href="http://bluemembers.hyundai.com/oc/hmcss/style.css" />
	<link rel="stylesheet" type="text/css" href="http://bluemembers.hyundai.com/oc/hmcss/calendar.css"/>
	<link rel="shortcut icon" type="image/x-icon" href="http://bluemembers.hyundai.com/oc/hmimages/BLUEmembers.ico"/>
	<link rel="apple-touch-icon" href="http://bluemembers.hyundai.com/oc/hmimages/hdr/h1_bluememebers.gif"/>
	<script type="text/javascript" src="http://bluemembers.hyundai.com/oc/hmjs/jquery.js"></script>
	<script type="text/javascript" src="http://bluemembers.hyundai.com/oc/hmjs/jquery.alphanumeric.js"></script>
	<script type="text/javascript" src="http://bluemembers.hyundai.com/oc/hmjs/common/common.js"></script>

	<link rel="stylesheet" type="text/css" href="http://bluemembers.hyundai.com/oc/hmcss/main.css" />
	
    
    <script type="text/javascript" src="/js/jquery-1.11.3.min.js"></script>
    <script type="text/javascript" src="/js/jquery-ui.js"></script>
    <script type="text/javascript" src="/js/common.js"></script>
    <script type="text/javascript" src="/js/common.ui.js"></script>
    </head>
    <script type="text/javascript">
    $(document).ready(function(){
    	$("#headerImg").on("click",function(){
    		var leftFrame = '<input type="image" src="/img/wva.png" class="mp-input-wat">';

            var trHtml = $("#div01");
            var trHtml1 = $("#div03");

            trHtml.append(leftFrame);
            trHtml1.append(leftFrame);
        });
    });

    </script>
    <body style="background-color:#e1e1e1;">
    <div class="mp-wrap">
	    <div class="mp-header">
	        <div class="mp-gnb">
	            <input type="image" id="headerImg" src='/img/header.png' style='width:100%;height:35px;'>
	        </div>
	    </div>
	    <div class="mp-contents-wrap">
		    <div class="mp-contents2">
	
	        <div class="mp-content-grid grid-type1">
	            <div class="mp-control-col col-5">
	                <div class="mp-table-type4" id="div01" style="text-align:center;">
	                </div>
	            </div>
	            <div class="mp-control-col col-6">
	                <div class="mp-table-type4" id="div02">
	                </div>
	            </div>
	            <div class="mp-control-col col-7">
	                <div class="mp-table-type4" id="div03" style="text-align:center;">
	                </div>
	            </div>
	        </div><!-- //mp-content-grid -->
	
	    	</div>
	    </div>
	</div>
    </body>
</html>