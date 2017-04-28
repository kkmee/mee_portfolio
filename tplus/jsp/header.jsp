	<%@ page language="java" contentType="text/html; charset=utf-8"
	    pageEncoding="utf-8"%>
	    
	<script>    
	$(function(){
		
		var hrefs = location.href;
		hrefs = hrefs.split('/');
		hrefs = hrefs[hrefs.length-1].split('#');
		console.log(hrefs)
	
		var checktext = hrefs[0];
		
		$('.gnb_wrap>ul>li').each(function(i,e){
			if(checktext == $(this).children('a').attr('href')){
				$(e).addClass('on');
			}
		});
		
		
		$('.gnb_list>ul>li').each(function(i,e){
			if(checktext == $(this).children('a').attr('href')){
				$(e).addClass('on');
			}
		});

	})
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
								<li><a href="about.jsp#about01">TPLUS 소개</a></li>
								<li><a href="about.jsp#about02">인사말</a></li>
								<li><a href="about.jsp#about03">비전</a></li>
								<li><a href="about.jsp#about04">경쟁력</a></li>
								<li><a href="about.jsp#about05">연혁</a></li>
								<li><a href="about.jsp#about06">CI/BI</a></li>
								<li><a href="about.jsp#about07">CONTACT US</a></li>
							</ul>
						</div>
					</li>
					<li>
						<a href="healthcare.jsp">HEALTHCARE IT</a>
						<div class="snb_wrap snb02">
							<ul>
								<li><a href="healthcare.jsp#health01">HEALTHCARE IT 소개</a></li>
								<li><a href="healthcare.jsp#health02">의료정보분야</a></li>
								<li><a href="healthcare.jsp#health03">의료영상분야</a></li>
								<li><a href="healthcare.jsp#health04">파이프라인</a></li>
								<li><a href="healthcare.jsp#health05">레퍼런스</a></li>
							</ul>
						</div>
					</li>
					<li>
						<a href="ict.jsp">ICT</a>
						<div class="snb_wrap snb03">
							<ul>
								<li><a href="ict.jsp#ict01">ICT 소개</a></li>
								<li><a href="ict.jsp#ict02">ICT 사업</a></li>
								<li><a href="ict.jsp#ict03">TPLUS SERVER</a></li>
								<li><a href="ict.jsp#ict04">레퍼런스</a></li>
							</ul>
						</div>
					</li>
					<li>
						<a href="service.jsp">SERVICE+</a>
						<div class="snb_wrap snb04">
							<ul>
								<li><a href="service.jsp#service01">SERVICE+ 소개</a></li>
								<li><a href="service.jsp#service02">서비스단계</a></li>
								<li><a href="service.jsp#service03">HELP DESK</a></li>
							</ul>
						</div>
					</li>
					<li>
						<a href="newsroom.jsp">NEWSROOM</a>
						<div class="snb_wrap snb05">
							<ul>
								<li><a href="newsroom.jsp#news01">티플러스 소식</a></li>
								<li><a href="newsroom.jsp#news02">보도자료</a></li>
							</ul>
						</div>
					</li>
					<li>
						<a href="tplusin.jsp">TPLUS-IN</a>
						<div class="snb_wrap snb06">
							<ul>
								<li><a href="tplusin.jsp#tplusin01">TPLUS-IN</a></li>
								<li><a href="tplusin.jsp#tplusin02">기업문화</a></li>
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
						<li><a href="about.jsp#about01">TPLUS 소개</a></li>
						<li><a href="about.jsp#about02">인사말</a></li>
						<li><a href="about.jsp#about03">비전</a></li>
						<li><a href="about.jsp#about04">경쟁력</a></li>
						<li><a href="about.jsp#about05">연혁</a></li>
						<li><a href="about.jsp#about06">CI/BI</a></li>
						<li><a href="about.jsp#about07">CONTACT US</a></li>
					</ul>
				</li>
				<li class="two">
					<a href="javascript:void(0)">HEALTHCARE IT</a>
					<ul class="snb_list">
						<li><a href="healthcare.jsp#health01">HEALTHCARE IT 소개</a></li>
						<li><a href="healthcare.jsp#health02">의료정보분야</a></li>
						<li><a href="healthcare.jsp#health03">의료영상분야</a></li>
						<li><a href="healthcare.jsp#health04">파이프라인</a></li>
						<li><a href="healthcare.jsp#health05">레퍼런스</a></li>
					</ul>
				</li>
				<li class="two">
					<a href="javascript:void(0)">ICT</a>
					<ul class="snb_list">
						<li><a href="ict.jsp#ict01">ICT 소개</a></li>
						<li><a href="ict.jsp#ict02">ICT 사업</a></li>
						<li><a href="ict.jsp#ict03">TPLUS SERVER</a></li>
						<li><a href="ict.jsp#ict04">레퍼런스</a></li>
					</ul>
				</li>
				<li class="two">
					<a href="javascript:void(0)">SERVICE+</a>
					<ul class="snb_list">
						<li><a href="service.jsp#service01">SERVICE+ 소개</a></li>
						<li><a href="service.jsp#service02">서비스단계</a></li>
						<li><a href="service.jsp#service03">HELP DESK</a></li>
					</ul>
				</li>
				<li class="two">
					<a href="javascript:void(0)">NEWSROOM</a>
					<ul class="snb_list">
						<li><a href="newsroom.jsp#news01">티플러스 소식</a></li>
						<li><a href="newsroom.jsp#news02">보도자료</a></li>
					</ul>
				</li>
				<li class="two">
					<a href="javascript:void(0)">TPLUS-IN</a>
					<ul class="snb_list">
						<li><a href="tplusin.jsp#tplusin01">TPLUS-IN</a></li>
						<li><a href="tplusin.jsp#tplusin02">기업문화</a></li>
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
