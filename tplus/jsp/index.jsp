<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" lang="ko" xml:lang="ko">
<head>
<title>티플러스</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<link rel="shortcut icon" href="../images/favicon.ico">
<link rel="stylesheet" type="text/css" href="http://fonts.googleapis.com/css?family=Roboto:100,300,400,700">
<link rel="stylesheet" type="text/css" href="http://fonts.googleapis.com/earlyaccess/notosanskr.css">
<link rel="stylesheet" type="text/css" href="../css/import.css">
<script src="https://code.jquery.com/jquery-1.12.4.min.js" integrity="sha256-ZosEbRLbNQzLpnKIkEdrPv7lOy9C27hHQ+Xp8a4MxAQ=" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/gsap/1.19.1/TweenMax.min.js"></script>
<script type="text/javascript" src="../js/script.js"></script>
<script type="text/javascript" src="../js/main.js"></script>
<script type="text/javascript" src="../js/header.js"></script>
<script type="text/javascript" src="../js/jquery.easing.1.3.js"></script>
<script type="text/javascript" src="../js/jquery.bxslider.min.js"></script>
<script type="text/javascript" src="../js/wow.min.js"></script>
</head>
<body>
<!-- wrap [시작] -->
<section id="wrap">

<%@include file="header.jsp" %>

<!-- main -->
<section id="main">
    <!-- main_visual -->
	<section id="main_visual">
		<div class="big_wrap" id="BIG_DATA">
			<div class="txt_cell"><p>HEALTHCARE</p><p>PLATFORM</p><p>EXPERT</p></div>
			<div class="txt_cell"><p>DIGITAL</p><p>SMART ICT</p><p>GLOBAL</p><p>LEADER</p></div>
			<div class="txt_cell"><p>TPLUS</p><p>SERVICE</p><p>BEYOND</p><p>THINKING</p></div>
		</div>
		<div class="visual_wrap" id="VISUAL_DATA">
			<div class="visual01"></div>
			<div class="visual02"></div>
			<div class="visual03"></div>
		</div>
		<div class="page" id="PAGE">
			<div class="btn_data">
				<div class="first none"></div>
				<div class="btn01">
					<div class="thumb">
						<div class="line"></div>
						<div class="icon">
							<p class="on"><img src="../images/content/btn_main_visual_icon01_on.png" alt=""/></p>
							<p class="off"><img src="../images/content/btn_main_visual_icon01_off.png" alt=""/></p>
						</div>
					</div>
					<div class="txt">
						<p class="txt01">HEALTHCARE IT</p>
						<p class="txt02">Healthcare<br>Platform Expert</p>
					</div>
				</div>
				<div class="btn02">
					<div class="thumb">
						<div class="line"></div>
						<div class="icon">
							<p class="on"><img src="../images/content/btn_main_visual_icon02_on.png" alt=""/></p>
							<p class="off"><img src="../images/content/btn_main_visual_icon02_off.png" alt=""/></p>
						</div>
					</div>
					<div class="txt">
						<p class="txt01">ICT</p>
						<p class="txt02">Digital Smart ICT<br>Global Leader</p>
					</div>
				</div>
				<div class="btn03">
					<div class="thumb">
						<div class="line"></div>
						<div class="icon">
							<p class="on"><img src="../images/content/btn_main_visual_icon03_on.png" alt=""/></p>
							<p class="off"><img src="../images/content/btn_main_visual_icon03_off.png" alt=""/></p>
						</div>
					</div>
					<div class="txt">
						<p class="txt01">SERVICE+</p>
						<p class="txt02">TPLUS Service<br>Beyond Thinking</p>
					</div>
				</div>
				<div class="last none"></div>
			</div>
		</div>
		<div class="page_line" id="P_LINE"></div>
		<div class="bottom_line" id="B_LINE"></div>
		<p class="bg"></p>
		<div id="LOAD_BAR"></div>
	</section>
	<!-- //main_visual -->

    <!-- main customer -->
    <section class="main_cust">
        <div class="txt_wrap">
            <h2>about tplus</h2>
            <strong>global healthcare it leader</strong>
            <span class="txt_info">티플러스는 병원에서 필요한 모든 헬스케어 IT분야, 개인 건강관리와 진단에 필요한 시스템을 연구하고 개발하고 있습니다.</span>
            <div class="btn"><a href="javascript:void(0)" class="btn_more">MORE</a></div>
        </div>
        <ul>
            <!-- 배너 01  -->
            <li>
                <div class="cust_item">
                    <a href="javascript:void(0)" class="btn_more"><span class="first">news room</span><span>회사소식</span></a>
                    <div class="bg"></div>
                    <div class="thumb"><img src="../images/content/main_customer_visual01.jpg" alt="썸네일" /></div>
                </div>
            </li>
            <!-- 배너 02 -->
            <li>
                <div class="slide_list_wrap">
                    <!-- list -->
                    <ul class="slide">
                        <li class="on">
                            <div class="cust_item">
                                <a href="javascript:void(0)" class="btn_more"><span class="first">tplus hie</span><span>tplus hie</span></a>
                                <div class="bg"></div>
                                <div class="thumb"><img src="../images/content/main_customer_visual02_01.jpg" alt="썸네일" /></div>
                            </div>
                        </li>
                        <li>
                            <div class="cust_item">
                                <a href="javascript:void(0)" class="btn_more"><span class="first">tplus ix</span><span>tplus ix</span></a>
                                <div class="bg"></div>
                                <div class="thumb"><img src="../images/content/main_customer_visual02_02.jpg" alt="썸네일" /></div>
                            </div>
                        </li>
                        <li>
                            <div class="cust_item">
                                <a href="javascript:void(0)" class="btn_more"><span class="first">dose tracker</span><span>dose tracker</span></a>
                                <div class="bg"></div>
                                <div class="thumb"><img src="../images/content/main_customer_visual02_03.jpg" alt="썸네일" /></div>
                            </div>
                        </li>
                        <li>
                            <div class="cust_item">
                                <a href="javascript:void(0)" class="btn_more"><span class="first">tplus pacs</span><span>tplus pacs</span></a>
                                <div class="bg"></div>
                                <div class="thumb"><img src="../images/content/main_customer_visual02_04.jpg" alt="썸네일" /></div>
                            </div>
                        </li>
                    </ul>
                    <!-- //list -->
                    <!-- page -->
                    <div class="slide_page_wrap">
                        <div class="slide_page">
                            <div class="page on"><a href="javascript:void(0)">1</a></div>
                            <div class="page"><a href="javascript:void(0)">2</a></div>
                            <div class="page"><a href="javascript:void(0)">3</a></div>
                            <div class="page"><a href="javascript:void(0)">4</a></div>
                        </div>
                    </div>
                    <!-- //page -->
                </div>
            </li>
            <!-- 배너 03 -->
            <li>
                <div class="cust_item">
                    <a href="javascript:void(0)" class="btn_more"><span class="first">help desk</span><span>담당자 문의</span></a>
                    <div class="bg"></div>
                    <div class="thumb"><img src="../images/content/main_customer_visual03.jpg" alt="썸네일" /></div>
                </div>
            </li>
            <!-- 배너 04 -->
            <li>
                <div class="cust_item">
                    <a href="javascript:void(0)" class="btn_more"><span class="first">tplus-in</span><span>기업문화</span></a>
                    <div class="bg"></div>
                    <div class="thumb"><img src="../images/content/main_customer_visual04.jpg" alt="썸네일" /></div>
                </div>
            </li>
        </ul>
    </section>
    <!-- //main customer -->
</section>
<!-- //main -->

<%@include file="footer.jsp" %>

</section>
<!-- //wrap [종료] -->
</body>
</html>
