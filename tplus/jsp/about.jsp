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
<link rel="stylesheet" type="text/css" href="../css/swiper.min.css">
<script src="https://code.jquery.com/jquery-1.12.4.min.js" integrity="sha256-ZosEbRLbNQzLpnKIkEdrPv7lOy9C27hHQ+Xp8a4MxAQ=" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/gsap/1.19.1/TweenMax.min.js"></script>
<script type="text/javascript" src="../js/script.js"></script>
<script type="text/javascript" src="../js/line.js"></script>
<script type="text/javascript" src="../js/header.js"></script>
<script type="text/javascript" src="../js/isotope.pkgd.min.js"></script>
<script type="text/javascript" src="../js/swiper.min.js"></script>
<script type="text/javascript" src="../js/wow.min.js"></script>
<script type="text/javascript">
$(function(){

$(window).scroll(function(){
	var a = $('.reference_wrap .number_wrap .number_data .number').height();
	var sct = $(this).scrollTop()

	if(sct > $('.about04').offset().top && !$('.about04').is('.open')){
		!$('.about04').addClass('open');
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
        <!-- about01 -->
        <div class="content about01" id="about01">
            <div class="data_wrap">
                <div class="sub_title">
                    <span class="name wow fadeInUp" data-wow-duration="1.4s" data-wow-delay="0.1s">about tplus</span>
                    <span class="title wow fadeInUp" data-wow-duration="1.4s" data-wow-delay="0.3s">global<br />healthcare it<br />leader</span>
                    <span class="info wow fadeInUp" data-wow-duration="1.4s" data-wow-delay="0.6s">티플러스는 병원에서 필요한 모든 헬스케어 IT분야, 개인 건강관리와 진단에 필요한 시스템을<br />연구하고 개발하여 병원 digital system을 실현하는 글로벌 헬스케어 IT 리딩기업이 되겠습니다.</span>
                </div>
            </div>
            <div class="line_obj wow fadeIn" data-wow-duration="1.4s" data-wow-delay="0.3s">
                <div class="obj01_a"><div class="d_t"><div class="d_c">HEALTHCARE<br />IT</div></div></div>
                <div class="obj02_a"><div class="d_t"><div class="d_c">ICT</div></div></div>
                <div class="obj03_a"><div class="d_t"><div class="d_c">SERVICE +</div></div></div>
            </div>
            <div class="line_data"></div>
        </div>
        <!-- //about01 -->
        <!-- about02 -->
        <div class="content about02" id="about02">
            <div class="data_wrap">
                <div class="txt_wrap">
                    <h3 class="wow fadeInUp" data-wow-duration="1s" data-wow-delay="0.1s">better technology<br /><span>beyond world</span></h3>
                    <span class="ceo_intro wow fadeInUp" data-wow-duration="1s" data-wow-delay="0.2s">헬스케어 솔루션 분야 NO1, 티플러스는 헬스케어와 IT기술의 융합을 넘어 Bigdata와 HIE(진료정보교류) 기술을 기반으로 머신 러닝과 PACS시스템을 통해 99.9% 정확한 진단이 가능한 의료 영상콘텐츠 개발에 주력하고 있습니다.<br />향후 티플러스는 인공지능 세상을 열어 개인 맞춤 의료 &amp; 자가 진단 서비스 등 개인 건강 관리에 집중한 토탈 헬스케어의 근간이 되는 기업으로 도약하겠습니다.</span>
                    <span class="ceo_name wow fadeInUp" data-wow-duration="1.4s" data-wow-delay="0.2s">대표이사 이정호</span>
                    <span class="ceo_sign wow fadeInUp" data-wow-duration="1.4s" data-wow-delay="0.3s"><img src="../images/content/ceo_sign.png" alt="대표이사 서명" /></span>
                </div>
            </div>
            <div class="visual_wrap">
                <div class="thumb wow fadeInRight" data-wow-duration="1.4s" data-wow-delay="0.2s"><img src="../images/content/tplus02_ceo.jpg" alt=""></div>
            </div>
        </div>
        <!-- //about02 -->
        <!-- about03 -->
        <div class="content about03" id="about03">
			<div class="data_wrap">
				<div class="line_obj">
					<div class="obj01">
						<div class="thumb"><img src="../images/content/tplus03_obj01.jpg" alt=""/></div>
						<div class="txt">
							<p class="txt01">CHALLENGE</p>
							<p class="txt02">진보적이고 앞서가는 병원 Digital System을 실현시키겠습니다.</p>
						</div>
					</div>
					<div class="obj02">
						<div class="thumb"><img src="../images/content/tplus03_obj02.jpg" alt=""/></div>
						<div class="txt">
							<p class="txt01">TREND+</p>
							<p class="txt02">정밀한 트렌드 분석에  선진형 기술을 더하여 글로벌 Trend를 선도하겠습니다.</p>
						</div>
					</div>
					<div class="obj03">
						<div class="thumb"><img src="../images/content/tplus03_obj03.jpg" alt=""/></div>
						<div class="txt">
							<p class="txt01">PRIDE</p>
							<p class="txt02">세계적인 수준의 R&amp;D제품을 개발하고 차별화된 ICT기술을 연구하여 미래성장동력을 창출하겠습니다.</p>
						</div>
					</div>
					<div class="obj04">
						<div class="thumb"><img src="../images/content/tplus03_obj04.jpg" alt=""/></div>
						<div class="txt">
							<p class="txt01">CONVERGENCE</p>
							<p class="txt02">건강데이터와 의료데이터 조합을 바탕으로 ‘개인맞춤정밀의료’를 실현하겠습니다.</p>
						</div>
					</div>
				</div>
			</div>
			<div class="line_data"></div>
        </div>
        <!--// about03 -->
        <!-- about04 -->
        <div class="content about04" id="about04">
            <div class="data_wrap">
                <div class="major_txt wow fadeInUp" data-wow-duration="1.4s" data-wow-delay="0.1s">
                    <strong>세상의 가치를 키우는 기술로<br /><span>더 나은 세상을 만드는 기업</span></strong>
                </div>
                <!-- number data -->
                <div class="reference_wrap">
                    <ul>
                        <li class="wow fadeInUp" data-wow-duration="1.4s" data-wow-delay="0.2s">
                            <div class="number_wrap">
                                <div class="number_data">
                                    <div class="number">5</div>
                                    <div class="number">0</div>
                                    <div class="number">0</div>
                                </div>
                                <span>여 개</span>
                            </div>
                            <dl>
                                <dt>헬스케어 파트너</dt>
                                <dd>국내 주요 대형병원 , 중소형병원 , 국군병원 등<br />500여 개 의료기관에 TPLUS의 의료정보솔루션 제공</dd>
                            </dl>
                        </li>
                        <li class="wow fadeInUp" data-wow-duration="1.4s" data-wow-delay="0.3s">
                            <div class="number_wrap">
                                <div class="number_data">
                                    <div class="number">3</div>
                                    <div class="number">6</div>
                                    <div class="number">0</div>
                                </div>
                                <span>억</span>
                            </div>
                            <dl>
                                <dt>2015 매출액</dt>
                                <dd>진료정보교류분야 1호 기업<br />의료방사선선량관리 선두기업<br />Connectathon 국제 기술 인증 획득<br />이란 및 중동 헬스케어 시장 진출</dd>
                            </dl>
                        </li>
                        <li class="wow fadeInUp" data-wow-duration="1.4s" data-wow-delay="0.4s">
                            <div class="number_wrap">
                                <div class="number_data">
                                    <div class="number">3</div>
                                    <div class="number">2</div>
                                    <div class="number">3</div>
                                </div>
                                <span>억</span>
                            </div>
                            <dl>
                                <dt>2015년 총자산</dt>
                                <dd>해외 20여 개 기업의 PARTNER 인증 자격 보유<br />ISO9001, INNOBIZ, 벤처기업 확인서 등 다수 인증서 보유</dd>
                            </dl>
                        </li>
                        <li class="wow fadeInUp" data-wow-duration="1.4s" data-wow-delay="0.5s">
                            <div class="number_wrap">
                                <div class="number_data">
                                    <div class="number">1</div>
                                    <div class="number">0</div>
                                    <div class="number">0</div>
                                </div>
                                <span>명</span>
                            </div>
                            <dl>
                                <dt>2016년 임직원수</dt>
                                <dd>국내 유일의 Healthcare 전반에 걸친 전문가 집단<br />인력의 65% (65명/100명)가 Healthcare 관련<br />R&amp;D / Tech Support 팀으로 구성</dd>
                            </dl>
                        </li>
                    </ul>
                </div>
                <!-- //number data -->
            </div>
        </div>
        <!-- //about04 -->
        <!-- about05 -->
        <div class="content about05" id="about05">
            <div class="data_wrap">
                <!-- Slide -->
                <div class="slide">
                    <!-- Swiper -->
                    <div class="swiper-container">
                        <div class="swiper-wrapper">
                            <div class="slide_line"></div>
                            <div class="swiper-slide">
                                <div class="year_num_wrap">
                                    <div class="year_num">
                                        <div class="num">2016</div>
                                        <div class="txt">정착기</div>
                                    </div>
                                </div>
                                <div class="year_data">
                                    <ul>
                                        <li><span>보건복지부 국가 진료정보교류 사업자로 티플러스 선정</span></li>
                                        <li>보건복지부 대국민 환자 포탈 구축</li>
                                        <li>Dose Tracker GS(Good Software) 1등급 인증</li>
                                        <li>‘ICT Innovation 대상’ 유공자 포상 수상</li>
                                        <li>진료정보교류 활성화 중소기업청장 표창 수상</li>
                                    </ul>
                                </div>
                            </div>
                            <div class="swiper-slide">
                                <div class="year_num_wrap">
                                    <div class="year_num">
                                        <div class="num">2015</div>
                                        <div class="txt">성숙기</div>
                                    </div>
                                </div>
                                <div class="year_data">
                                    <ul>
                                        <li><span>대구시 진료정보교류 운영 및 2차 확산사업 계약(50개 병의원)</span></li>
                                        <li><span>복지부 ‘2015 의료IT 융합인프라 구축사업_진료정보교류’ 계약</span></li>
                                        <li><span>창원경상대병원 PACS 및 Dose Tracker 구축사업 수행</span></li>
                                        <li><span>국립암센터 전산장비 통합 유지보수 수행(3년간)</span></li>
                                        <li>보건복지부 진료정보교류 국가표준모델 ISP 사업수행</li>
                                        <li>PACS, IX,원격판독 개발 하버드의대와 DOSE 공동연구 협약</li>
                                        <li>‘ICT Innovation 대상’ 미래창조과학부 장관표창 수상</li>
                                    </ul>
                                </div>
                            </div>
                            <div class="swiper-slide">
                                <div class="year_num_wrap">
                                    <div class="year_num">
                                        <div class="num">2014</div>
                                        <div class="txt">성장기</div>
                                    </div>
                                </div>
                                <div class="year_data">
                                    <ul>
                                        <li>Dose Tracker 1.0 출시</li>
                                        <li><span>건강보험공단 일산병원, 차병원 Dose Tracker 구축</span></li>
                                        <li><span>한국정보통신진흥원  SW융합실증확산지원사업자 선정</span></li>
                                        <li><span>기술센터, 신성장R&amp;D연구소 설립</span></li>
                                        <li><span>경북대병원, 대구의료원 야간응급원격판독시범사업 수행</span></li>
                                    </ul>
                                </div>
                            </div>
                            <div class="swiper-slide">
                                <div class="year_num_wrap">
                                    <div class="year_num">
                                        <div class="num">2013</div>
                                        <div class="txt">도약기</div>
                                    </div>
                                </div>
                                <div class="year_data">
                                    <ul>
                                        <li>국군의무사령부 24개 병의원 PACS 입찰 수주</li>
                                        <li><span>GE Healthcare PACS 총판 계약(GEHC 영업/서비스인력 입사)</span></li>
                                        <li><span>헬스케어 IT Solution 본격 진입</span></li>
                                        <li>HIE 개발</li>
                                        <li><span>정보통신진흥기금 응용기술개발지원 사업자 선정</span></li>
                                    </ul>
                                </div>
                            </div>
                            <div class="swiper-slide">
                                <div class="year_num_wrap">
                                    <div class="year_num">
                                        <div class="num">2012</div>
                                        <div class="txt">창립기</div>
                                    </div>
                                </div>
                                <div class="year_data">
                                    <ul>
                                        <li>Healthcare ICT사업 본격화</li>
                                        <li>GE Healthcare H/W 공급 및 유지보수</li>
                                        <li>Dose Tracker 1.0 개발 </li>
                                    </ul>
                                </div>
                            </div>
                            <div class="swiper-slide">
                                <div class="year_num_wrap">
                                    <div class="year_num">
                                        <div class="num">2011</div>
                                        <div class="txt">창립기</div>
                                    </div>
                                </div>
                                <div class="year_data">
                                    <ul>
                                        <li>우수창업기업 경진대회 매출부분 "최우수상"</li>
                                        <li>GE Healthcare H/W 공급업체 선정</li>
                                        <li>GE Healthcare PACS 부문 병원고객사 전국 유지보수 업체선정</li>
                                        <li>㈜티플러스 공장등록소프트웨어 사업자신고</li>
                                        <li>벤처기업 인증서취득</li>
                                    </ul>
                                </div>
                            </div>
                            <div class="swiper-slide">
                                <div class="year_num_wrap">
                                    <div class="year_num">
                                        <div class="num">2010</div>
                                        <div class="txt">창립기</div>
                                    </div>
                                </div>
                                <div class="year_data">
                                    <ul>
                                        <li>㈜티플러스 설립, 매출 60억 달성</li>
                                        <li>㈜티플러스 기술연구소설립</li>
                                        <li>ISO9001 품질경영시스템인증</li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <!-- Add Arrows -->
                        <div class="slide_btn_wrap">
                            <div class="slide_btn">
                                <div class="swiper-button-next"></div>
                                <div class="swiper-button-prev"></div>
                            </div>
                        </div>
                        <!-- //Add Arrows -->
                    </div>
                    <!-- //Swiper -->
                </div>
                <!-- //Slide -->
                <!-- 슬라이드 이용 안내 레이어 -->
                <div class="slide_bg">
                    <div>
                        <div>
                            <img src="../images/content/product_txt.png" alt="" />
                            <span>마우스 왼쪽버튼을 누른 상태에서 좌우로 움직여<br />연도를 선택하세요<br />클릭하면 안내창이 닫힙니다.</span>
                        </div>
                    </div>
                </div>
                <!-- //슬라이드 이용 안내 레이어 -->
            </div>
        </div>
        <!-- //about05 -->
        <!-- about06 -->
        <div class="content about06" id="about06">
            <div class="data_wrap">
                <div class="logo_wrap">
                    <div class="thumb wow fadeInUp" data-wow-duration="1s" data-wow-delay="0.1s"><img src="../images/content/tplus_logo01.gif" alt="로고" /></div>
                    <strong class="wow fadeInUp" data-wow-duration="1.4s" data-wow-delay="0.1s">CI (Corporate Identity)</strong>
                    <span class="wow fadeInUp" data-wow-duration="1.4s" data-wow-delay="0.2s">TPLUS의 CI는 차별된 기술에 새로운 가치를 더하여<br />티플러스가 헬스케어 ICT의 트렌드를 이끌어 고객에게<br />언제나 새롭고 특별하게 다가가겠다는 것을 표현합니다.</span>
                    <div class="btn_grp wow fadeInUp" data-wow-duration="1.4s" data-wow-delay="0.3s">
                        <a href="javascript:void(0)">AI</a><a href="javascript:void(0)">PNG</a>
                    </div>
                </div>
                <div class="logo_wrap">
                    <div class="thumb wow fadeInUp" data-wow-duration="1s" data-wow-delay="0.1s"><img src="../images/content/tplus_logo02.gif" alt="로고" /></div>
                    <strong class="wow fadeInUp" data-wow-duration="1.4s" data-wow-delay="0.1s">BI (Brand Identity)</strong>
                    <span class="wow fadeInUp" data-wow-duration="1.4s" data-wow-delay="0.2s">VINE(바인)의 BI는 넝쿨의 이미지에서 착안하였으며<br />여러 의료기관을 하나로 연결하여 궁극적으로<br />의료질 향상, 의료비 절감, 의료 정보 접근성 향상 등<br />Healthcare의 미래 지향점을 표현합니다.</span>
                    <div class="btn_grp wow fadeInUp" data-wow-duration="1.4s" data-wow-delay="0.3s">
                        <a href="javascript:void(0)">AI</a><a href="javascript:void(0)">PNG</a>
                    </div>
                </div>
            </div>
        </div>
        <!-- //about06 -->
        <!-- about07 -->
        <div class="content about07" id="about07">
            <div class="data_wrap">
                <div class="map_wrap"></div>
                <div class="branch_wrap">
                    <dl class="wow fadeInUp" data-wow-duration="1.4s" data-wow-delay="0.1s">
                        <dt>주소/연락처</dt>
                        <dd>133-722 서울특별시 성동구 광나루로 146, 티플러스 빌딩<br />Tel (02)564-8686<span class="bar"></span>Fax (02)462 8689</dd>
                    </dl>
                    <ul>
                        <li class="wow fadeInUp" data-wow-duration="1.4s" data-wow-delay="0.2s">
                            <div>
                                <dl>
                                    <dt>지하철 이용 시</dt>
                                    <dd>2호선 뚝섬역 1번 출구 도보 9분<br />2호선 한양대역 3번 출구 도보 9분</dd>
                                </dl>
                            </div>
                        </li>
                        <li class="wow fadeInUp" data-wow-duration="1.4s" data-wow-delay="0.3s">
                            <div>
                                <dl>
                                    <dt>버스 이용 시</dt>
                                    <dd>121, 302, 2012, 2016, 2014, 2222번 상원<br />정류장 하차</dd>
                                </dl>
                            </div>
                        </li>
                        <li class="wow fadeInUp" data-wow-duration="1.4s" data-wow-delay="0.4s">
                            <div>
                                <dl>
                                    <dt>자가용 이용 시</dt>
                                    <dd>1층에 주차 공간이 마련되어 있습니다.<br />사전연락 시 안내 받으실 수 있습니다.</dd>
                                </dl>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
        <!-- //about07 -->
    </section>
</section>
<!-- //container -->

</section>
<!-- //wrap [종료] -->

<!-- 페이지 네비게이션 -->
<div id="pageNav">
<ol>
    <li class="on"><a href="">1</a></li>
    <li><a href="">2</a></li>
    <li><a href="">3</a></li>
    <li><a href="">4</a></li>
    <li><a href="">5</a></li>
    <li><a href="">6</a></li>
    <li><a href="">7</a></li>
</ol>
</div>
<!--//페이지 네비게이션 -->

<%@include file="footer.jsp" %>




<!-- Initialize Swiper -->
<script>
var swiper = new Swiper('.swiper-container', {
    pagination: '.swiper-pagination',
    nextButton: '.swiper-button-next',
    prevButton: '.swiper-button-prev',
    slidesPerView: 3,
    centeredSlides: true,
    paginationClickable: true,
    spaceBetween: 30,
});
</script>

</body>
</html>
    