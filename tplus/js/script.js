$(document).ready(function() {

new WOW().init();

// (모바일) 메뉴
$('.btn_list').click(function(){
	if($("#header").hasClass("open")){
		$("#header").removeClass("open");
		$('body').css('overflow-y','visible');
		//$('html').removeClass('fix');
	}else{
		$("#header").addClass("open");
		//$('html').addClass('fix');
		$('body').css('overflow-y','hidden');
	}
});
$('.btn_gnb_close').click(function(){
	if($("#header").hasClass("open")){
		$('#header').removeClass('open');
		$('body').css('overflow-y','visible');
	}else{
		$('body').css('overflow-y','hidden');
	}
});
$('.gnb_list > ul > li').click(function(){
	$(this).addClass('open');
	$(this).children('ul').slideDown(300);
	$(".gnb_list > ul > li").not(this).removeClass('open').children('ul').slideUp(300);
	//return false;
});

//페이징
$('#pageNav li').click(function(){
    //스크롤 이동
    var idx = $(this).index();
    var scroll = $('#content_wrap .content').eq(idx).offset().top;// - 59 + "px";
    $('body, html').stop().animate({
        scrollTop:scroll
    },500);
    //페이징 버튼 on/off 효과
    $(this).addClass('on').siblings().removeClass('on');
    //return false;
});

//서브메뉴 클릭하면 그 컨텐츠로 이동
$('.snb_wrap li').click(function(){
    var idx = $(this).index();
    var scroll = $('#content_wrap .content').eq(idx).offset().top;
    $('body, html').stop().animate({
        scrollTop:scroll
    },500);
   // $(this).addClass('on').siblings().removeClass('on');
    //return false;
});

//페이지 별로 페이징 자동 높이 조절
function funLoad(){
    var pageHeight = $('#pageNav').height();
    var page = '-' + (pageHeight/2) + 'px';
    $('#pageNav').css('margin-top',page);
}
//window.onload = funLoad;
//window.onresize = funLoad;
$(window).load(function(){
    funLoad();
});
$(window).resize(function(){
    funLoad();
});

// 스크롤하면 페이징 버튼도 같이 바뀌기
$(window).scroll(function(){
    var sct = $(window).scrollTop();

    $('#content_wrap .content').each(function(){
        var conIdx = $(this).index();
        if($(this).offset().top <= sct){
            $('#pageNav li').removeClass('on');
            $('#pageNav li').eq(conIdx).addClass('on');
			$('.snb_wrap li').removeClass('on');
            $('.snb_wrap li').eq(conIdx).addClass('on');
        }
    });
});

$('.gnb > ul > li').hover(function(){
    $('#topBar').css('opacity','1');
});

// TOP버튼
$(window).scroll(function () {
    if ($(this).scrollTop() > 100) {
        $('#btn_top').fadeIn();
    }else {
        $('#btn_top').fadeOut();
    }
});
$('#btn_top').click(function () {
    $('body,html').animate({
        scrollTop: 0
    },500);
    //return false;
});

// 롤링배너
var fadeIdx = 0;

$('.slide_page .page').click(function(){
    var fadeIdx = $(this).index();
    var bnr = $('.slide li').eq(fadeIdx);
    var slideIdx = $('.slide li').index();

    // 버튼 클릭하면 버튼색 바뀜
    $('.slide_page .page').removeClass('on');
    $('.slide_page .page').eq(fadeIdx).addClass('on').parents().find(bnr).eq(slideIdx).addClass('on').siblings().removeClass('on');
});

// 롤링배너 자동 슬라이드
var autoFade = setInterval(function(){
    $('.slide li').removeClass('on');
    $('.slide_page .page').removeClass('on');
    fadeIdx ++;
    $('.slide li').eq(fadeIdx).addClass('on');
    $('.slide_page .page').eq(fadeIdx).addClass('on').siblings().removeClass('on');

    // 자동 슬라이드 되면, 버튼도 같이 바뀌기
    if(fadeIdx == $('.slide li').length){
        fadeIdx = 0;
        $('.slide li').eq(fadeIdx).addClass('on');
        $('.slide_page .page').eq(fadeIdx).addClass('on');
    }
    //return false;
},4800);

// 마우스 올리면, 자동 슬라이드 멈춤
$('.slide li')
.mouseenter(function(){
    clearInterval(autoFade);
})
.mouseleave(function(){
    autoFade = setInterval(function(){
        $('.slide li').removeClass('on');
        $('.slide_page .page').removeClass('on');
        fadeIdx ++;
        $('.slide li').eq(fadeIdx).addClass('on');
        $('.slide_page .page').eq(fadeIdx).addClass('on').siblings().removeClass('on');

        // 자동 슬라이드 되면, 버튼도 같이 바뀌기
        if(fadeIdx == $('.slide li').length){
            fadeIdx = 0;
            $('.slide li').eq(fadeIdx).addClass('on');
            $('.slide_page .page').eq(fadeIdx).addClass('on');
        }
        //return false;
    },4800);
});

// about - 스와이퍼 레이어 클릭시, 레이어 사라짐
$('.slide_bg').click(function(){
    $(this).hide();
});






//wow JS 실행 후, 숫자 돌아가는거 실행
// $(window).scroll(function(){
// 	var sct = $(this).scrollTop();
// 	if(sct > $('.about04').offset().top && !$('.about04').is('.open')){
// 		!$('.about04').addClass('open');
// 		// 숫자
// 		var arr = [];
// 		$('.number').each(function(index){
// 		    var num = $(this).text();
// 		    num = Number(num);
// 		    arr.push(num);
// 		    $(this).animate({
// 		        //'background-position-y': num * - 120 + 'px'
// 				'background-position-y': num * 1080 + 'px'
// 		    },1500);
// 		});
// 	};
// });

// $(window).scroll(function(){
// 	var sct = $(this).scrollTop();
// 	if(sct > $('.about04').offset().top && !$('.about04').is('.open')){
// 		!$('.about04').addClass('open');
// 		// 숫자
// 		var arr = [];
// 		$('.number').each(function(index){
// 		    var num = $(this).text();
// 		    num = Number(num);
// 		    arr.push(num);
// 		    $(this).animate({
// 		        //'background-position-y': num * - 120 + 'px'
// 				'background-position-y': num * 1080 + 'px'
// 		    },1500);
// 		});
// 	};
// });









// more 버튼 클릭했을 때
$('.content .layer_btn_more').click(function(){
    $('.content .layer_btn_more').removeClass('on');
    $(this).addClass('on');
});

// 닫기 버튼 클릭했을 때
$('.btn_close').click(function(){
    $(this).parent().slideUp(300);
    $(this).parent().prev().find('.layer_btn_more').removeClass('on');
});

var headHeight = $('#header').innerHeight();

// more 버튼 클릭하면 뜨는 레이어
$('[class$=_content1] .layer_btn_more').click(function(){

    var idx = $(this).parent().parent().index();
    $('.more1').hide().children().hide();
    $('.more1').show().children('div').eq(idx).show();
    $('.dicom_txt').show();
    $('.btn_close').show();

    var layerOpen = $('.content .more1').offset().top - headHeight + "px";

    $('html,body').animate({scrollTop:layerOpen},500);

    //return false;
});

$('[class$=_content2] .layer_btn_more').click(function(){

    var idx = $(this).parent().parent().index();
    $('.more2').hide().children().hide();
    $('.more2').show().children('div').eq(idx).show();
    $('.dicom_txt').show();
    $('.btn_close').show();

    var layerOpen = $('.content .more2').offset().top - headHeight + "px";
        $('html,body').animate({scrollTop:layerOpen},500);

    //return false;
});



});  //종료
