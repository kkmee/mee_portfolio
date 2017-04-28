$(document).ready(function(){

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
    return false;
});










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

//뉴스룸 컨텐츠 클릭 시, 레이어 출력
$('.element-item a').click(function(){
    $('#pop').fadeIn(300).show();
    return false;
});
// layer popup 목록 & 닫기 버튼 눌렀을 때
$('#pop .popico_close, #pop .popico_list').click(function(){
    $('#pop').fadeOut(200);
});

//about페이지 - 슬라이드 bg 클릭 시, 사라지는 효과
$('.slide_bg').click(function(){
    $(this).fadeOut(500);
});

// 숫자
var arr = [];
$('.number').each(function(index){
    var num = $(this).text();
    num = Number(num);
    arr.push(num);
    $(this).animate({
        'background-position-y': num * 1080 + 'px'
    },1000);
});

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


// more 버튼 클릭하면 뜨는 레이어
$('[class$=_content1] .layer_btn_more').click(function(){

    var idx = $(this).parent().parent().index();
    $('.more1').hide().children().hide();
    $('.more1').show().children('div').eq(idx).show();
    $('.dicom_txt').show();
    $('.btn_close').show();

    var layerOpen = $('.content .more1').offset().top - 59 + "px";
        $('html,body').animate({scrollTop:layerOpen},500);

    return false;
});

$('[class$=_content2] .layer_btn_more').click(function(){

    var idx = $(this).parent().parent().index();
    $('.more2').hide().children().hide();
    $('.more2').show().children('div').eq(idx).show();
    $('.dicom_txt').show();
    $('.btn_close').show();

    var layerOpen = $('.content .more2').offset().top - 59 + "px";
        $('html,body').animate({scrollTop:layerOpen},500);

    return false;
});


}); //종료
