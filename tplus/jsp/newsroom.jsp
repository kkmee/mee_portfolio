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
<script type="text/javascript">
$(function(){

// 뉴스룸 리스트 필터링
var $grid = $('.grid').isotope ({
    itemSelector: '.element-item',
    layoutMode: 'fitRows'
});
$('.filters-button-group').on( 'click', 'button', function() {
  var filterValue = $( this ).attr('data-filter');
  $grid.isotope({ filter: filterValue });
});

$('.button-group').each(function(i,buttonGroup) {
    var $buttonGroup = $(buttonGroup);
    $buttonGroup.on('click','button',function() {
        $buttonGroup.find('.is-checked').removeClass('is-checked');
        $(this).addClass('is-checked');

        if($('.is-checked').index() === 0) {
            $('.category .circle').animate({'left':'19px'},400);
        } else if($('.is-checked').index() == 1) {
            $('.category .circle').animate({'left':'105px'},400);
        } else if($('.is-checked').index() == 2) {
            $('.category .circle').animate({'left':'207px'},400);
        }
    });
});

//뉴스룸 - 컨텐츠 클릭 시, 레이어 출력
$('.element-item a').click(function(){
    $('#pop').fadeIn(300).show();
    $('body').css('overflow-y','hidden');
    return false;
});

//뉴스룸 - layer popup 목록 & 닫기 버튼 눌렀을 때
$('#pop .popico_close, #pop .popico_list').click(function(){
    $('#pop').fadeOut(200);
    $('body').css('overflow-y','auto');
    return false;
});

//뉴스룸 - 레이어 팝업창 효과
$('#pop').scroll(function () {
    if ($(this).scrollTop() > 100) {
        $('.pop_wrap').addClass('pop_fix');

        var cont_x = $(this).find(".pop_content").offset().left;
        var cont_w = $(this).find(".pop_content").width();
        $('.pop_content .pop_move a').fadeIn(200).show();
        $(".pop_move a").addClass("fix");
        $(".pop_move a.popbtn_prev").css("margin-left", cont_x);
        $(".pop_move a.popbtn_next").css("margin-left",(cont_x + cont_w) - ($(".pop_move a").width()+1));

    }else if($(this).scrollTop() > 0) {
        $('.pop_wrap').removeClass('pop_fix');

        $('.pop_content .pop_move a').fadeOut(200).hide();
        $(".pop_move a").removeClass("fix");
		$(".pop_move a.popbtn_prev").css("margin-left",0);
		$(".pop_move a.popbtn_next").css("margin-left",0);
    }
    return false;
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
        <!-- newsroom01 -->
        <div class="content news01" id="news01">
            <div class="sub_title">
                <span class="name wow fadeInUp" data-wow-duration="1.4s" data-wow-delay="0.1s">newsroom</span>
            </div>
        </div>
        <!-- //newsroom01 -->
        <!-- newsroom02 -->
        <div class="content news02" id="news02">
            <!-- 검색 -->
            <div class="search_wrap">
                <div class="search">
                    <!-- 카테고리 -->
                    <div class="list">
                        <div class="category">
                            <div class="button-group filters-button-group">
                                <button class="button is-checked" data-filter="*">전체</button>
                                <button class="button" data-filter=".news">티플러스 소식</button>
                                <button class="button" data-filter=".report">보도자료</button>
                            </div>
                            <div class="circle"></div>
                        </div>
                    </div>
                    <!-- //카테고리 -->
                    <!-- 검색박스 -->
                    <div class="searchBox_wrap">
                        <fieldset>
                            <legend>검색창</legend>
                            <form action="" method="get" class="">
                                <div class="searchBox"><input type="text" placeholder="검색어를 입력해주세요." /></div>
                                <div class="searchBtn"><a href="javascript:void(0)"></a></div>
                            </form>
                        </fieldset>
                    </div>
                    <!-- //검색박스 -->
                </div>
            </div>
            <!-- //검색 -->

            <!-- 갤러리 리스트 -->
            <div class="grid">
                <div class="grid_wrap">
                    <div class="element-item news" data-category="news">
                        <div class="item">
                            <div class="thumb">
                                <a href="">
                                    <img src="http://tplus.kr/FileData/newsroom/simg/list_f18edf5fb.jpg" alt="뉴스룸 썸네일" />
                                    <span class="bg"></span>
                                </a>
                            </div>
                            <div class="info">
                                <span class="category">보도자료</span>
                                <span class="subject"><a href="">티플러스 이정호대표이사 인터뷰</a></span>
                                <span class="date">2017-02-22</span>
                            </div>
                        </div>
                    </div>
                    <div class="element-item news" data-category="news">
                        <div class="item">
                            <div class="thumb">
                                <a href="">
                                    <img src="http://tplus.kr/FileData/newsroom/simg/list_f6ad52495.jpg" alt="뉴스룸 썸네일" />
                                    <span class="bg"></span>
                                </a>
                            </div>
                            <div class="info">
                                <span class="category">티플러스 소식</span>
                                <span class="subject"><a href="">2017 티플러스 2월 사보 vol.26</a></span>
                                <span class="date">2017-02-01</span>
                            </div>
                        </div>
                    </div>
                    <div class="element-item report" data-category="report">
                        <div class="item">
                            <div class="thumb">
                                <a href="">
                                    <img src="http://tplus.kr/FileData/newsroom/simg/list_f9ab3db20.jpg" alt="뉴스룸 썸네일" />
                                    <span class="bg"></span>
                                </a>
                            </div>
                            <div class="info">
                                <span class="category">보도자료</span>
                                <span class="subject"><a href="">충남대병원과 진료 의뢰·회송·정보교류 시스템 구축</a></span>
                                <span class="date">2017-02-13</span>
                            </div>
                        </div>
                    </div>
                    <div class="element-item report" data-category="report">
                        <div class="item">
                            <div class="thumb">
                                <a href="">
                                    <img src="http://tplus.kr/FileData/newsroom/simg/list_f5998229b.jpg" alt="뉴스룸 썸네일" />
                                    <span class="bg"></span>
                                </a>
                            </div>
                            <div class="info">
                                <span class="category">보도자료</span>
                                <span class="subject"><a href="">티플러스 이정호대표이사 인터뷰</a></span>
                                <span class="date">2017-02-22</span>
                            </div>
                        </div>
                    </div>
                    <div class="element-item report" data-category="report">
                        <div class="item">
                            <div class="thumb">
                                <a href="">
                                    <img src="http://tplus.kr/FileData/newsroom/simg/list_f02907c70.jpg" alt="뉴스룸 썸네일" />
                                    <span class="bg"></span>
                                </a>
                            </div>
                            <div class="info">
                                <span class="category">티플러스 소식</span>
                                <span class="subject"><a href="">티플러스, 충남대병원과 정보교류 시스템 구축</a></span>
                                <span class="date">2017-02-13</span>
                            </div>
                        </div>
                    </div>
                    <div class="element-item report" data-category="report">
                        <div class="item">
                            <div class="thumb">
                                <a href="">
                                    <img src="http://tplus.kr/FileData/newsroom/simg/list_f839d1594.jpg" alt="뉴스룸 썸네일" />
                                    <span class="bg"></span>
                                </a>
                            </div>
                            <div class="info">
                                <span class="category">티플러스 소식</span>
                                <span class="subject"><a href="">2017 티플러스 2월 사보 vol.26</a></span>
                                <span class="date">2017-02-01</span>
                            </div>
                        </div>
                    </div>
                    <div class="element-item news" data-category="news">
                        <div class="item">
                            <div class="thumb">
                                <a href="">
                                    <img src="http://tplus.kr/FileData/newsroom/simg/list_f7206621d.jpg" alt="뉴스룸 썸네일" />
                                    <span class="bg"></span>
                                </a>
                            </div>
                            <div class="info">
                                <span class="category">보도자료</span>
                                <span class="subject"><a href="">티플러스 이정호대표이사 인터뷰</a></span>
                                <span class="date">2017-02-22</span>
                            </div>
                        </div>
                    </div>
                    <div class="element-item news" data-category="news">
                        <div class="item">
                            <div class="thumb">
                                <a href="">
                                    <img src="http://tplus.kr/FileData/newsroom/simg/list_f9f0a47e4.jpg" alt="뉴스룸 썸네일" />
                                    <span class="bg"></span>
                                </a>
                            </div>
                            <div class="info">
                                <span class="category">티플러스 소식</span>
                                <span class="subject"><a href="">티플러스, 진료 의뢰·회송·정보교류 시스템 구축</a></span>
                                <span class="date">2017-02-13</span>
                            </div>
                        </div>
                    </div>
                    <div class="element-item report" data-category="report">
                        <div class="item">
                            <div class="thumb">
                                <a href="">
                                    <img src="http://tplus.kr/FileData/newsroom/simg/list_f77d128dc.jpg" alt="뉴스룸 썸네일" />
                                    <span class="bg"></span>
                                </a>
                            </div>
                            <div class="info">
                                <span class="category">티플러스 소식</span>
                                <span class="subject"><a href="">2017 티플러스 2월 사보 vol.26</a></span>
                                <span class="date">2017-02-01</span>
                            </div>
                        </div>
                    </div>
                    <div class="element-item news" data-category="news">
                        <div class="item">
                            <div class="thumb">
                                <a href="">
                                    <img src="http://tplus.kr/FileData/newsroom/simg/list_f18edf5fb.jpg" alt="뉴스룸 썸네일" />
                                    <span class="bg"></span>
                                </a>
                            </div>
                            <div class="info">
                                <span class="category">보도자료</span>
                                <span class="subject"><a href="">티플러스 이정호대표이사 인터뷰</a></span>
                                <span class="date">2017-02-22</span>
                            </div>
                        </div>
                    </div>
                    <div class="element-item news" data-category="news">
                        <div class="item">
                            <div class="thumb">
                                <a href="">
                                    <img src="http://tplus.kr/FileData/newsroom/simg/list_f6ad52495.jpg" alt="뉴스룸 썸네일" />
                                    <span class="bg"></span>
                                </a>
                            </div>
                            <div class="info">
                                <span class="category">티플러스 소식</span>
                                <span class="subject"><a href="">2017 티플러스 2월 사보 vol.26</a></span>
                                <span class="date">2017-02-01</span>
                            </div>
                        </div>
                    </div>
                    <div class="element-item report" data-category="report">
                        <div class="item">
                            <div class="thumb">
                                <a href="">
                                    <img src="http://tplus.kr/FileData/newsroom/simg/list_f9ab3db20.jpg" alt="뉴스룸 썸네일" />
                                    <span class="bg"></span>
                                </a>
                            </div>
                            <div class="info">
                                <span class="category">보도자료</span>
                                <span class="subject"><a href="">충남대병원과 진료 의뢰·회송·정보교류 시스템 구축</a></span>
                                <span class="date">2017-02-13</span>
                            </div>
                        </div>
                    </div>
                    <div class="element-item report" data-category="report">
                        <div class="item">
                            <div class="thumb">
                                <a href="">
                                    <img src="http://tplus.kr/FileData/newsroom/simg/list_f5998229b.jpg" alt="뉴스룸 썸네일" />
                                    <span class="bg"></span>
                                </a>
                            </div>
                            <div class="info">
                                <span class="category">보도자료</span>
                                <span class="subject"><a href="">티플러스 이정호대표이사 인터뷰</a></span>
                                <span class="date">2017-02-22</span>
                            </div>
                        </div>
                    </div>
                    <div class="element-item report" data-category="report">
                        <div class="item">
                            <div class="thumb">
                                <a href="">
                                    <img src="http://tplus.kr/FileData/newsroom/simg/list_fd176daf8.jpg" alt="뉴스룸 썸네일" />
                                    <span class="bg"></span>
                                </a>
                            </div>
                            <div class="info">
                                <span class="category">티플러스 소식</span>
                                <span class="subject"><a href="">티플러스, 충남대병원과 진료 의뢰·회송·정보교류</a></span>
                                <span class="date">2017-02-13</span>
                            </div>
                        </div>
                    </div>
                    <div class="element-item report" data-category="report">
                        <div class="item">
                            <div class="thumb">
                                <a href="">
                                    <img src="http://tplus.kr/FileData/newsroom/simg/list_faa0b9010.jpg" alt="뉴스룸 썸네일" />
                                    <span class="bg"></span>
                                </a>
                            </div>
                            <div class="info">
                                <span class="category">티플러스 소식</span>
                                <span class="subject"><a href="">충남대병원과 진료 의뢰·회송·정보교류 시스템 구축</a></span>
                                <span class="date">2017-02-13</span>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- //갤러리 리스트 -->
            </div>
        </div>
        <!-- //newsroom02 -->
    </section>
</section>
<!-- //container -->

<!-- layer popup -->
<section id="pop">
    <div class="pop_wrap">
        <!-- top -->
        <div class="pop_top_wrap">
            <div class="pop_top">
                <div class="title">
                    <a href="javascript:void(0)" class="popico_list">목록</a>
                    <span>2017 티플러스 2월 사보 vol.26</span>
                </div>
                <div class="btn">
                    <span>2017-02-22</span>
                    <div class="btn_sns">
                        <a href="javascript:void(0)" class="popico_sns_facebook">페이스북</a>
                        <a href="javascript:void(0)" class="popico_sns_twitter">트위터</a>
                        <a href="javascript:void(0)" class="popico_close">닫기</a>
                    </div>
                </div>
            </div>
        </div>
        <!-- //top -->
        <!-- pop content -->
        <div class="pop_content">
            <div class="pop_txt">
                <p>헬스케어 IT 전문기업 티플러스의 진료정보교류 솔루션(Cross Vine)이 13일 밀레니엄 서울힐튼호텔에서 열린'2016년 소비자선정 스타브랜드 대상'시상식에서 헬스케어 솔루션 부문 대상을 수상했다. 탄자니아 8개 병원에 자체개발 원격판독 솔루션의 성공적인 수출을 계기로 향후 해외시장 진출에  박차를 가할 계획이다. 양 기관은 협약에 따라 병·의원 간 진료정보 데이터를 교류할 수 있는 진료정보 표준 플랫폼 마련을 비롯해 진료의뢰 및 회송 등 의료정보교류 기반 마련, 지역 내 병의원 진료정보교류사업 참여 기반 조성, 기타 진료정보교류 미래표준 모델 개발을 위해 협력한다.</p>
                <p>&nbsp;</p>
                <p>자세한 내용은 하단의 URL을 통해 확인할 수 있다.</p>
                <p><a href="javascript:void(0)" target="_blank">http://news.mk.co.kr/newsRead.php?no=860551&year=2016</a></p>
                <p>(출처:매일경제 전종헌 기자)</p>
                <p>&nbsp;</p>
                <p><img src="http://tplus.kr/FileData/edtImg/acaccde0_%25EC%258A%25A4%25ED%2583%2580%25EB%25B8%258C%25EB%259E%259C%25EB%2593%259C.jpg" alt="썸네일" /></p>
                <p>&nbsp;</p>
                <p>헬스케어 IT 전문기업 티플러스의 진료정보교류 솔루션(Cross Vine)이 13일 밀레니엄 서울힐튼호텔에서 열린'2016년 소비자선정 스타브랜드 대상'시상식에서 헬스케어 솔루션 부문 대상을 수상했다. 탄자니아 8개 병원에 자체개발 원격판독 솔루션의 성공적인 수출을 계기로 향후 해외시장 진출에  박차를 가할 계획이다. 양 기관은 협약에 따라 병·의원 간 진료정보 데이터를 교류할 수 있는 진료정보 표준 플랫폼 마련을 비롯해 진료의뢰 및 회송 등 의료정보교류 기반 마련, 지역 내 병의원 진료정보교류사업 참여 기반 조성, 기타 진료정보교류 미래표준 모델 개발을 위해 협력한다.</p>
            </div>
            <div class="pop_move">
                <a href="javascript:void(0)" class="popbtn_prev">이전</a>
                <a href="javascript:void(0)" class="popbtn_next">다음</a>
            </div>
        </div>
        <!-- //pop content -->
    </div>
</section>
<!-- //layer popup -->

<%@include file="footer.jsp" %>

</section>
<!-- //wrap [종료] -->
</body>
</html>
    