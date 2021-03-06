<!DOCTYPE html>
<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>

<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html;charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="requiresActiveX=true">
<title>현대자동차 CHATBOT</title>
<link
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css"
	rel="stylesheet">
<title></title>
<meta name="title" content="">
<meta name="description" content="">
<meta name="keywords" content="">
<meta name="description" content="">
<link rel="shortcut icon" type="image/x-icon" href="/img/favicon.ico">
<link rel="stylesheet" href="/css/jquery-ui.css" media="all">
<link rel="stylesheet" href="/css/wCommon.css" media="all">
<link rel="stylesheet" href="/css/chatBot.css" media="all">
<link href="http://bluemembers.hyundai.com/oc/hindex.jsp"
	rel="canonical" />
<link href="http://bluemembers.hyundai.com/oc/hindex.jsp"
	rel="alternate" hreflang="ko" />
<link rel="stylesheet" type="text/css"
	href="http://bluemembers.hyundai.com/oc/hmcss/style.css" />
<link rel="stylesheet" type="text/css"
	href="http://bluemembers.hyundai.com/oc/hmcss/calendar.css" />
<link rel="shortcut icon" type="image/x-icon"
	href="http://bluemembers.hyundai.com/oc/hmimages/BLUEmembers.ico" />
<link rel="apple-touch-icon"
	href="http://bluemembers.hyundai.com/oc/hmimages/hdr/h1_bluememebers.gif" />
<script type="text/javascript"
	src="http://bluemembers.hyundai.com/oc/hmjs/jquery.js"></script>
<script type="text/javascript"
	src="http://bluemembers.hyundai.com/oc/hmjs/jquery.alphanumeric.js"></script>
<script type="text/javascript"
	src="http://bluemembers.hyundai.com/oc/hmjs/common/common.js"></script>

<link rel="stylesheet" type="text/css"
	href="http://bluemembers.hyundai.com/oc/hmcss/main.css" />
<script type="text/javascript"
	src="https://code.jquery.com/jquery-1.10.2.min.js"></script>
<script type="text/javascript"
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
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
    (function () {
    var Message;
    
    Message = function (arg) {
        this.text = arg.text, this.message_side = arg.message_side;
        this.draw = function (_this) {
            return function () {
                var $message;
                $message = $($('.message_template').clone().html());
                $message.addClass(_this.message_side).find('.text').html(_this.text);
                $('.messages').append($message);
                return setTimeout(function () {
                    return $message.addClass('appeared');
                }, 0);
            };
        }(this);
        return this;
    };

    $(function () {
        var getMessageText, message_side, sendMessage;
        getMessageText = function () {
            var $message_input;
            $message_input = $('.message_input');
            return $message_input.val();
        };
        sendMessage = function (text, message_side) {
            var $messages, message;
            if (text.trim() === '') {
                return;
            }
            $('.message_input').val('');
            $messages = $('.messages');
            //message_side = message_side === 'left' ? 'right' : 'left';
            message = new Message({
                text: text,
                message_side: message_side
            });

            message.draw();
            return $messages.animate({ scrollTop: $messages.prop('scrollHeight') }, 300);
        };
        $('.send_message').click(function (e) {
            return watsonDialog(getMessageText(), true);
        });
        $('.message_input').keyup(function (e) {
            if (e.which === 13) {
                return watsonDialog(getMessageText(), true);
            }
        });

        /*
         * Watson Conversation
         */
        function watsonDialog(say, echo)
        {
           if ( echo == true)
               sendMessage(say, 'left');
           //by chy 수정
           $.ajax({
               type: "POST",
               contentType: "application/x-www-form-urlencoded; charset=UTF-8", 
               url: "/HkmcChatbot?say=" + say + "&lang=EN",
               dataType: "json",
               error: function () {
                   alert('통신실패!!');
               },
               success: function (data) {
                   sendMessage(data.results, 'right');
               }
           });
        }
        
        /* START */
        watsonDialog("hello", false);
    });         
    }.call(this));
    
    </script>
<body style="background-color: #e1e1e1;">
	<div class="mp-wrap">
		<div class="mp-header">
			<div class="mp-gnb">
				<input type="image" id="headerImg" src='/img/header.png'
					style='width: 100%; height: 35px;'>
			</div>
		</div>
		<div class="mp-contents-wrap">
			<div class="mp-contents2">

				<div class="mp-content-grid grid-type1">
					<div class="mp-control-col col-5">
						<div class="mp-table-type4" id="div01" style='text-align: center;'>
							<table>
		                        <tbody>
		                        	<tr>
										<td style='padding-top:30px;'><input type="image" src='/img/img_blankimg.png' style='margin-left:0%;height:150px;margin-bottom:20px;'></td>
			                        </tr>
			                        <tr>
	                        			<th id="tid" style='text-align: center;'>GilDONG HONG님 환영합니다.</th>
	                        		</tr>
			                        <tr>
			                        	<td style='padding-left:0px;padding-top:15px;'><input type="image" src='/img/Personality.png' style='width:85%;'></td>
			                        </tr>
		                        </tbody>
	                    	</table>
						</div>
					</div>
					<div class="mp-control-col col-6">
						<div class="mp-table-type4" id="div02">
							<div class="chat_window">							
								<div class="top_menu">
									<div class="buttons">
										<div class="button close"></div>
										<div class="button minimize"></div>
										<div class="button maximize"></div>
									</div>
									<div class="title">HYUNDAI MOTOR COMPANY</div>
								</div>
								<ul class="messages">
								</ul>
								<div class="bottom_wrapper clearfix">
									<div class="message_input_wrapper">
										<input class="message_input" placeholder="Enter your message...">
									</div>
									<div class="send_message">
										<div class="icon"></div>
										<div class="text">Send</div>
									</div>
								</div>
							</div>
							<div class="message_template">
								<li class="message">
									<div class="avatar"></div>
									<div class="text_wrapper">
										<div class="text"></div>
									</div>
								</li>
							</div>
						</div>
					</div>
					<div class="mp-control-col col-7">
						<div class="mp-table-type4" id="div03" style="text-align:center"></div>
					</div>
				</div>
				<!-- //mp-content-grid -->

			</div>
		</div>
	</div>
</body>
</html>