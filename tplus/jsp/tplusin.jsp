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
<script type="text/javascript" src="../js/header.js"></script>
<script type="text/javascript" src="../js/isotope.pkgd.min.js"></script>
<script type="text/javascript" src="../js/wow.min.js"></script>
</head>
<body>
<!-- wrap [시작] -->
<section id="wrap">

<%@include file="header.jsp" %>

<!-- container -->
<section id="container">
    <section id="content_wrap">
        <!-- tplusin01 -->
        <div class="content tplusin01" id="tplusin01">
            <div class="data_wrap">
                <div class="visual">
                    <div class="sub_title">
                        <span class="name wow fadeInUp" data-wow-duration="1.4s" data-wow-delay="0.1s">tplus-in</span>
                        <span class="title wow fadeInUp" data-wow-duration="1.4s" data-wow-delay="0.3s">add one</span>
                        <span class="info wow fadeInUp" data-wow-duration="1.4s" data-wow-delay="0.6s">&quot;트렌드에 하나를 더하자&quot;</span>
                    </div>
                </div>
                <div class="txt_wrap">
                    <h3 class="wow fadeInUp" data-wow-duration="1s" data-wow-delay="0.1s">티플러스는 생각합니다.</h3>
                    <ul>
                        <li class="wow fadeInUp" data-wow-duration="1s" data-wow-delay="0.2s">사람에게 투자하는 것을 아까워하지 않고,<br />분야의 전문성을 갖추기 위해 항상 생각합니다.</li>
                        <li class="wow fadeInUp" data-wow-duration="1s" data-wow-delay="0.3s">개인과 가정의 희생을 바라지 않으며,<br />개인과 가정의 만족이 함께 올라가는 것을 생각합니다.</li>
                        <li class="wow fadeInUp" data-wow-duration="1s" data-wow-delay="0.4s">기존 트렌드에 만족하지 않고,<br />새로운 가치를 더하기 위해 생각합니다.</li>
                    </ul>
                </div>
            </div>
        </div>
        <!-- //tplusin01 -->
        <!-- tplusin02 -->
        <div class="content tplusin02" id="tplusin02">
            <div class="data_wrap">
                <div class="txt_wrap wow fadeInUp" data-wow-duration="1s" data-wow-delay="0.1s">
                    <h3>건강하고 젊은 기업 티플러스는<br />더 나은 세상을 위해 <br />함께 나누는 기업문화를 만들겠습니다.</h3>
                </div>
                <div class="thumb_list">
                    <ul>
                        <li class="wow fadeInUp" data-wow-duration="1s" data-wow-delay="0.2s">
                            <div class="thumb"><img src="../images/content/sub05_dataCell03_obj02.jpg" alt="썸네일" /></div>
                            <dl>
                                <dt>가족들이<br />자랑스러워 하는 회사</dt>
                                <dd>‘가족친화경영’도입으로 출산육아지원, 어린이집 · 유치원 등의 보육수당을 지원하고 있습니다.</dd>
                            </dl>
                        </li>
                        <li class="wow fadeInUp" data-wow-duration="1s" data-wow-delay="0.3s">
                            <div class="thumb"><img src="../images/content/sub05_dataCell03_obj03.jpg" alt="썸네일" /></div>
                            <dl>
                                <dt>자신에게 투자하는 것을 <br />장려하는 회사</dt>
                                <dd>통신비 지원, 동호회 지원, 종합건강검진 지원 등 개인의 건강과 리프레쉬의 시간을 소중히 생각하고 있습니다.</dd>
                            </dl>
                        </li>
                        <li class="wow fadeInUp" data-wow-duration="1s" data-wow-delay="0.4s">
                            <div class="thumb"><img src="../images/content/sub05_dataCell03_obj04.jpg" alt="썸네일" /></div>
                            <dl>
                                <dt>삶과 일의 조화로운 균형을<br />지향하는 회사</dt>
                                <dd>시차출퇴근제, 휴일근무자 대체휴무 지급, 연월차 촉진제도 운영과 부산지사, 제주도지사의 개방을 지원하고 있습니다.</dd>
                            </dl>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
        <!-- //tplusin02 -->
    </section>
</section>
<!-- //container -->

<!-- 페이지 네비게이션 -->
<div id="pageNav">
    <ol>
        <li class="on"><a href="">1</a></li>
        <li><a href="">2</a></li>
    </ol>
</div>
<!--//페이지 네비게이션 -->

<%@include file="footer.jsp" %>

</section>
<!-- //wrap [종료] -->
</body>
</html>
