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
<script type="text/javascript" src="../js/line.js"></script>
<script type="text/javascript" src="../js/header.js"></script>
<script type="text/javascript" src="../js/isotope.pkgd.min.js"></script>
<script type="text/javascript" src="../js/wow.min.js"></script>
<script type="text/javascript">
$(function(){

$(window).scroll(function(){
	var a = $('.reference_wrap .number_wrap .number_data .number').height();
	var sct = $(this).scrollTop()

	if(sct > $('.ict04').offset().top && !$('.ict04').is('.open')){
		!$('.ict04').addClass('open');
		// 숫자
		var arr = [];
		$('.number').each(function(index){
		    var num = $(this).text();
		    num = Number(num);
		    arr.push(num);
		    $(this).animate({
		        //'background-position-y': num * - 120 + 'px'
				'background-position-y': num * a+2 + 'px'
		    },1000);
		});
	};
});

$(window).resize(function(){
	$(this).trigger('scroll')
});

})
</script>
</head>
<body>
<!-- wrap [시작] -->
<section id="wrap">

<%@include file="header.jsp" %>


<!-- container -->
<section id="container">
    <section id="content_wrap">
        <!-- ict01 -->
        <div class="content ict01" id="ict01">
            <div class="data_wrap">
                <div class="sub_title">
                    <span class="name wow fadeInUp" data-wow-duration="1.4s" data-wow-delay="0.1s">ict</span>
                    <span class="title wow fadeInUp" data-wow-duration="1.4s" data-wow-delay="0.3s">digital smart ict<br />global leader</span>
                    <span class="info wow fadeInUp" data-wow-duration="1.4s" data-wow-delay="0.6s">헬스케어에 최적화된 IT서비스는 물론 기업, 공공기관 등<br />분야의 경계를 허무르는 도전으로 ICT 트렌드를 이끌어 가고 있습니다.</span>
                </div>
                <div class="line_obj wow fadeIn" data-wow-duration="1.4s" data-wow-delay="0.3s">
                    <div class="obj01"><div class="d_t"><div class="d_c">자체<br />R&amp;D센터<br />보유</div></div></div>
                    <div class="obj02"><div class="d_t"><div class="d_c">토탈<br />컨설팅</div></div></div>
                    <div class="obj03"><div class="d_t"><div class="d_c">분야별<br />전문인력<br />보유</div></div></div>
                    <div class="obj04"><div class="d_t"><div class="d_c">시스템<br />통합기술<br />보유</div></div></div>
                    <div class="obj05"><div class="d_t"><div class="d_c">국내 최다<br />래퍼런스<br />보유</div></div></div>
                </div>
                <div class="line_data"></div>
            </div>
        </div>
        <!-- //ict01 -->
        <!-- ict02 -->
        <div class="content ict02" id="ict02">
            <div class="data_wrap">
                <div class="txt_wrap">
                    <h3 class="wow fadeInUp" data-wow-duration="1.4s" data-wow-delay="0.1s">ict 사업</h3>
                    <span class="txt_info wow fadeInUp" data-wow-duration="1.4s" data-wow-delay="0.2s">티플러스는 다양한 환경에 능동적으로 대처할 수 있는 노하우를 보유하고 있습니다.<br />빠른 대응력과 유연한 사고, 탁월한 기술력을 바탕으로 시장의 선두주자로 도약하고 있습니다.</span>
                </div>
                <div class="thumb_list">
                    <ul>
                        <li class="wow fadeInUp" data-wow-duration="1.4s" data-wow-delay="0.1s">
                            <div class="thumb"><img src="../images/content/sub03_dataCell02_obj01.jpg" alt="썸네일" /></div>
                            <dl>
                                <dt>유지관리</dt>
                                <dd>유지관리 서비스<br />- 정기점검, 품질관리, 성능분석, 복구</dd>
                                <dd>긴급지원 서비스 (4시간 이내)</dd>
        						<dd>인력지원 서비스<br />- 서비스데스크, 인력상주, 전산운영</dd>
        						<dd>시스템 및 패키지 소프트웨어 등의<br />장애처리 및 복구정보시스템(H/W, S/W)<br />라이선스 및 기술지원 확보</dd>
                            </dl>
                        </li>
                        <li class="wow fadeInUp" data-wow-duration="1.4s" data-wow-delay="0.2s">
                            <div class="thumb"><img src="../images/content/sub03_dataCell02_obj02.jpg" alt="썸네일" /></div>
                            <dl>
                                <dt>인프라서비스</dt>
                                <dd>IT 인프라 성능진단 및 컨설팅 서비스</dd>
                                <dd>IT 인프라 구축<br />- 서버, 스토리지, 소프트웨어, 네트워크, 백업</dd>
        						<dd>무중단 데이터 이관 작업</dd>
        						<dd>고객 전산시스템 운영에 필요한 IT플랫폼 및 IT자원 제공.운영</dd>
                                <dd>고객 사업의 연속성 보장을 위한 정보시스템 사용불능 피해 최소화 체계(DR) 지원</dd>
                            </dl>
                        </li>
                        <li class="wow fadeInUp" data-wow-duration="1.4s" data-wow-delay="0.3s">
                            <div class="thumb"><img src="../images/content/sub03_dataCell02_obj03.jpg" alt="썸네일" /></div>
                            <dl>
                                <dt>솔루션서비스</dt>
                                <dd>DR 및 VDI 솔루션 구축 및 유지관리</dd>
        						<dd>네트워크 통합 – L2/L3 스위치, 라우터</dd>
        						<dd>통합보안솔루션 - 방화벽/DDoS/ANTI Virus</dd>
        						<dd>의료영상저장전송시스템 구축 및 유지관리</dd>
        						<dd>방사선 피폭관리 시스템(Dose Tracker) 개발, 판매</dd>
                            </dl>
                        </li>
                        <li class="wow fadeInUp" data-wow-duration="1.4s" data-wow-delay="0.4s">
                            <div class="thumb"><img src="../images/content/sub03_dataCell02_obj04.jpg" alt="썸네일" /></div>
                            <dl>
                                <dt>SI/컨설팅</dt>
                                <dd>공공, 금융, 게임, 엔터프라이즈, 병의료, KOICA 사업 수행 </dd>
        						<dd>시스템 통합 구축 및 이전 사업</dd>
        						<dd>가상화 및 Cloud 구현 서비스 </dd>
        						<dd>교육정보화 ISP 사업</dd>
        						<dd>고객의 IT 추진계획에 대한 의사결정 및 전략수립 지원</dd>
        						<dd>효과적인 IT 아웃소싱 관리체계 수립</dd>
                            </dl>
                        </li>
                    </ul>
                </div>
                <div class="partner_wrap">
                    <span class="txt_title wow fadeInUp" data-wow-duration="1.4s" data-wow-delay="0.5s">해외 20여 개 기업의 PARTNER 인증 자격 보유</span>
                    <div class="thumb wow fadeInUp" data-wow-duration="1.4s" data-wow-delay="0.6s"><img src="../images/content/sub03_dataCell02_obj05.gif" alt="썸네일" /></div>
                    <span class="txt_info wow fadeInUp" data-wow-duration="1.4s" data-wow-delay="0.7s">티플러스는 주요 제조사로부터 IT전문기업으로서의 기술력과 역량을 인정 받아<br />주요 고객의 비즈니스 목표에 부합하는 품질 높고 안정적인 IT서비스를 제공합니다.</span>
                    <div class="partner_history wow fadeInUp" data-wow-duration="1.4s" data-wow-delay="0.8s">
                        <span>IBM  Reseller<br />IBM Business Partner<br />HP EG Platinum Partner<br />EMC 전문 기술지원 파트너 선정<br />ORACLE Business Partner<br />Cisco Silver 파트너<br />VMware Business Partner<br />기타</span>
                    </div>
                </div>
            </div>
        </div>
        <!-- //ict02 -->
        <!-- ict03 -->
        <div class="content ict03" id="ict03">
            <div class="data_wrap">
                <div class="txt_wrap">
                    <h3 class="wow fadeInUp" data-wow-duration="1.4s" data-wow-delay="0.1s">tplus tp server</h3>
                    <span class="txt_info wow fadeInUp" data-wow-duration="1.4s" data-wow-delay="0.2s">기술집약형 서버로 고객이 좀 더 쉽고 편리하게<br />가치 창출을 실현하도록 지원하겠습니다.</span>
                </div>
                <div class="line_list">
                    <ul>
                        <li class="wow fadeInUp" data-wow-duration="1s" data-wow-delay="0.3s">서비스 차별화</li>
                        <li class="wow fadeInUp" data-wow-duration="1s" data-wow-delay="0.4s">기술 집중화</li>
                        <li class="wow fadeInUp" data-wow-duration="1s" data-wow-delay="0.5s">제품 컨셉화</li>
                    </ul>
                </div>
                <div class="thumb_list">
                    <ul>
                        <li class="wow fadeInUp" data-wow-duration="1.4s" data-wow-delay="0.6s">
                            <div>
                                <div class="thumb"><img src="../images/content/sub03_dataCell04_obj02.jpg" alt="썸네일" /></div>
                                <dl>
                                    <dt><span>tp 2530</span> m2/1u</dt>
                                    <dd>E5-2620v4 8C/16T 2.10 GHz*2P</dd>
                                    <dd>16GB, SAS 300GB*2ea</dd>
                                    <dd>NIC 1G 4Port</dd>
                                    <dd>Dual PSU</dd>
                                </dl>
                            </div>
                        </li>
                        <li class="wow fadeInUp" data-wow-duration="1.4s" data-wow-delay="0.7s">
                            <div>
                                <div class="thumb"><img src="../images/content/sub03_dataCell04_obj03.jpg" alt="썸네일" /></div>
                                <dl>
                                    <dt><span>tp 2540</span> m2/2u</dt>
                                    <dd>E5-2620v4 8C/16T 2.10 GHz*2P</dd>
                                    <dd>16GB, SAS 300GB*2ea</dd>
                                    <dd>NIC 1G 4Port</dd>
                                    <dd>Dual PSU</dd>
                                </dl>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
        <!-- //ict03 -->
        <!-- ict04 -->
        <div class="content ict04" id="ict04">
            <div class="data_wrap">
                <div class="major_txt">
                    <h3 class="wow fadeInUp" data-wow-duration="1.4s" data-wow-delay="0.1s">major reference</h3>
                    <strong class="wow fadeInUp" data-wow-duration="1.4s" data-wow-delay="0.2s"><span>티플러스는 ICT 기술을 토대로</span><br />고객과 함께 성장하고 있습니다</strong>
                </div>
                <!-- number data -->
                <div class="reference_wrap">
                    <ul>
                        <li class="wow fadeInUp" data-wow-duration="1.4s" data-wow-delay="0.3s">
                            <div class="number_wrap">
                                <div class="number_data">
                                    <div class="number">5</div>
                                    <div class="number">0</div>
                                    <div class="number">0</div>
                                </div>
                                <span>여 개</span>
                            </div>
                            <dl>
        						<dt>HC래퍼런스</dt>
        						<dd>강남세브란스병원, 창원경상대학교병원,<br />분당서울대학교병원, 일산병원<br />차움건진센터 외 다수</dd>
        					</dl>
                        </li>
                        <li class="wow fadeInUp" data-wow-duration="1.4s" data-wow-delay="0.4s">
                            <div class="number_wrap">
                                <div class="number_data">
                                    <div class="number">3</div>
                                    <div class="number">0</div>
                                </div>
                                <span>개</span>
                            </div>
                            <dl>
        						<dt>공공래퍼런스</dt>
        						<dd>국가평생교육진흥원, 국군의무사령부,<br />한국감정원, 국립암센터, 한국농어촌공사,<br />한국환경공단 외 다수</dd>
        					</dl>
                        </li>
                        <li class="wow fadeInUp" data-wow-duration="1.4s" data-wow-delay="0.5s">
                            <div class="number_wrap">
                                <div class="number_data">
                                    <div class="number">3</div>
                                    <div class="number">0</div>
                                    <div class="number">2</div>
                                </div>
                                <span>개</span>
                            </div>
                            <dl>
        						<dt>기업래퍼런스</dt>
        						<dd>LS산전, 넥슨, 월드비젼, 소니코리아<br />노무라증권, 정림건축 외 다수</dd>
        					</dl>
                        </li>
                    </ul>
                </div>
                <!-- //number data -->
                <!-- history -->
                <div class="history">
                    <ul>
                        <li class="left wow fadeInUp" data-wow-duration="1.4s" data-wow-delay="0.1s">
                            <div>
                                <div class="step_title">2016</div>
                                <div class="step_txt">건강보험공단 일산병원 PACS 신규구축 건<br />경보제약 SAP ERP 가상화 구축 건<br />건강보험공단 일산병원 통합유지보수 건<br />종근당 통합유지보수 건<br />삼척시청 통합형 클라우드 광고 플랫폼 사업<br />한국벤처투자㈜ 종합정보시스템 관련 H/W 구축 사업 수행<br />SK 하이닉스 사내방송 유지보수 및 영상 제작<br />SK 하이닉스 M14 9F 사내방송 사업 수행</div>
                            </div>
                        </li>
                        <li class="right wow fadeInUp" data-wow-duration="1.4s" data-wow-delay="0.2s">
                            <div>
                                <div class="step_title">2015</div>
                                <div class="step_txt">원주세브란스기독병원 PACS시스템 업그레이드 사업 수행<br />창원경상대학교병원 PACS시스템 구축 사업 수행<br />동국대학교 글로벌 문화 관광 송출시스템 구축 및 유지보수<br />노무라증권 전산시스템 유지보수</div>
                            </div>
                        </li>
                        <li class="left wow fadeInUp" data-wow-duration="1.4s" data-wow-delay="0.3s">
                            <div>
                                <div class="step_title">2014</div>
                                <div class="step_txt">동수원병원 PACS솔루션 업그레이드 사업 수행<br />VMware Professional Partner 선정<br />Microsoft Silver Certified Partner 선정<br />차병원 DOSE TRACKER 솔루션 공급</div>
                            </div>
                        </li>
                        <li class="right wow fadeInUp" data-wow-duration="1.4s" data-wow-delay="0.4s">
                            <div>
                                <div class="step_title">2013</div>
                                <div class="step_txt">벤처기업확인서 선정<br />EMC 매출부문 우수파트너 선정</div>
                            </div>
                        </li>
                        <li class="left wow fadeInUp" data-wow-duration="1.4s" data-wow-delay="0.5s">
                            <div>
                                <div class="step_title">2012</div>
                                <div class="step_txt">넥슨 본사 및 32개 그룹사 2012~2013년 통합구매 서버 공급사 선정<br />서울 삼성병원 서버 유지관리 계약체결</div>
                            </div>
                        </li>
                    </ul>
                </div>
                <!-- //history -->
            </div>
        </div>
        <!-- //ict04 -->
    </section>
</section>
<!-- //container -->

<!-- 페이지 네비게이션 -->
<div id="pageNav">
<ol>
    <li class="on"><a href="">1</a></li>
    <li><a href="">2</a></li>
    <li><a href="">3</a></li>
    <li><a href="">4</a></li>
</ol>
</div>
<!--//페이지 네비게이션 -->

<%@include file="footer.jsp" %>

</section>
<!-- //wrap [종료] -->
</body>
</html>
