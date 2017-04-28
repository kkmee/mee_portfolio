$(function () {
  npos = $(window).scrollTop();
  SW = $(window).width();
  SH = $(window).height();
  ContentDataInit();
  vision.set();
});
$(window).scroll(function () {
	npos = $(window).scrollTop();
	SW	=	$(window).width();
	SH	=	$(window).height();
});//end scroll

$(window).resize(function () {
    npos = $(window).scrollTop();
    SW = $(window).width();
    SH = $(window).height();
});//end resize


function ContentDataInit() {
    var Actions, Event, total;
    var cur = -1;
    var ncur = -1;
    var cTarget = $('#content_wrap');
    var item = [];
    var default_last_h = 0;

    Init = {
        _start: function () {
            total = cTarget.find('> div').length;
            var _i = 0;
            cTarget.find('> div').each(function ($index) {
                var _t = $(this);
                item[$index] = {
                    _data: _i,
                    _target: _t,
                    _moveFlag: true,
                    _numArr: null,
					_lineArr:null,
					_Render:null,
					_FPS:1000/60,
                    _init: function () {
						if(this._target.find('.line_obj').length > 0){
							var _line_total = this._target.find('.line_obj > div').length;
							var __target = this._target;
							this._lineArr = [];
							__target.find('.line_obj > div').each(function(){
								var _PLINE_TARGET = document.createElement('p');
								var _PLINE_LIGHT = document.createElement('span');
								_PLINE_TARGET.appendChild(_PLINE_LIGHT);
								if($(this).index() < _line_total-1){
									__target.find('.line_data').append(_PLINE_TARGET);
								}
								item[$index]._lineArr.push(_PLINE_TARGET);
							});
							this._pageLine();
						}
						if (AgentFlag) {
							if (this._target.find('.number_format').length > 0) {
								item[$index]._numArr = new Array();
								var __i = 0;
								this._target.find('.number_format').each(function () {
									var __c = true
									if (item[$index]._data == 0) {
										__c = false;
									}
									item[$index]._numArr[__i] = new numberTicker($(this), __c);
									__i++;
								});
							}
						}

                    },
                    _play: function (_posY) {
                        var target = this._target;
						if (AgentFlag == true && IEFlag == false) {
                            if (item[cur]._moveFlag) {
                                var __i = 0;
                                target.find('.e_wrap').each(function () {
                                    var _d = __i * 0.15
                                    TweenMax.to($(this), 0.8, { y: 0, alpha: 1, delay: _d, ease: Quad.easeOut });
                                    __i++
                                });
                            }

							if(this._data == 0){
								if (item[cur]._moveFlag) {
									target.find('.line_obj > div').each(function(){
										var _delay = ($(this).index() * 0.5)+0.5;
										TweenMax.to($(this),0.5,{alpha:1,scale:1,delay:_delay,ease: Back.easeOut});
									});
									target.find('.line_data > p').each(function(){
										var _delay = ($(this).index() * 0.5)+0.5;
										TweenMax.to($(this).find('span'),0.5,{width:'100%',delay:_delay,ease: Linear.easeNone});
									});
								}
							}else if(this._data == 1){
								if (item[cur]._moveFlag) {
									TweenMax.to(target.find('.obj'),1.2,{x:0,alpha:1,delay:0.5,ease:Quad.easeOut});
								}
							}else if(this._data == 2){
								if (item[cur]._moveFlag) {
									target.find('.line_obj > div').each(function(){
										var _delay = ($(this).index() * 0.5)+0.5;
										TweenMax.to($(this).find('.thumb'),0.6,{alpha:1,scale:1,delay:_delay,ease: Back.easeOut});
										TweenMax.to($(this).find('.txt'),0.6,{alpha:1,x:0,delay:_delay,ease:Quad.easeOut});
									});
									target.find('.line_data > p').each(function(){
										var _delay = ($(this).index() * 0.5)+0.5;
										TweenMax.to($(this).find('span'),0.5,{width:'100%',delay:_delay,ease: Linear.easeNone});
									});
									vision.init();
								}
							}else if(this._data == 3){
								if (item[cur]._moveFlag) {
									var k=0;
									// for(k=0;k<item[this._data]._numArr.length;k++){
									// 	item[this._data]._numArr[k]._reset();
									// }
								}
							}else if(this._data == 4){
								if (item[cur]._moveFlag) {
									setTimeout(function(){
										$('#product_txt').fadeOut(300);
									},3500);
								}
							}
                        }
                        this._moveFlag = false;
                    },
                    _reset: function () {
                        var target = this._target;
                        this._moveFlag = true
						if (AgentFlag == true && IEFlag == false) {
                            target.find('.e_wrap').each(function () {
                                TweenMax.set($(this), { y: 50, alpha: 0 });
                            });

							if(this._data == 0){
								target.find('.line_obj > div').each(function(){
									TweenMax.set($(this),{alpha:0,scale:0.8});
								});


								target.find('.line_data > p').each(function(){
									TweenMax.set($(this).find('span'),{width:0});
								});

							}else if(this._data == 1){
								TweenMax.set(target.find('.obj'),{x:70,alpha:0});
							}else if(this._data == 2){
								target.find('.line_data > p').each(function(){
									TweenMax.set($(this).find('span'),{width:0});
								});
								target.find('.line_obj > div').each(function(){
									TweenMax.set($(this).find('.thumb'),{scale:0});
									TweenMax.set($(this).find('.txt'),{alpha:0,x:-50});
								});
							}
                        }
                    },
					_pageLine:function(){
						var __target = this._target;
						var __line = this._lineArr;
						var dx_1,dy_1,dis_1,angle_1,_y_1,_x_1,_t,_lt,_i,_n;

						this._target.find('.line_obj > div').each(function(){

							_t = $(this);
							_i = $(this).index();
							_n = $(this).next();
							if($(this).index() < __line.length-1){

								_lt = __line[$(this).index()];
								dx_1 = (_t.offset().left+_t.innerWidth()/2)-(_n.offset().left+(_n.innerWidth()/2));
								dy_1 = (_t.offset().top+_t.innerHeight()/2)-(_n.offset().top+(_n.innerHeight()/2));
								dis_1 = Math.sqrt(dx_1*dx_1+dy_1*dy_1);
								angle_1 = Math.atan2(dy_1,dx_1)*180/Math.PI;
								_y_1 = ((_n.offset().top+(_n.innerHeight()/2))-(_t.offset().top+(_t.innerHeight()/2)))/2+(_t.offset().top+_t.innerHeight()/2)-__target.offset().top;
								_x_1 = ((_n.offset().left+(_n.innerWidth()/2))+_t.offset().left+(_t.innerWidth()*0.5))/2-(dis_1/2)-__target.offset().left;
								_lt.style.width = dis_1+'px';
								_lt.style.top = _y_1+'px';
								_lt.style.left = _x_1+'px';
								_lt.style.webkitTransform = _lt.style.MozTransform = _lt.style.OTransform = _lt.style.transform = 'rotate(' + angle_1 + 'deg)';
							}
						});
					},
					lineRenderStart:function(){
						var _index = this._data;
						var _self = this;
						this._Render = setInterval(function(){_self._pageLine();},_self._FPS);
					},
					lineRenderStop:function(){
						if(this._Render)clearInterval(this._Render);
					},
					_resize:function(){
						//console.log(this._data);

						if(this._target.find('.line_obj').length > 0){
							if(this._Render)clearInterval(this._Render);
							this._pageLine();
						}
					}
                }
                item[$index]._init();
                item[$index]._reset();
                _i++
            });
            if (item && item[cur]) {
                item[cur]._play(npos);
            }
        }
    }//init End

    Actions = {
        _pageHandler: function (_posY) {
            if (item && item[cur]) {
                item[cur]._play(_posY);
            }
        },
        _pageHandler: function (_posY) {
            if (item && item[cur]) {
                item[cur]._play(_posY);
            }
        },
        _pageResize: function () {
			var i=0;
			for(i=0;i<item.length;i++){
				item[i]._resize();
			}
        }
    }//Actions End



    Event = {
        _activeHandler: function (index) {
			var _mb = SH - (SH / 3);

            cTarget.find('> div').each(function () {
                if ($(this).index() != total - 1) {
                    if (index >= $(this).offset().top - _mb && index <= $(this).next().offset().top - _mb) {
                        cur = $(this).index();
                    }
                } else {
                    if (index >= $(this).offset().top - _mb) {
                        cur = $(this).index();
                    }
                }
            });
            if (index < cTarget.offset().top) ncur = -1;
            if (index < cTarget.offset().top - _mb) cur = -1;
        }
    }//Event End

    $(window).scroll(function () {
        npos = $(window).scrollTop();
        SW = $(window).width();
        SH = $(window).height();
        Event._activeHandler(npos);
        Actions._pageHandler(npos);
    });//end scroll

    $(window).resize(function () {
        SW = $(window).width();
        SH = $(window).height();
        Actions._pageResize();
    });//end resize

	$(document).ready(function(){
		Init._start();
		Event._activeHandler(npos);
		Actions._pageHandler(npos);
	});

}//conInit End


var vision = {
	cur:-1,
	prev:-1,
	len:0,
	timer:null,
	speed:4000,
	set:function(){
		vision.len = $('.about03').find('.line_obj > div').length;
	},
	init:function(){
		$(window).resize(function(){
			vision.resize();
		});
		vision.resize();

		$('.about03').find('.line_obj > div').bind('mouseenter mouseleave',function(e){
			if(e.type == 'mouseenter'){
				if(SW > 1024){
					//console.log('hover');
					vision.prev = vision.cur;
					vision.cur = $(this).index();
					vision.start();
					clearInterval(vision.timer);
				}
			}else{
				if(SW > 1024){
					vision.timer = setInterval(vision.autoTimer,vision.speed);
				}
			}
		});

	},
	start:function(){
		$('.about03').find('.line_obj > div').each(function(){
			if($(this).index() == vision.cur){
				$(this).addClass('effect');
				TweenMax.to($(this).find('.thumb'),0.5,{width:229,height:229,'margin-top':-115,'margin-left':-115,ease:Quad.easeOut});
			}else{
				$(this).removeClass('effect');
				TweenMax.to($(this).find('.thumb'),0.5,{width:16,height:16,'margin-top':0,'margin-left':0,ease:Quad.easeOut});
			}
		});
	},
	autoTimer:function(){
		vision.prev = vision.cur;
		vision.cur = (vision.cur >= vision.len-1)?0:vision.cur = vision.cur+1;
		vision.start();
	},
	resize:function(){
		if(SW > 1024){
			clearInterval(vision.timer);
			vision.timer = setInterval(vision.autoTimer,vision.speed);
		}else{
			clearInterval(vision.timer);
		}
	}
}





AgentFlag = set_ui();
IEFlag = (navigator.appVersion.indexOf("MSIE 7") > -1 || navigator.appVersion.indexOf("MSIE 8") > -1)?true:false;
IEAllFlag = (navigator.appVersion.indexOf("MSIE 7") > -1 || navigator.appVersion.indexOf("MSIE 8") > -1 || navigator.appVersion.indexOf("MSIE 9") > -1)?true:false;
IE7Flag = (navigator.appVersion.indexOf("MSIE 7") > -1)?true:false;
ReponList = [];
pageCur = -1;

function set_ui(){
	var UserAgent = navigator.userAgent;
	var UserFlag	=	true;
	return UserFlag
};//end set_ui
