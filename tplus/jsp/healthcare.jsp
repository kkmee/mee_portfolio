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
<script type="text/javascript" src="../js/line.js"></script>
<script type="text/javascript" src="../js/header.js"></script>
<script type="text/javascript" src="../js/isotope.pkgd.min.js"></script>
<script type="text/javascript" src="../js/wow.min.js"></script>
</head>
<body>
<!-- wrap [시작] -->
<section id="wrap">

<%@include file="header.jsp" %>

<!-- container -->
<section id="container">
    <section id="content_wrap">
        <!-- healthcare01 -->
        <div class="content healthcare01" id="health01">
            <div class="data_wrap">
                <div class="sub_title">
                    <span class="name wow fadeInUp" data-wow-duration="1.4s" data-wow-delay="0.1s">healthcare it</span>
                    <span class="title wow fadeInUp" data-wow-duration="1.4s" data-wow-delay="0.3s">healthcare<br />platform expert</span>
                    <span class="info wow fadeInUp" data-wow-duration="1.4s" data-wow-delay="0.6s">다년간의 병원, 공공사업 프로젝트를 통해<br />여러 병원과 정보를 엮을 기술과 인프라를 구축하고 있으며<br />병원에서 필요한 모든 헬스케어 IT분야를 연구/개발하는데 주력하고 있습니다.</span>
                </div>
                <div class="line_obj wow fadeIn" data-wow-duration="1.4s" data-wow-delay="0.3s">
                    <div class="obj01"><div class="d_t"><div class="d_c">의료정보<br />플랫폼</div></div></div>
                    <div class="obj02"><div class="d_t"><div class="d_c">의료영상<br />관리</div></div></div>
                    <div class="obj03"><div class="d_t"><div class="d_c">의료방사선<br />선량관리</div></div></div>
                    <div class="obj04"><div class="d_t"><div class="d_c">의료솔루션<br />패키지</div></div></div>
                    <div class="obj05"><div class="d_t"><div class="d_c">환자주도<br />건강관리</div></div></div>
                </div>
                <div class="line_data"></div>
            </div>
        </div>
        <!-- //healthcare01 -->
        <!-- healthcare02 -->
        <div class="content healthcare02" id="health02">
            <div class="data_wrap">
                <div class="txt_wrap">
                    <h3 class="wow fadeInUp" data-wow-duration="1.4s" data-wow-delay="0.1s">의료정보분야(hie/ix)</h3>
                    <span class="txt_info wow fadeInUp" data-wow-duration="1.4s" data-wow-delay="0.2s">티플러스는 의료정보를 표준 방식에 의해 관리하는 기술을 연구하고 있으며,<br />개개인의 건강데이터와 의료데이터를 조합·분석하여 ‘개인맞춤 정밀의료’를 실현합니다.</span>
                </div>
                <div class="thumb_list">
                    <ul>
                        <li class="wow fadeInUp" data-wow-duration="1.4s" data-wow-delay="0.1s">
                            <div class="hie_content1">
                                <div class="thumb"><img src="../images/content/healthcare02_obj01.jpg" alt="썸네일" /></div>
                                <dl>
                                    <dt>tplus hie<span>(cross vine)</span></dt>
                                    <dd><span>HIE(Health Information Exchange)</span>란 국가가 인정한 표준에 따라 건강 관련 정보를 조직 간에 전자적으로 주고 받는 것을 의미하며 안전하고, 효율적인 의료서비스 환경을 지원합니다.</dd>
                                </dl>
                                <div class="layer_btn_more"><a href="javascript:void(0)">more</a></div>
                            </div>
                        </li>
                        <li class="wow fadeInUp" data-wow-duration="1.4s" data-wow-delay="0.2s">
                            <div class="ix_content1">
                                <div class="thumb"><img src="../images/content/healthcare02_obj02.jpg" alt="썸네일" /></div>
                                <dl>
                                    <dt>tplus ix<span>(image vine)</span></dt>
                                    <dd><span>IX(Image Exchange)</span>란 연계된 의료기관 간 의료영상 이미지를 상호 교류하는 기술로 진료기록이 담긴 CD를 환자가 직접 병원에 전달해야 하는 불편함을 해소할 수 있습니다.</dd>
                                </dl>
                                <div class="layer_btn_more"><a href="javascript:void(0)">more</a></div>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>
            <!-- 숨겨진 레이어 -->
            <div class="more_data more1">
                <!-- HIE -->
                <div class="more_wrap hie">
                    <h3 class="wow fadeInUp" data-wow-duration="1s" data-wow-delay="0.1s">tplus hie</h3>
                    <span class="title_info wow fadeInUp" data-wow-duration="1.4s" data-wow-delay="0.2s">(cross vine)</span>
                    <span class="info wow fadeInUp" data-wow-duration="1.4s" data-wow-delay="0.3s">진료정보교류 플랫폼을 통해<br />효율적인 의료서비스 환경을 지원합니다.</span>
                    <div class="line_list">
                        <ul>
                            <li class="wow fadeInUp" data-wow-duration="1.4s" data-wow-delay="0.4s">의료전달<br />체계 효율화</li>
                            <li class="wow fadeInUp" data-wow-duration="1.4s" data-wow-delay="0.5s">환자중심의<br />편의 향상</li>
                            <li class="wow fadeInUp" data-wow-duration="1.4s" data-wow-delay="0.6s">의료산업<br />활성화</li>
                        </ul>
                    </div>
                    <div class="thumb_list">
                        <ul>
                            <li class="wow fadeInUp" data-wow-duration="1s" data-wow-delay="0.1s">
                                <div>
                                    <div class="thumb"><img src="../images/content/HIE_visual01.jpg" alt="썸네일" /></div>
                                    <dl>
                                        <dt>before</dt>
                                        <dd>환자가 직접 의무기록과 처방, 소견서, 영상촬영CD를 전달하여 진료.</dd>
                                        <dd>의료기관 간 의사소통이 어려움</dd>
                                        <dd>진단, 중복처방, 재촬영 등으로 의료비 부담 증가</dd>
                                        <dd>병원간 정보 교류 미흡, 전염질병 예방활동 부족(사스, 메르스 등)</dd>
                                    </dl>
                                </div>
                            </li>
                            <li class="wow fadeInUp" data-wow-duration="1s" data-wow-delay="0.2s">
                                <div>
                                    <div class="thumb"><img src="../images/content/HIE_visual02.jpg" alt="썸네일" /></div>
                                    <dl>
                                        <dt>after</dt>
                                        <dd>중복검사 최소화, 진료기록 분실 및 훼손 방지, 영상촬영 CD와 소견서 사라짐.</dd>
                                        <dd>의료기관 간 의사소통 개선으로 진료정보 확인 용이,의료사고 방지</dd>
                                        <dd>병원 접근성 향상 및 의료비 절감, 진료기록 관리업무 감소.</dd>
                                        <dd>위험질병 국내유입 시, 예방 및 확산 방지. 특정환자에 대한 추적, 통계처리 용이</dd>
                                    </dl>
                                </div>
                            </li>
                        </ul>
                    </div>
                </div>
                <!-- //HIE -->
                <!-- IX -->
                <div class="more_wrap ix">
                    <h3 class="wow fadeInUp" data-wow-duration="1s" data-wow-delay="0.1s">tplus ix</h3>
                    <span class="title_info wow fadeInUp" data-wow-duration="1s" data-wow-delay="0.2s">(image vine)</span>
                    <span class="info wow fadeInUp" data-wow-duration="1s" data-wow-delay="0.3s">의료영상 교류로<br />환자가 직접 진료기록을 들고 다니는 불편함을 해소합니다.</span>
                    <div class="line_list">
                        <ul>
                            <li class="wow fadeInUp" data-wow-duration="1.4s" data-wow-delay="0.4s">진료기록 분실<br />및 훼손 방지</li>
                            <li class="wow fadeInUp" data-wow-duration="1.4s" data-wow-delay="0.5s">중복 검사<br />최소화</li>
                            <li class="wow fadeInUp" data-wow-duration="1.4s" data-wow-delay="0.6s">의료진 간<br />의사소통<br />활성화</li>
                        </ul>
                    </div>
                    <div class="thumb_list">
                        <ul>
                            <li class="wow fadeInUp" data-wow-duration="1s" data-wow-delay="0.1s">
                                <div>
                                    <div class="thumb"><img src="../images/content/IX_visual01.jpg" alt="썸네일" /></div>
                                    <dl>
                                        <dt>before</dt>
                                        <dd>환자가 직접 의무기록과 처방, 소견서, 영상촬영CD를 전달하여 진료.</dd>
                                        <dd>진단, 중복처방, 재촬영 등으로 인한 병원비 과다 청구. 진료기록 발급의 번거로움</dd>
                                    </dl>
                                </div>
                            </li>
                            <li class="wow fadeInUp" data-wow-duration="1s" data-wow-delay="0.2s">
                                <div>
                                    <div class="thumb"><img src="../images/content/IX_visual02.jpg" alt="썸네일" /></div>
                                    <dl>
                                        <dt>after</dt>
                                        <dd>중복검사 최소화, 진료기록 분실 및 훼손 방지, 영상촬영 CD와 소견서 사라짐.</dd>
                                        <dd>병원 접근성 향상 및 의료비 절감, 진료기록 발급 및 업로드 대기시간 불필요</dd>
                                    </dl>
                                </div>
                            </li>
                        </ul>
                    </div>
                </div>
                <!-- //IX -->
                <div class="dicom_txt wow fadeInUp" data-wow-duration="1s" data-wow-delay="0.2s">
                    <a href="javascript:void(0)">dicom 로고</a>
                    <span>All components are passed 2016 EU<br />Connectathon Test</span>
                </div>
                <div class="btn_close"><a href="javascript:void(0)">닫기</a></div>
            </div>
            <!-- //숨겨진 레이어 -->
        </div>
        <!-- //healthcare02 -->
        <!-- healthcare03 -->
        <div class="content healthcare03" id="health03">
            <div class="data_wrap">
                <div class="txt_wrap">
                    <h3 class="wow fadeInUp" data-wow-duration="1.4s" data-wow-delay="0.1s">의료영상분야(dose tracker/pacs)</h3>
                    <span class="txt_info wow fadeInUp" data-wow-duration="1.4s" data-wow-delay="0.2s">티플러스는 의료영상분야에 필수적인 PACS솔루션 외에도<br />방사선량 관리 솔루션에 대한 기술을 보유하고 있으며,<br />향후 의료영상 진단에 머신러닝을 도입하여 인공지능 진단기술을 실현합니다.</span>
                </div>
                <div class="thumb_list">
                    <ul>
                        <li class="wow fadeInUp" data-wow-duration="1.4s" data-wow-delay="0.1s">
                            <div class="dose_content2">
                                <div class="thumb"><img src="../images/content/healthcare03_obj02.jpg" alt="썸네일" /></div>
                                <dl>
                                    <dt>dose tracker <span>&nbsp;</span></dt>
                                    <dd><span>Dose Tracker(Total Patient Radiation Dose Monitoring Solution)</span>란 의료기관에서 사용하는 CT, X-ray 등 진단 방사선 영상기기를 지속적으로 관리 및 모니터링 하는 솔루션으로 각 검사의 권장선량 가이드라인을 설정하여 의료방사선량을 체계적으로 관리합니다.</dd>
                                </dl>
                                <div class="layer_btn_more"><a href="javascript:void(0)">more</a></div>
                            </div>
                        </li>
                        <li class="wow fadeInUp" data-wow-duration="1.4s" data-wow-delay="0.2s">
                            <div class="pacs_content2">
                                <div class="thumb"><img src="../images/content/healthcare03_obj01.jpg" alt="썸네일" /></div>
                                <dl>
                                    <dt>tplus pacs<span>(view vine)</span></dt>
                                    <dd><span>PACS(Picture archiving and communication system)</span>란 의료영상자료를 디지털화하여 실시간 영상 자료를 조회할 수 있는 시스템으로 영상처리, 네트워크,, 정보저장관리 등 신속한 병원업무를 지원합니다.</dd>
                                </dl>
                                <div class="layer_btn_more"><a href="javascript:void(0)">more</a></div>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>
            <!-- 숨겨진 레이어 -->
            <div class="more_data more2">
                <!-- dose tracker -->
                <div class="more_wrap dose">
                    <h3 class="wow fadeInUp" data-wow-duration="1s" data-wow-delay="0.1s">dose tracker</h3>
                    <span class="info wow fadeInUp" data-wow-duration="1.4s" data-wow-delay="0.2s">의료방사선 선량관리로 피폭에 대한 불안감을 줄여주는<br />미래지향적 예방의학 솔루션입니다.</span>
                    <div class="line_list">
                        <ul>
                            <li class="wow fadeInUp" data-wow-duration="1.4s" data-wow-delay="0.3s">의료방사선<br />선량관리</li>
                            <li class="wow fadeInUp" data-wow-duration="1.4s" data-wow-delay="0.4s">장비의 종합적인<br />성능관리</li>
                            <li class="wow fadeInUp" data-wow-duration="1.4s" data-wow-delay="0.5s">선량<br />저감화</li>
                            <li class="wow fadeInUp" data-wow-duration="1.4s" data-wow-delay="0.6s">프로토콜<br />개선</li>
                        </ul>
                    </div>
                    <div class="thumb wow fadeInUp" data-wow-duration="1.4s" data-wow-delay="0.1s"><img src="../images/content/DOSE_obj01.jpg" alt="썸네일" /></div>
                    <div class="thumb_list">
                        <ul>
                            <li class="wow fadeInUp" data-wow-duration="1.4s" data-wow-delay="0.2s">
                                <div>
                                    <dl>
                                        <dt>모든 진단방사선장비의 선량 종합 관리</dt>
                                        <dd>병원정보시스템(HIS)과 연동</dd>
                                        <dd>환자 누적선량</dd>
                                        <dd>장비/검사자/처방의 별 비교</dd>
                                        <dd>DRL 설정</dd>
                                    </dl>
                                    <dl>
                                        <dt>최다 연동 방식 및 연동 기술 보유</dt>
                                        <dd>DICOM header, SR, MPPS, OCR, DB</dd>
                                    </dl>
                                    <dl>
                                        <dt>이상 선량 모니터링</dt>
                                        <dd>장비/검사 프로토콜 문제</dd>
                                        <dd>검사자의 실수 여부</dd>
                                        <dd>환자 특성 및 협조 여부 등</dd>
                                    </dl>
                                    <dl>
                                        <dt>다양한 기능 및 분석 툴 제공</dt>
                                        <dd>분리/병합/match 기능</dd>
                                        <dd>auto-split 기능</dd>
                                        <dd>일간/주간/월간 선량 summary 화면</dd>
                                        <dd>주식형 차트 등</dd>
                                    </dl>
                                </div>
                            </li>
                            <li class="wow fadeInUp" data-wow-duration="1.4s" data-wow-delay="0.3s">
                                <div>
                                    <dl>
                                        <dt>고 선량 환자 특별 관리</dt>
                                        <dd>연령/검사 별 DRL 산출</dd>
                                        <dd>피폭 정도에 따라 세부환자 분류</dd>
                                        <dd>피폭으로 인한 comment 입력</dd>
                                    </dl>
                                    <dl>
                                        <dt>선량 정보 제공 방식</dt>
                                        <dd>OCS 연동 web simple viewer</dd>
                                        <dd>Dose Report 일괄출력 가능</dd>
                                    </dl>
                                    <dl>
                                        <dt>사용자 중심</dt>
                                        <dd>개인/병원/엔지니어 설정 (“user preference”)</dd>
                                        <dd>지속적 제품 개발 및 업그레이드</dd>
                                        <dd>다국어 지원</dd>
                                    </dl>
                                </div>
                            </li>
                        </ul>
                    </div>
                </div>
                <!-- //dose tracker -->
                <!-- tplus pacs -->
                <div class="more_wrap pacs">
                    <h3 class="wow fadeInUp" data-wow-duration="1s" data-wow-delay="0.1s">tplus pacs</h3>
                    <span class="title_info wow fadeInUp" data-wow-duration="1.4s" data-wow-delay="0.2s">(view vine)</span>
                    <span class="info wow fadeInUp" data-wow-duration="1.4s" data-wow-delay="0.3s">시공간에 제약 없는 실시간 영상 조회시스템으로<br />신속한 병원업무를 지원합니다.</span>
                    <div class="line_list">
                        <ul>
                            <li class="wow fadeInUp" data-wow-duration="1.4s" data-wow-delay="0.1s">신속한<br />진단</li>
                            <li class="wow fadeInUp" data-wow-duration="1.4s" data-wow-delay="0.2s">체계적인<br />영상관리</li>
                            <li class="wow fadeInUp" data-wow-duration="1.4s" data-wow-delay="0.3s">사용성<br />강화</li>
                        </ul>
                    </div>
                    <div class="thumb wow fadeInUp" data-wow-duration="1.4s" data-wow-delay="0.1s"><img src="../images/content/PACS_obj01.jpg" alt="썸네일" /></div>
                </div>
                <!-- //tplus pacs -->
                <div class="btn_close"><a href="javascript:void(0)">닫기</a></div>
            </div>
            <!-- //숨겨진 레이어 -->
        </div>
        <!-- //healthcare03 -->
        <!-- healthcare04 -->
        <div class="content healthcare04" id="health04">
            <div class="data_wrap">
                <div class="txt_wrap">
                    <h3 class="wow fadeInUp" data-wow-duration="1.4s" data-wow-delay="0.1s">pipe line</h3>
                    <span class="txt_info wow fadeInUp" data-wow-duration="1.4s" data-wow-delay="0.2s">티플러스는 다양한 의료정보시스템을 하나로 잇는 통합데이터 센터(파이프라인)를 구축하고 있습니다.<br />국제 표준기술과 인프라, 시스템 연동 경험을 바탕으로 분야별 핵심인력들과 함께<br />국내 헬스케어 시장의 이해력을 바탕으로 한 개인 맞춤 정밀의료를 실현하겠습니다.</span>
                </div>
                <div class="illust wow fadeInUp" data-wow-duration="1.4s" data-wow-delay="0.3s"><img src="../images/content/pipe_obj01.jpg" alt="썸네일" /></div>
            </div>
            <div class="pipe_wrap wow fadeInUp" data-wow-duration="1.4s" data-wow-delay="0.4s">
                <div class="pipe_data">
                    <div class="desk">
                        <span class="cir01"><img src="../images/content/pipe_circle01.gif" alt="화살표"></span>
                        <span class="cir02"><img src="../images/content/pipe_circle01.gif" alt="화살표"></span>
                        <span class="cir03"><img src="../images/content/pipe_circle01.gif" alt="화살표"></span>
                        <span class="cir04"><img src="../images/content/pipe_circle01.gif" alt="화살표"></span>
                        <span class="cir05"><img src="../images/content/pipe_circle01.gif" alt="화살표"></span>
                        <span class="cir06"><img src="../images/content/pipe_circle01.gif" alt="화살표"></span>
                        <span class="cir07"><img src="../images/content/pipe_circle01.gif" alt="화살표"></span>
                        <span class="cir08"><img src="../images/content/pipe_circle01.gif" alt="화살표"></span>
                        <span class="cir09"><img src="../images/content/pipe_circle02.gif" alt="화살표"></span>
                        <span class="cir010"><img src="../images/content/pipe_circle03.gif" alt="화살표"></span>
                        <span class="cir011"><img src="../images/content/pipe_circle03.gif" alt="화살표"></span>
                        <span class="cir012"><img src="../images/content/pipe_circle04.gif" alt="화살표"></span>
                        <span class="cir013"><img src="../images/content/pipe_circle04.gif" alt="화살표"></span>
                        <span class="cir014"><img src="../images/content/pipe_circle05.gif" alt="화살표"></span>
                        <span class="cir015"><img src="../images/content/pipe_circle05.gif" alt="화살표"></span>
                        <img src="../images/content/pip_data_obj.png" alt="파이프 이미지">
                    </div>
                    <div class="mobile"><img src="../images/content/pipe_data_m_obj.png" alt="썸네일"></div>
                </div>
            </div>
        </div>
        <!-- //healthcare04 -->
        <!-- healthcare05 -->
        <div class="content healthcare05" id="health05">
            <div class="data_wrap">
                <div class="major_txt">
                    <h3 class="wow fadeInUp" data-wow-duration="1.4s" data-wow-delay="0.1s">major reference</h3>
                    <strong class="wow fadeInUp" data-wow-duration="1.4s" data-wow-delay="0.2s">티플러스는 2010년 부터<br /><span>국내 500여 개 주요 의료기관과 함께</span><br />최고의 기술과 특별한 가치를<br />나누고 있습니다.</strong>
                </div>
                <div class="hospital_list wow fadeInUp" data-wow-duration="1.4s" data-wow-delay="0.1s">
                    <ul>
                        <!-- 1 ~ 12 -->
                        <li><span><img src="../images/content/majo_01.gif" alt="병원로고" /></span></li>
                        <li><span><img src="../images/content/majo_02.gif" alt="병원로고" /></span></li>
                        <li><span><img src="../images/content/majo_03.gif" alt="병원로고" /></span></li>
                        <li><span><img src="../images/content/majo_04.gif" alt="병원로고" /></span></li>
                        <li><span><img src="../images/content/majo_05.gif" alt="병원로고" /></span></li>
                        <li><span><img src="../images/content/majo_06.gif" alt="병원로고" /></span></li>
                        <li><span><img src="../images/content/majo_07.gif" alt="병원로고" /></span></li>
                        <li><span><img src="../images/content/majo_08.gif" alt="병원로고" /></span></li>
                        <li><span><img src="../images/content/majo_09.gif" alt="병원로고" /></span></li>
                        <li><span><img src="../images/content/majo_010.gif" alt="병원로고" /></span></li>
                        <li><span><img src="../images/content/majo_011.gif" alt="병원로고" /></span></li>
                        <li><span><img src="../images/content/majo_012.gif" alt="병원로고" /></span></li>
                        <!-- 13 ~ 24 -->
                        <li><span><img src="../images/content/majo_013.gif" alt="병원로고" /></span></li>
                        <li><span><img src="../images/content/majo_014.gif" alt="병원로고" /></span></li>
                        <li><span><img src="../images/content/majo_015.gif" alt="병원로고" /></span></li>
                        <li><span><img src="../images/content/majo_016.gif" alt="병원로고" /></span></li>
                        <li><span><img src="../images/content/majo_017.gif" alt="병원로고" /></span></li>
                        <li><span><img src="../images/content/majo_018.gif" alt="병원로고" /></span></li>
                        <li><span><img src="../images/content/majo_019.gif" alt="병원로고" /></span></li>
                        <li><span><img src="../images/content/majo_020.gif" alt="병원로고" /></span></li>
                        <li><span><img src="../images/content/majo_021.gif" alt="병원로고" /></span></li>
                        <li><span><img src="../images/content/majo_022.gif" alt="병원로고" /></span></li>
                        <li><span><img src="../images/content/majo_023.gif" alt="병원로고" /></span></li>
                        <li><span><img src="../images/content/majo_024.gif" alt="병원로고" /></span></li>
                        <!-- 25 ~ 36 -->
                        <li><span><img src="../images/content/majo_025.gif" alt="병원로고" /></span></li>
                        <li><span><img src="../images/content/majo_026.gif" alt="병원로고" /></span></li>
                        <li><span><img src="../images/content/majo_027.gif" alt="병원로고" /></span></li>
                        <li><span><img src="../images/content/majo_028.gif" alt="병원로고" /></span></li>
                        <li><span><img src="../images/content/majo_029.gif" alt="병원로고" /></span></li>
                        <li><span><img src="../images/content/majo_030.gif" alt="병원로고" /></span></li>
                        <li><span><img src="../images/content/majo_031.gif" alt="병원로고" /></span></li>
                        <li><span><img src="../images/content/majo_032.gif" alt="병원로고" /></span></li>
                        <li><span><img src="../images/content/majo_033.gif" alt="병원로고" /></span></li>
                        <li><span><img src="../images/content/majo_034.gif" alt="병원로고" /></span></li>
                        <li><span><img src="../images/content/majo_035.gif" alt="병원로고" /></span></li>
                        <li><span><img src="../images/content/majo_036.gif" alt="병원로고" /></span></li>
                        <!-- 37 ~ 48 -->
                        <li><span><img src="../images/content/majo_037.gif" alt="병원로고" /></span></li>
                        <li><span><img src="../images/content/majo_038.gif" alt="병원로고" /></span></li>
                        <li><span><img src="../images/content/majo_039.gif" alt="병원로고" /></span></li>
                        <li><span><img src="../images/content/majo_040.gif" alt="병원로고" /></span></li>
                        <li><span><img src="../images/content/majo_041.gif" alt="병원로고" /></span></li>
                        <li><span><img src="../images/content/majo_042.gif" alt="병원로고" /></span></li>
                        <li><span><img src="../images/content/majo_043.gif" alt="병원로고" /></span></li>
                        <li><span><img src="../images/content/majo_044.gif" alt="병원로고" /></span></li>
                        <li><span><img src="../images/content/majo_045.gif" alt="병원로고" /></span></li>
                        <li><span><img src="../images/content/majo_046.gif" alt="병원로고" /></span></li>
                        <li><span><img src="../images/content/majo_048.gif" alt="병원로고" /></span></li>
                        <li><span><img src="../images/content/majo_049.gif" alt="병원로고" /></span></li>
                        <!-- 49 ~ 60 -->
                        <li><span><img src="../images/content/majo_050.gif" alt="병원로고" /></span></li>
                        <li><span><img src="../images/content/majo_051.gif" alt="병원로고" /></span></li>
                        <li><span><img src="../images/content/majo_052.gif" alt="병원로고" /></span></li>
                        <li><span><img src="../images/content/majo_053.gif" alt="병원로고" /></span></li>
                        <li><span><img src="../images/content/majo_054.gif" alt="병원로고" /></span></li>
                        <li><span><img src="../images/content/majo_055.gif" alt="병원로고" /></span></li>
                        <li><span><img src="../images/content/majo_056.gif" alt="병원로고" /></span></li>
                        <li><span><img src="../images/content/majo_057.gif" alt="병원로고" /></span></li>
                        <li><span><img src="../images/content/majo_058.gif" alt="병원로고" /></span></li>
                        <li><span><img src="../images/content/majo_059.gif" alt="병원로고" /></span></li>
                        <li><span><img src="../images/content/majo_060.gif" alt="병원로고" /></span></li>
                        <li><span><img src="../images/content/majo_061.gif" alt="병원로고" /></span></li>
                    </ul>
                </div>
            </div>
        </div>
        <!-- //healthcare05 -->
    </section>
</section>
<!-- //container -->

<!-- 페이지 네비게이션 -->
<div id="pageNav">
    <ol>
        <li class="on"><a href="">1</a></li>
        <li><a href="">2</a></li>
        <li><a href="">3</a></li>
        <li><a href="">4</a></li>
        <li><a href="">5</a></li>
    </ol>
</div>
<!--//페이지 네비게이션 -->

<%@include file="footer.jsp" %>

</section>
<!-- //wrap [종료] -->
</body>
</html>