<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    
    
<script>
$(function(){
	
	var hrefs = location.href;
	//var hrefs = href.split('/');
	//var checktext = hrefs[hrefs.length-1];
	//var checktext = hrefs[0];
	
	var url = hrefs.split('/').pop();
	var temp = url.split('?');
	//console.log(temp[0]);
	//console.log(temp[1]);
	
	url = temp[0];
	var pos = 1;
	//console.log(temp.length);
	
	if( temp.length>1)
		pos = temp[1].split('=')[1];	
	else
		pos = 1;
	
	//console.log(pos);
	
	var movePos="";
	if( url =="about.jsp")
		movePos = "#about0"+pos;
	else if(url=="healthcare.jsp")
	 	movePos = "#health0"+pos;
	else if(url=="ict.jsp")
	 	movePos = "#ict0"+pos;
	else if(url=="service.jsp")
	 	movePos = "#service0"+pos;
	else if(url=="news.jsp")
	 	movePos = "#news0"+pos;
	else if(url=="tplusin.jsp")
	 	movePos = "#tplusin0"+pos;

	$(document.body).scrollTop($(movePos).offset().top);
	
	//location.hash = "about0"+pos;
		
	
	$('.gnb_wrap>ul>li').each(function(i,e){
		if(checktext == $(this).children('a').attr('href')){
			$(e).addClass('on');
		}
	});
	
	

});	//종료

function goMenu(page, pos)
{
	
	var pages = ["", "about.jsp", "healthcare.jsp", "ict.jsp", "service.jsp", "newsroom.jsp", "tplusin.jsp"];
	location.href = pages[page]+"?pos="+pos;
	
	//self.location.hash='pos_top';
	
}
</script>    
    
<!-- header -->
<header id="header" class="">
	<!-- header_wrap -->
	<section class="header_wrap">
		<h1><a href="index.jsp"><img src="../images/common/logo.png" alt="TPlUS"/></a></h1>
		<nav id="gnb">
			<div class="gnb_wrap">
				<ul>
					<li>
						<a href="about.jsp">ABOUT</a>
						<div class="snb_wrap snb01">
							<ul>
								<li><a href="#about01"  onclick="goMenu('1', '1')">TPLUS 소개</a></li>
								<li><a href="#about02"  onclick="goMenu('1', '2')">인사말</a></li>
								<li><a href="#about03"  onclick="goMenu('1', '3')">비전</a></li>
								<li><a href="#about04"  onclick="goMenu('1', '4')">경쟁력</a></li>
								<li><a href="#about05"  onclick="goMenu('1', '5')">연혁</a></li>
								<li><a href="#about06"  onclick="goMenu('1', '6')">CI/BI</a></li>
								<li><a href="#about07"  onclick="goMenu('1', '7')">CONTACT US</a></li>
							</ul>
						</div>
					</li>
					<li>
						<a href="healthcare.jsp">HEALTHCARE IT</a>
						<div class="snb_wrap snb02">
							<ul>
								<li><a href="#health01"  onclick="goMenu('2', '1')">HEALTHCARE IT 소개</a></li>
								<li><a href="#health02"  onclick="goMenu('2', '2')">의료정보분야</a></li>
								<li><a href="#health03"  onclick="goMenu('2', '3')">의료영상분야</a></li>
								<li><a href="#health04"  onclick="goMenu('2', '4')">파이프라인</a></li>
								<li><a href="#health05"  onclick="goMenu('2', '5')">레퍼런스</a></li>
							</ul>
						</div>
					</li>
					<li>
						<a href="ict.jsp">ICT</a>
						<div class="snb_wrap snb03">
							<ul>
								<li><a href="#ict01"  onclick="goMenu('3', '1')">ICT 소개</a></li>
								<li><a href="#ict02"  onclick="goMenu('3', '2')">ICT 사업</a></li>
								<li><a href="#ict03"  onclick="goMenu('3', '3')">TPLUS SERVER</a></li>
								<li><a href="#ict04"  onclick="goMenu('3', '4')">레퍼런스</a></li>
							</ul>
						</div>
					</li>
					<li>
						<a href="service.jsp">SERVICE+</a>
						<div class="snb_wrap snb04">
							<ul>
								<li><a href="#service01"  onclick="goMenu('4', '1')">SERVICE+ 소개</a></li>
								<li><a href="#service02"  onclick="goMenu('4', '2')">서비스단계</a></li>
								<li><a href="#service03"  onclick="goMenu('4', '3')">HELP DESK</a></li>
							</ul>
						</div>
					</li>
					<li>
						<a href="newsroom.jsp">NEWSROOM</a>
						<div class="snb_wrap snb05">
							<ul>
								<li><a href="#news01"  onclick="goMenu('5', '1')">티플러스 소식</a></li>
								<li><a href="#news02"  onclick="goMenu('5', '2')">보도자료</a></li>
							</ul>
						</div>
					</li>
					<li>
						<a href="tplusin.jsp">TPLUS-IN</a>
						<div class="snb_wrap snb06">
							<ul>
								<li><a href="#tplusin01"  onclick="goMenu('6', '1')">TPLUS-IN</a></li>
								<li><a href="#tplusin01"  onclick="goMenu('6', '2')">기업문화</a></li>
							</ul>
						</div>
					</li>
				</ul>
				<p id="topLine"></p>
				<p id="topBar"></p>
				<p id="gnbBg"></p>
				<p id="snbBg"></p>
			</div>
		</nav>
		<div class="global_wrap">
            <ul>
                <li class="global">
                    <a href="javascript:void(0)">Contact US</a>
                    <a href="javascript:void(0)">ENG</a>
                </li>
                <li class="sns">
                    <a href="javascript:void(0)" target="_blank" class="ico_sns_facebook">페이스북</a>
                    <a href="javascript:void(0)" target="_blank" class="ico_sns_blog">블로그</a>
                    <a href="javascript:void(0)" target="_blank" class="ico_sns_youtube">유투브</a>
                </li>
            </ul>
        </div>

		<!-- (모바일) GNB 리스트 버튼 -->
		<a href="javascript:void(0)" class="btn_list">
			<span></span>
			<span></span>
			<span></span>
		</a>
		<!-- //(모바일) GNB 리스트 버튼 -->

	</section>
	<!-- //header_wrap -->

	<!-- (모바일) gnb_data -->
	<div class="gnb_data">
		<!-- GNB SNS -->
		<div class="data_top">
			<ul>
				<li class="member">
					<ul>
						<li><a href="javascript:void(0)">Contact US</a></li>
						<li><a href="javascript:void(0)">ENG</a></li>
					</ul>
				</li>
				<li class="sns">
					<ul>
						<li class="face"><a href="javascript:void(0)" target="_blank"><img src="../images/common/btn_header_top_sns_face.png" alt="" width="24"></a></li>
						<li class="naver"><a href="javascript:void(0)" target="_blank"><img src="../images/common/btn_header_top_sns_blog.png" alt="" width="24"></a></li>
						<li class="youtube"><a href="javascript:void(0)" target="_blank"><img src="../images/common/btn_header_top_sns_youtube.png" alt="" width="24"></a></li>
					</ul>
				</li>
			</ul>
		</div>
		<!-- //GNB SNS -->
		<!-- GNB 리스트 -->
		<div class="gnb_list">
			<ul>
				<li class="two">
					<a href="javascript:void(0)">ABOUT</a>
					<ul class="snb_list">
						<li><a href="#m_about01">TPLUS 소개</a></li>
						<li><a href="#m_about02">인사말</a></li>
						<li><a href="#m_about03">비전</a></li>
						<li><a href="#m_about04">경쟁력</a></li>
						<li><a href="#m_about05">연혁</a></li>
						<li><a href="#m_about06">CI/BI</a></li>
						<li><a href="#m_about07">CONTACT US</a></li>
					</ul>
				</li>
				<li class="two">
					<a href="javascript:void(0)">HEALTHCARE IT</a>
					<ul class="snb_list">
						<li><a href="#m_health01">HEALTHCARE IT 소개</a></li>
						<li><a href="#m_health02">의료정보분야</a></li>
						<li><a href="#m_health03">의료영상분야</a></li>
						<li><a href="#m_health04">파이프라인</a></li>
						<li><a href="#m_health05">레퍼런스</a></li>
					</ul>
				</li>
				<li class="two">
					<a href="javascript:void(0)">ICT</a>
					<ul class="snb_list">
						<li><a href="#m_ict01">ICT 소개</a></li>
						<li><a href="#m_ict02">ICT 사업</a></li>
						<li><a href="#m_ict03">TPLUS SERVER</a></li>
						<li><a href="#m_ict04">레퍼런스</a></li>
					</ul>
				</li>
				<li class="two">
					<a href="javascript:void(0)">SERVICE+</a>
					<ul class="snb_list">
						<li><a href="#m_service01">SERVICE+ 소개</a></li>
						<li><a href="#m_service02">서비스단계</a></li>
						<li><a href="#m_service03">HELP DESK</a></li>
					</ul>
				</li>
				<li class="two">
					<a href="javascript:void(0)">NEWSROOM</a>
					<ul class="snb_list">
						<li><a href="#m_news01">티플러스 소식</a></li>
						<li><a href="#m_news02">보도자료</a></li>
					</ul>
				</li>
				<li class="two">
					<a href="javascript:void(0)">TPLUS-IN</a>
					<ul class="snb_list">
						<li><a href="#m_tplusin01">TPLUS-IN</a></li>
						<li><a href="#m_tplusin02">기업문화</a></li>
					</ul>
				</li>
			</ul>
		</div>
		<!-- //GNB 리스트 -->
	</div>
	<!-- //(모바일) gnb_data -->

	<!-- (모바일) 메뉴 닫기 -->
	<a href="javascript:void(0)" class="btn_gnb_close"><img src="../images/common/btn_header_close.png" alt="닫기 버튼"></a>
	<!-- //(모바일) 메뉴 닫기 -->
</header>
<!-- //header -->