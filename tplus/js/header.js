IEFlag = (navigator.appVersion.indexOf("MSIE 7") > -1 || navigator.appVersion.indexOf("MSIE 8") > -1)?true:false;
IEAllFlag = (navigator.appVersion.indexOf("MSIE 7") > -1 || navigator.appVersion.indexOf("MSIE 8") > -1 || navigator.appVersion.indexOf("MSIE 9") > -1)?true:false;
IE7Flag = (navigator.appVersion.indexOf("MSIE 7") > -1)?true:false;
ReponList = [];
pageCur = -1;

$(function(){
	mResizeCheck = $(window).width();
	npos = $(window).scrollTop();
	SW	=	$(window).width();
	SH	=	$(window).height();
	commonTop.init();

});//end ready


$(window).scroll(function() {
	npos = $(window).scrollTop();
	SW	=	$(window).width();
	SH	=	$(window).height();
	commonTop.scrollCheck();
});//end scroll

$(window).resize(function(){
	if (mResizeCheck != $(window).width()) {
		npos = $(window).scrollTop();
		SW	=	$(window).width();
		SH	=	$(window).height();
		commonTop.scrollCheck();
		commonTop.GnbResize();

	}

});//end resize


    var commonTop = {
    	cur:-1,
    	flag:true,
    	btnTopFlag:false,
    	init:function(){
    		commonTop.btnTopFlag = (npos >= 135)?false:true;
    		TweenMax.set($('#topLine'),{scale:0,alpha:1});

    		// $('.gnb_list').find('> ul > li > a').click(function(){
    		// 	if($(this).parent().hasClass('two')){
    		// 		commonTop.SnbCheck($(this).parent().index());
    		// 	}
    		// });
    		$('.gnb_wrap').find('> ul > li').mouseenter(function(e){
    			$('.gnb_wrap').addClass('hover');
    			if(commonTop.cur < 0)commonTop.cur02 = $(this).index();
    			TweenMax.to($('#topLine'),1.2,{scale:1,ease:Expo.easeOut});
    			commonTop.GnbOverHand($(this).index());
    			commonTop.Bar($(this).index());
    			if($('#header').hasClass('fix')){
    				$('#snbBg').show();
    			}
    		});

    		$('.gnb_wrap').find('> ul').mouseleave(function(){
    			$('.gnb_wrap').removeClass('hover');
    			commonTop.GnbOutHand();
    			if($('#header').hasClass('fix')){
    				$('#snbBg').hide();
    			}
    		});
    		commonTop.scrollCheck();
    	},
    	scrollCheck:function(){
    		if(SW > 1024){
    			$('#header').removeClass('open');
    			$('html').removeClass('fix');
    		}

    		if(SW > 1024){
    			//pc
    			if(npos > 0){
    				$('#header').addClass('fix');
					//$('#header .header_wrap h1').css('top','20px');
					$('#header .global_wrap').css('top','18px');
    				if(!commonTop.flag){
    					$('#topLine').css({
    						'left':'0',
    						'width':'100%',
    						'margin-left':0
    					});
    					TweenMax.set($('#topLine'),{scale:1});
    					if($('.gnb_wrap').hasClass('hover')){
    						$('#snbBg').show();
    					}
    				}
    				commonTop.flag = true;
    			}else{
    				$('#header').removeClass('fix');
					//$('#header .header_wrap h1').css('top','30px');
					$('#header .global_wrap').css('top','34px');
    				if(commonTop.flag){
    					$('#topLine').css({
    						'left':'50%',
    						'width':$('.gnb_wrap').find('> ul').innerWidth(),
    						'margin-left':($('.gnb_wrap').find('> ul').innerWidth()/2)*-1
    					});
    					if(!$('.gnb_wrap').hasClass('hover')){
    						TweenMax.set($('#topLine'),{scale:0});
    					}else{
    						TweenMax.set($('#topLine'),{scale:1});
    					}

    					$('#snbBg').hide();
    				}
    				commonTop.flag = false;
    			}
    		}else{
    			//mobile
    			if(npos > 0){
    				$('#header').addClass('fix');
    			}else{
    				$('#header').removeClass('fix');
    			}
    		}

    		var _topY = 135;
    		if(npos >= _topY){
    			if(!commonTop.btnTopFlag){
    				$('#btn_top_scroll').stop(true).fadeIn(300);
    			}
    			commonTop.btnTopFlag = true;

    		}else{
    			if(commonTop.btnTopFlag){
    				$('#btn_top_scroll').stop(true).fadeOut(300);
    			}
    			commonTop.btnTopFlag = false;
    		}
    		//console.log(commonTop.btnTopFlag);

    	},
    	GnbCheck:function(){
    		if($("#header").hasClass("open")){
    			$("#header").removeClass("open");
    			$('html').removeClass('fix');
    		}else{
    			$("#header").addClass("open");
    			$('html').addClass('fix');
    		}
    	},
    	SnbCheck:function(_i){
    		$('.gnb_list').find('> ul > li').each(function(){
    			if($(this).index() == _i){
    				$(this).addClass('open');
    				$(this).find('.snb_list').stop(true).slideDown(300);
    			}else{
    				$(this).removeClass('open');
    				$(this).find('.snb_list').stop(true).slideUp(300);
    			}
    		});
    	},
    	GnbOverHand:function(_i){
    		$('.gnb_wrap').find('> ul > li').each(function(){
    			if($(this).index() == _i){
    				$(this).find('.snb_wrap').stop(true).fadeIn(300);
    			}else{
    				$(this).find('.snb_wrap').stop(true).hide();
    			}
    		});

    	},
    	GnbOutHand:function(_i){
    		$('.gnb_wrap').find('> ul > li').each(function(){
    			$(this).find('.snb_wrap').stop(true).hide();
    		});
    		if(!$('#header').hasClass('fix')){
    			TweenMax.to($('#topLine'),1.2,{scale:0,ease:Expo.easeOut});
    		}
    		TweenMax.to($('#topBar'),0.6,{alpha:0,ease:Expo.easeOut});

    	},
    	GnbSet:function(_i){
    		commonTop.cur = _i;
    		// if(commonTop.cur >= 0){
    		// 	//commonTop.GnbOverHand(commonTop.cur);
    		// 	$('.gnb_wrap').find('> ul > li').eq(commonTop.cur).addClass('actived');
    		// 	$('.gnb_wrap').find('> ul > li').eq(commonTop.cur).find('.snb_wrap > ul > li > a').attr('href','javascript:;');
    		// 	$('.gnb_list').find('> ul > li').eq(commonTop.cur).find('.snb_list > li > a').attr('href','javascript:;');
    		// 	pageCur = commonTop.cur;
			//
			//
    		// }
    	},
    	GnbResize:function(){
    		if(commonTop.cur >= 0 && SW > 1024){
    			//if($('#header').hasClass('fix'))commonTop.Bar(commonTop.cur);
    		}
    		if(commonTop.cur < 0 && SW > 1024){
    			//commonTop.GnbOverHand(commonTop.cur02);
    		}
    	},
    	Bar:function(_i){
    		var _target = $('.gnb_wrap').find('> ul > li').eq(_i).find('> a');
    		var _dx = ((_target.offset().left+_target.innerWidth()/2)-7)-$('#header').find('.gnb_wrap').offset().left;
    		TweenMax.to($('#topBar'),1.2,{left:_dx,opacity:1,ease:Expo.easeOut});
    	}
    }
