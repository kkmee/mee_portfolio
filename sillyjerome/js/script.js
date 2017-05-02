$(document).ready(function(){

//리스트 마우스 오버시, 레이어 출력
$('.bread_list li').hover(function(){
    $(this).find('.bread_list_over').fadeIn(300).css('display','block').find('.bread_list_txt').css('border-radius','100%')
    },function(){
    $(this).find('.bread_list_over').fadeOut(300).css('display','none')
});

//커뮤니티 리스트 마우스 오버시, 레이어 출력

if($(window).width() < 523) {
    $('.over').removeClass('cmt_list_over').addClass('mobile');
}
else {
    $('.over').removeClass('mobile').addClass('cmt_list_over');
    $('.cmt_list li').hover(function(){
        $(this).find('.cmt_list_over').fadeIn(300).css('display','block')
        },function(){
        $(this).find('.cmt_list_over').fadeOut(300).css('display','none')
    });
}

//게시판 select 박스
$('.news_sort').click(function(){
if($('.news_sort ul').css('display') == 'none'){
    $('.news_sort ul').show().parent().css('border','1px solid #3b5c93').addClass('on').mouseleave(function(){
        $(this).css('border','1px solid #3b5c93')
    });
}else {
    $('.news_sort ul').hide().parent().removeClass('on').mouseleave(function(){
        $(this).css('border','1px solid #DEDEDE')
    });
}
return false;
});
$('.news_sort').hover(function(){
    $(this).css('border','1px solid #3b5c93')
    }, function(){
    $(this).css('border','1px solid #DEDEDE')
});

$('body').click(function(){
    $('.news_sort ul').css('display','none').parent().removeClass('on').css('border','1px solid #DEDEDE');
})

// 탭메뉴
$('.tabMenu .btn_tabmenu').click(function(){
    $('.layer_gnb_wrap').show();
    $('body').css('overflow-y','hidden');
});
$('.btn_layerclose').click(function(){
    $('.layer_gnb_wrap').hide();
    $('body').css('overflow-y','auto');
});

//top 버튼
$(".btn_top").hide(); // 탑 버튼 숨김

$(window).scroll(function () {
    if ($(this).scrollTop() > 100) { // 스크롤 내릴 표시
        $('.btn_top').fadeIn();
    } else {
        $('.btn_top').fadeOut();
    }
});

$('.btn_top').click(function () {
    $('body,html').animate({
        scrollTop: 0
    },500);
    return false;
});

//서브 메뉴 고정
var position = $('#sub_menu').offset();

$(window).scroll(function(){
    var sct = $(document).scrollTop();
    var sub = $('#sub_menu');
    var sub_list = $('.sub_menu_list');
    var content = $('#contents');
    if(sct > position.top) {  //지금 보고있는 브라우저의 현재 스크롤 위치값이 서브메뉴 Top값보다 크면
        sub.addClass('menufix');
        content.addClass('pt_70');
        sub_list.addClass('sub_scroll').children('.sub_menu_logo, .sub_history').css('display','block');

        if($(window).width() < 820) {
            sub_list.addClass('sub_scroll').children('.sub_menu_logo, .sub_history').css('display','none');
        }
    }
    else {
        sub.removeClass('menufix');
        content.removeClass('pt_70');
        sub_list.removeClass('sub_scroll').children('.sub_menu_logo, .sub_history').css('display','none');
    }


});

//이메일 직접입력
$('.form_email_sel').change(function(){
    $('.form_email_sel option:selected').each(function () {
        if($(this).val() == 'self'){  //직접입력일 경우
            $('.form_email_self').css('display','inline-block').val('').attr({'disabled':false, 'placeholder':'직접입력'}).focus();
            $('#frm_email').attr('disabled',true);
        }else{ //직접입력이 아닐경우
            //$('.form_email_self').val($(this).text());  //선택값 입력
            //$('.form_email_self').attr('disabled',true); //비활성화
            $('.form_email_self').css('display','none');
            $('#frm_email').attr('disabled',false);
        }
    });
});
//메인 슬라이드 배너







}); //종료


$(window).resize(function(){
    var sct = $(document).scrollTop();
    var sub = $('#sub_menu');
    var sub_list = $('.sub_menu_list');
    var content = $('#contents');

    // 탭메뉴
    if($(window).width() > 639){
        $('.layer_gnb_wrap').hide();
        $('body').css('overflow-y','auto');
    }

    if($(window).width() < 523) {
        $('.over').removeClass('cmt_list_over').addClass('mobile');
    }
    else {
        $('.over').removeClass('mobile').addClass('cmt_list_over');
        $('.cmt_list li').hover(function(){
            $(this).find('.cmt_list_over').fadeIn(300).css('display','block')
            },function(){
            $(this).find('.cmt_list_over').fadeOut(300).css('display','none')
        });
    }


}); //resize 종료
