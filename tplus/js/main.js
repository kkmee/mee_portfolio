$(function(){
	mCheck = $(window).width();
	npos = $(window).scrollTop();
	SW	=	$(window).width();
	SH	=	$(window).height();

	// dose_slide = $('.dose_slide').bxSlider({
	// 	mode:'fade',
	// 	auto: true,
	// 	autoStart: true,
	// 	autoHover: true,
	// 	controls:false,
	// 	pager:true,
	// });


	main_visual.setting();
	preload();
});//end ready

$(document).ready(function(){

});

$(window).scroll(function() {
	npos = $(window).scrollTop();
	SW	=	$(window).width();
	SH	=	$(window).height();
});//end scroll

$(window).resize(function(){
	if (mCheck != $(window).width()) {
		npos = $(window).scrollTop();
		SW	=	$(window).width();
		SH	=	$(window).height();
		// dose_slide.reloadSlider({
		// 	mode:'fade',
		// 	auto: true,
		// 	autoStart: true,
		// 	autoHover: true,
		// 	controls:false,
		// 	pager:true
		// });
		main_visual.resize();
		mCheck = $(window).width();
	}

});//end resize


function preload(){
	var imgs = [];
	var bar = $('#LOAD_BAR');
	$('img').each(function(){
		imgs.push($(this).attr('src'));
	});

	progress(imgs, function(percent){
		bar.stop(true).animate({'width':(percent*100)+'%'},300,'easeOutQuad');
	}, function(){
		setTimeout(loadComplete,500)
	});
}

function progress( imageArr, callbackProgress, callbackComplete ){
	var count = 0;
	var length = imageArr.length;
	load(imageArr[count]);

	function load(url){
		var image = new Image();

		function loadhandler(){
			var percent = ++count/length;
			callbackProgress(percent);

			if(count != length){
				load(imageArr[count]);
			}else{
				callbackComplete();
			}
		}
		image.onload = loadhandler;
		image.onerror = loadhandler;
		image.src= url;
	}
}

function loadComplete(){
	main_visual.intro();
	main_visual.init();
}





var main_visual = {
	cur:0,
	prev:-1,
	len:0,
	flag:false,
	target:null,
	first:true,
	timer:null,
	speed:6000,
	FPS:1000/60,
	angleArr:null,
	pageLineTotal:null,
	Render:null,
	light:null,
	init:function(){
		/************************************
			@ setting effect
		************************************/
		main_visual.target.find('.big_wrap .txt_cell').each(function(){
			$(this).find('p').each(function(){
				var _dx;
				if(SW > 1024){
					_dx = ($(this).index()%2 == 0)?-50:50;
				}else{
					_dx = 0;
				}
				TweenMax.set($(this),{x:_dx,alpha:0});
			});
		});

		/************************************
			@ event add
		************************************/
		main_visual.target.find('.page .btn_data > div .thumb').bind('mouseenter mouseleave',function(e){
			if(e.type == 'mouseenter'){
				if(SW > 1024){
					//console.log('hover');
					main_visual.prev = main_visual.cur;
					main_visual.cur = $(this).parent().index()-1;
					main_visual.start();
					clearInterval(main_visual.timer);
				}
			}else{
				if(SW > 1024){
					main_visual.timer = setInterval(main_visual.autoTimer,main_visual.speed);
				}
			}
		});

		//main_visual.timer = setInterval(main_visual.autoTimer,main_visual.speed);


		/*
		main_visual.light = new TimelineMax({repeat:-1,repeatDelay:1});
		$('#P_LINE').find('> p').each(function(){
			main_visual.light.add(TweenMax.to($(this).find('span'),0.7,{right:'100%',delay:0,ease:Linear.easeNone}))
		});
		main_visual.light.pause();
		*/

		main_visual.start();
		main_visual.resize();
	},
	setting:function(){
		main_visual.target = $('#main_visual');
		main_visual.len = $('#BIG_DATA').find('> div').length;
		main_visual.pageLineTotal = $('#PAGE').find('.btn_data > div').length;
		main_visual.angleArr = [];


		// btn line setting
		$('#PAGE').find('.btn_data > div').each(function(){
			/*
			var _Tween = new TimelineMax({repeat:-1});
				_Tween.add(TweenMax.to($(this).find('.line'),0,{rotation:0,ease:Linear.easeNone}))
				_Tween.add(TweenMax.to($(this).find('.line'),6,{rotation:360,ease:Linear.easeNone}))
				_Tween.pause();

				*/

			var _total = 58;
			var _data = {
				_len:_total,
				_target:$(this),
				//_LineTween:_Tween
			}
			main_visual.angleArr.push(_data);
			/*
			var angle = 0;
			var increase  = Math.PI * 2 / _total;
			var _x = 0;
			var _y = 0;
			var _w = 5;
			var _h = 5;
			var _stageW = 118/2;
			var _stageH = 118/2;
			var _i = 0;
			var _pTarget = $(this).find('.line');
			for(_i=0;_i < _total;_i++){

				var _t = document.createElement( 'div' );
				var _s = document.createElement('span')
				_t.appendChild(_s);
				_x = (_stageW*-1) * Math.cos(angle) + _stageW;
				_y = (_stageH*-1) * Math.sin(angle) + _stageH;
				_t.style.webkitTransform = _t.style.MozTransform = _t.style.OTransform = _t.style.transform = 'rotate(' + Math.atan2(_y-_stageH,_x-_stageW) + 'rad)';
				_x = _x - _w;
				_y = _y - _h;
				_t.style.left = _x + 'px';
			    _t.style.top = _y + 'px';
				_s.style.webkitTransform = _s.style.MozTransform = _s.style.OTransform = _s.style.transform = 'matrix(0,0,0,0,0,0)';
				_pTarget.append(_t)
				angle += increase;
			}
			*/

			var _PLINE_TARGATE = document.createElement('p');
			var _PLINE_LIGHT = document.createElement('span');
			_PLINE_TARGATE.appendChild(_PLINE_LIGHT);
			_PLINE_TARGATE.id = "P_LINE"+$(this).index();
			if($(this).index() <= main_visual.len)$('#P_LINE').append(_PLINE_TARGATE);
		});
	},
	start:function(){

		main_visual.target.find('.big_wrap > div').each(function(){
			if($(this).index() == main_visual.cur){
				$(this).css({'z-index':10}).show();
				$(this).find('p').each(function(){
					var _delay = (SW <= 1024)?0:($(this).index() * 0.12)+0.2;
					TweenMax.to($(this),1.2,{x:0,alpha:1,delay:_delay,ease:Expo.easeOut});
				});
			}else if($(this).index() == main_visual.prev){
				$(this).css({'z-index':5});
				$(this).find('p').each(function(){
					var _delay,_dx;
					if(SW > 1024){
						_delay = ($(this).index() * 0.12)+0.2;
						_dx = ($(this).index()%2 == 0)?50:-50;
					}else{
						_delay = 0;
						_dx = 0;
					}
					TweenMax.to($(this),1.2,{x:_dx,alpha:0,delay:_delay,ease:Expo.easeOut});
				});
			}
		});

		main_visual.target.find('.visual_wrap > div').each(function(){
			if($(this).index() == main_visual.cur){
				$(this).css({'z-index':10}).show();
				TweenMax.to($(this),1.2,{alpha:1});

			}else if($(this).index() == main_visual.prev){
				$(this).css({'z-index':5});
				TweenMax.to($(this),1.2,{alpha:0});
			}else{
				TweenMax.set($(this),{alpha:0});
			}
		});


		//console.log(main_visual.angleArr[main_visual.cur]);

		main_visual.target.find('.page .btn_data > div').each(function(){
			if($(this).index() == main_visual.cur+1){
				$(this).addClass('hover');
				$(this).find('.line > div').each(function(){
					TweenMax.killTweensOf($(this).find('span'));
					var _delay = ($(this).index() * 0.01)+0.1;
					TweenMax.to($(this).find('span'),1.2,{scale:1,delay:_delay,ease:Elastic.easeOut});
				});
			}else{
				$(this).removeClass('hover');
				$(this).find('.line > div').each(function(){
					TweenMax.killTweensOf($(this));
					TweenMax.to($(this).find('span'),0.6,{scale:0});
				});
			}
		});

		/*
		var _k=0;
		for(_k=0;_k<main_visual.angleArr.length;_k++){
			if((main_visual.cur+1) == _k){
				main_visual.angleArr[_k]._LineTween.resume();
			}else{
				main_visual.angleArr[_k]._LineTween.pause();
			}
		}
		*/

	},
	end:function(){

	},
	pageLine:function(){
		var dx_1,dy_1,dis_1,angle_1,_y_1,_x_1,_t,_lt,_i,_n;
		main_visual.target.find('#PAGE .btn_data > div').each(function(){

			_t = $(this);
			_i = $(this).index();
			_n = $(this).next();
			if($(this).index() < main_visual.pageLineTotal-1){

				_lt = document.getElementById("P_LINE"+$(this).index());
				dx_1 = (_t.offset().left+_t.innerWidth()/2)-(_n.offset().left+(_n.innerWidth()/2));
				dy_1 = (_t.offset().top+_t.innerHeight()/2)-(_n.offset().top+(_n.innerHeight()/2));
				dis_1 = Math.sqrt(dx_1*dx_1+dy_1*dy_1);
				angle_1 = Math.atan2(dy_1,dx_1)*180/Math.PI;
				_y_1 = ((_n.offset().top+(_n.innerHeight()/2))-(_t.offset().top+(_t.innerHeight()/2)))/2+(_t.offset().top+_t.innerHeight()/2);
				_x_1 = ((_n.offset().left+(_n.innerWidth()/2))+_t.offset().left+(_t.innerWidth()*0.5))/2-(dis_1/2)-main_visual.target.offset().left;
				_lt.style.width = dis_1+'px';
				_lt.style.top = _y_1+'px';
				_lt.style.left = _x_1+'px';
				_lt.style.webkitTransform = _lt.style.MozTransform = _lt.style.OTransform = _lt.style.transform = 'rotate(' + angle_1 + 'deg)';
			}
		});

	},
	resize:function(){
		main_visual.pageLine();
			clearInterval(main_visual.timer);
			main_visual.timer = setInterval(main_visual.autoTimer,main_visual.speed);
			//main_visual.angleArr[main_visual.cur+1]._LineTween.resume();
		//main_visual.target.find('.bg').hide();
		$('#LOAD_BAR').hide();
	},
	autoTimer:function(){
		main_visual.prev = main_visual.cur;
		main_visual.cur = (main_visual.cur >= main_visual.len-1)?0:main_visual.cur = main_visual.cur+1;
		main_visual.start();

		main_visual.target.find('#PAGE .btn_data > div').each(function(){
			if(SW > 1024){
				if($(this).index() == main_visual.cur+1){
					var _y;

					if($(this).index() == 1){
						 _y = Math.floor(Math.random()*(0-52)+152);
					}else if($(this).index() == 2){
						 _y = Math.floor(Math.random()*(0-50)+50);
					}else if($(this).index() == 3){
						 _y = Math.floor(Math.random()*(0-195)+195);
					}
					TweenMax.killTweensOf($(this));
					TweenMax.to($(this),2.2,{'bottom':_y,ease:Elastic.easeOut,onComplete:function(){
						main_visual.lineRenderStop();
					}});
					main_visual.lineRenderStart();
				}
			}
		});

	},
	lineRenderStart:function(){
		main_visual.Render = setInterval(main_visual.pageLine,main_visual.FPS);
	},
	lineRenderStop:function(){
		//console.log('stop');
		if(main_visual.Render)clearInterval(main_visual.Render);
	},
	intro:function(){
		if(SW > 1024){
			TweenMax.to(main_visual.target.find('.bg'),0.6,{alpha:0,onComplete:function(){this.target.hide();}});
			main_visual.target.find('#PAGE .btn_data > div').each(function(){
				var _y = 0;
				if($(this).index() == 1){
					_y = 152;
				}else if($(this).index() == 3){
					_y = 195;
				}
				TweenMax.to($(this),0.9,{'bottom':_y,ease:Quad.easeOut,onStart:function(){
					$('#LOAD_BAR').hide();
				},
				onComplete:function(){
					if(this.target.index() == 3)main_visual.lineRenderStop();
				}});
			});
			main_visual.lineRenderStart();
		}else{

		}

	}

}
