<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>兄弟学习网-程序员的梦工厂</title>
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/study/bootstrap/css/bootstrap.css">
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/study/css/muke.css">
		
		<!-- 网页标题栏图标 -->
		<link rel="SHORTCUT ICON" href="${pageContext.request.contextPath}/study/img/favicon.ico"/>
	
		<!-- 名师推荐样式  -->
		<style type="text/css">
			#teacher {
				display:inline-block; 
				width: 216px; 
				height:364px;
				position: relative; 
				left:20px;
				background-color: white; 
				box-shadow: 10px 10px 5px #888888;
			}
			#teacher_top{
				text-align: center; 
				position: relative; 
				top: 30px;
				
			}
			#teacher_intro{
				position: relative; 
				top: 30px;
				font-size: 12px; 
				width: 180px; 
				height: 110px;
				margin: 0 auto; 
				color: RGB(130,130,130); 
				line-height: 1.5em; 
				letter-spacing:1.2px;
				overflow: hidden;
			}
		</style>
	</head>
	
	<body>
		<%@include file="head.jsp"%>		
<!--========================轮播图==============================-->
		<div class="width100 float_l margin_t-405 margin_b40">
			<div class="width_1200 margin_auto">
				<div class="width100 float_l height460 posi_relative">
					<div class="width100 float_l">
						<div class="focusBox">
							<ul class="pic">
								<li>
									<a href="${pageContext.request.contextPath}/study/course_list.jsp"><img src="${pageContext.request.contextPath}/study/img/index1.jpg" /></a>
								</li>
								<li>
									<a href="${pageContext.request.contextPath}/study/course_list.jsp"><img src="${pageContext.request.contextPath}/study/img/index2.jpg" /></a>
								</li>
								<li>
									<a href="${pageContext.request.contextPath}/study/course_list.jsp"><img src="${pageContext.request.contextPath}/study/img/index3.jpg" /></a>
								</li>
								<li>
									<a href="${pageContext.request.contextPath}/study/course_list.jsp"><img src="${pageContext.request.contextPath}/study/img/index4.jpg" /></a>
								</li>
								<li>
									<a href="${pageContext.request.contextPath}/study/course_list.jsp"><img src="${pageContext.request.contextPath}/study/img/index5.jpg" /></a>
								</li>
							</ul>
							<a class="prev" href="javascript:void(0)"></a>
							<a class="next" href="javascript:void(0)"></a>
							<a class="next" href="javascript:void(0)"></a>
							<a class="next" href="javascript:void(0)"></a>
							<a class="next" href="javascript:void(0)"></a>
							<ul class="hd">
								<li></li>
								<li></li>
								<li></li>
								<li></li>
								<li></li>
							</ul>
						</div>
					</div>

					<div id="directions" class="width_220 float_l height460 posi_absolute backg_jqian padding_t5 bianshou">

					</div>
				</div>
			</div>
		</div>


		<script type="text/javascript">
			jQuery(".focusBox").slide({
				mainCell: ".pic",
				effect: "left",
				autoPlay: true,
				delayTime: 500
			});
		</script>

<!--========================== 实战推荐 =============================-->
		<div class="width100 float_l margin_b40">
			<div class="width_1200 margin_auto">

				<div class="width100 float_l margin_b20">
					<div class="float_l">
						<span class="fon_siz16">课程推荐</span>
					</div>
					<!-- <div class="float_r bianshou">
						<span>更多></span>
					</div> -->
				</div>
				<div class="width100 float_l" id="zymCourse">

				</div>
			</div>
		</div>

<!--========================== 免费好课 =============================-->
		<div class="width100 float_l margin_b40">
			<div class="width_1200 margin_auto">

				<div class="width100 float_l margin_b20">
					<div class="float_l">
						<span class="fon_siz16">免费好课</span>
					</div>
				</div>
					
				<div class="width100 float_l" id="zymCoursePrice">
				

				</div>
			</div>
		</div>

<!--========================== Html-前端工程师 =============================-->
		<div class="width100 float_l padding_tb45 backg_qiangray">
			<div class="width_1200 margin_auto">
				<div class=" width_220 height364 float_l img_backg3 margin_r20">
					<div class="width100 float_l padding_lr20 color_white fon_siz32 b_weight700 margin_t10">
						<span>Html<br>前端工程师
					</span>
					</div>
					<div class="width100 float_l padding_lr20 color_white fon_siz16 margin_t30 jiantoubianhua bianshou">
						<a href="${pageContext.request.contextPath}/study/download/HTML5.CHM"><span>API 下载<span class="margin_l5 wobianhua">></span></span></a>
					</div>
					<div class="width100 float_l padding_lr20 color_white fon_siz12 bianshou line_hei26 color_shenred wobeijingguos margin_t120">
						<a>超文本标记语言 HyperText Markup Language 简称：HTML，是一种标记语言。</a>
					</div>
				</div>
				<div class="width_712 float_l margin_r20" id="htmlCourse">
					<div class=" width100 float_l height172 kaishimeiyou img_backg12 text-center line_hei172 margin_b20">
						<span class="fon_siz20 color_white b_weight700" style="font-size: 26px;">靡不有初&nbsp;&nbsp;鲜克有终</span>
					</div>
					<!-- 追加html课程 -->
					<div class="width_217 height172 float_l margin_r20 border_shadow jingguoxianshi over_pos bianshou">
							<div class="width100 float_l img_100 z_inx_1">
								<img src="img/uiz7.jpg">
							</div>
							<div class="img_backg2 donghua">
								<span class="margin_t15 float_l ">飞速上手的跨平台App开发</span> <span class="float_l fon_siz12 line_hei16 color_gray margin_t5 posi_relative ">8小时带领大家步步深入学习标签的基础知识，掌握各种样式的基本用法。</span>
							</div>
							<div class="width100 float_l padding_lr20 height48 fon_siz12 line_hei48 z_inx_3 posi_relative backg_white">
								<span class="float_l color_red">￥88.00</span> <span class="float_r color_gray"><span>499</span>人在学</span>
							</div>
					</div>
					<div class="width_217 height172 float_l margin_r20 border_shadow jingguoxianshi over_pos bianshou">
							<div class="width100 float_l img_100 z_inx_1">
								<img src="img/uiz7.jpg">
							</div>
							<div class="img_backg2 donghua">
								<span class="margin_t15 float_l ">飞速上手的跨平台App开发</span> <span class="float_l fon_siz12 line_hei16 color_gray margin_t5 posi_relative ">8小时带领大家步步深入学习标签的基础知识，掌握各种样式的基本用法。</span>
							</div>
							<div class="width100 float_l padding_lr20 height48 fon_siz12 line_hei48 z_inx_3 posi_relative backg_white">
								<span class="float_l color_red">￥88.00</span> <span class="float_r color_gray"><span>499</span>人在学</span>
							</div>
					</div>
					<div class="width_217 height172 float_l margin_r20 border_shadow jingguoxianshi over_pos bianshou">
							<div class="width100 float_l img_100 z_inx_1">
								<img src="img/uiz7.jpg">
							</div>
							<div class="img_backg2 donghua">
								<span class="margin_t15 float_l ">飞速上手的跨平台App开发</span> <span class="float_l fon_siz12 line_hei16 color_gray margin_t5 posi_relative ">8小时带领大家步步深入学习标签的基础知识，掌握各种样式的基本用法。</span>
							</div>
							<div class="width100 float_l padding_lr20 height48 fon_siz12 line_hei48 z_inx_3 posi_relative backg_white">
								<span class="float_l color_red">￥88.00</span> <span class="float_r color_gray"><span>499</span>人在学</span>
							</div>
					</div>
				</div>
				
				<div class="width_220 height364 float_l backg_white border_shadow" id="htmlCourseScore">
					<!-- 追加htmlCourseScore 课程评分列表，由高到低 -->
					<div class="width_220 height172 float_l margin_r20 border_shadow jingguoxianshi over_pos bianshou">
						<div class="width100 float_l img_100 z_inx_1">
							<img src="img/uiz7.jpg">
						</div>
						<div class="img_backg2 donghua">
							<span class="margin_t15 float_l ">飞速上手的跨平台App开发</span> <span class="float_l fon_siz12 line_hei16 color_gray margin_t5 posi_relative ">8小时带领大家步步深入学习标签的基础知识，掌握各种样式的基本用法。</span>
						</div>
						<div class='width100 float_l padding_lr20 height48 fon_siz12 line_hei48 z_inx_3 posi_relative backg_white'>
							<span class='float_l color_red'>课程评分：</span> 
							<span class='float_r color_gray'><span>100</span></span>
						</div>
					</div>
					<div class='width100 float_l padding_lr20 dadiv'>
						<div class='width100 float_l border_t padding_t10'>
							<ul class='tongli_ys chaochuyincang'>
								<li>
									<a href='/pponline/course/1'>
									<span class='diandian'>.</span>Java1
									</a>
								</li>
								<li>
									<a href='/pponline/course/1'>
									<span class='diandian'>.</span>Java1
									</a>
								</li>
								<li>
									<a href='/pponline/course/1'>
									<span class='diandian'>.</span>Java1
									</a>
								</li>
								<li>
									<a href='/pponline/course/1'>
									<span class='diandian'>.</span>Java1
									</a>
								</li>
							</ul>
						</div>
					</div>
				</div>
				
			</div>
		</div>

<!--========================== java-工程师 =============================-->
		<div class="width100 float_l backg_qiangray padding_b45">
			<div class="width_1200 margin_auto">
				<div class=" width_220 height364 float_l img_backg11 margin_r20">
					<div class="width100 float_l padding_lr20 color_white fon_siz32 b_weight700 margin_t10">
						<span>Java<br>开发工程师
					</span>
					</div>
					<div class="width100 float_l padding_lr20 color_white fon_siz16 margin_t30 jiantoubianhua bianshou">
						<a href="${pageContext.request.contextPath}/study/download/JDK_API_1_6_zh_CN.CHM"><span>API 下载<span class="margin_l5 wobianhua">></span></span></a>
					</div>
					<div class="width100 float_l padding_lr20 fon_siz12 bianshou line_hei26 color_blue wobeijingguosa margin_t120">
						<a>Java是由Sun公司于1995年5月推出的Java面向对象程序设计语言和Java平台的总称。</a>
					</div>
				</div>
				<div class="width_712 float_l margin_r20" id="javaCourse">
					<div class=" width100 float_l height172 kaishimeiyou img_backg10 text-center line_hei172 margin_b20">
						<span class="fon_siz20 color_white b_weight700" style="font-size: 26px;">不忘初心&nbsp;&nbsp;方得始终</span>
					</div>
					
					<div class="width_217 height172 float_l margin_r20 border_shadow jingguoxianshi over_pos bianshou">
						<div class="width100 float_l img_100 z_inx_1">
							<img src="img/uiz7.jpg">
						</div>
						<div class="img_backg2 donghua">
							<span class="margin_t15 float_l ">飞速上手的跨平台App开发</span> <span class="float_l fon_siz12 line_hei16 color_gray margin_t5 posi_relative ">8小时带领大家步步深入学习标签的基础知识，掌握各种样式的基本用法。</span>
						</div>
						<div class="width100 float_l padding_lr20 height48 fon_siz12 line_hei48 z_inx_3 posi_relative backg_white">
							<span class="float_l color_red">￥88.00</span> <span class="float_r color_gray"><span>499</span>人在学</span>
						</div>
					</div>
					<div class="width_217 height172 float_l margin_r20 border_shadow jingguoxianshi over_pos bianshou">
						<div class="width100 float_l img_100 z_inx_1">
							<img src="img/uiz7.jpg">
						</div>
						<div class="img_backg2 donghua">
							<span class="margin_t15 float_l ">飞速上手的跨平台App开发</span> <span class="float_l fon_siz12 line_hei16 color_gray margin_t5 posi_relative ">8小时带领大家步步深入学习标签的基础知识，掌握各种样式的基本用法。</span>
						</div>
						<div class="width100 float_l padding_lr20 height48 fon_siz12 line_hei48 z_inx_3 posi_relative backg_white">
							<span class="float_l color_red">￥88.00</span> <span class="float_r color_gray"><span>499</span>人在学</span>
						</div>
					</div>
					<div class="width_217 height172 float_l margin_r20 border_shadow jingguoxianshi over_pos bianshou">
						<div class="width100 float_l img_100 z_inx_1">
							<img src="img/uiz7.jpg">
						</div>
						<div class="img_backg2 donghua">
							<span class="margin_t15 float_l ">飞速上手的跨平台App开发</span> <span class="float_l fon_siz12 line_hei16 color_gray margin_t5 posi_relative ">8小时带领大家步步深入学习标签的基础知识，掌握各种样式的基本用法。</span>
						</div>
						<div class="width100 float_l padding_lr20 height48 fon_siz12 line_hei48 z_inx_3 posi_relative backg_white">
							<span class="float_l color_red">￥88.00</span> <span class="float_r color_gray"><span>499</span>人在学</span>
						</div>
					</div>
				
				</div>

				<div class="width_220 height364 float_l backg_white border_shadow" id="javaCourseScore">
					<!-- 追加javaCourseScore 课程评分列表，由高到低 -->
					<div class="width_220 height172 float_l margin_r20 border_shadow jingguoxianshi over_pos bianshou">
						<div class="width100 float_l img_100 z_inx_1">
							<img src="img/uiz7.jpg">
						</div>
						<div class="img_backg2 donghua">
							<span class="margin_t15 float_l ">飞速上手的跨平台App开发</span> <span class="float_l fon_siz12 line_hei16 color_gray margin_t5 posi_relative ">8小时带领大家步步深入学习标签的基础知识，掌握各种样式的基本用法。</span>
						</div>
						<div class='width100 float_l padding_lr20 height48 fon_siz12 line_hei48 z_inx_3 posi_relative backg_white'>
							<span class='float_l color_red'>课程评分：</span> 
							<span class='float_r color_gray'><span>100</span></span>
						</div>
					</div>
					<div class='width100 float_l padding_lr20 dadiv'>
						<div class='width100 float_l border_t padding_t10'>
							<ul class='tongli_ys chaochuyincang'>
								<li>
									<a href='/pponline/course/1'>
									<span class='diandian'>.</span>Java1
									</a>
								</li>
								<li>
									<a href='/pponline/course/1'>
									<span class='diandian'>.</span>Java1
									</a>
								</li>
								<li>
									<a href='/pponline/course/1'>
									<span class='diandian'>.</span>Java1
									</a>
								</li>
								<li>
									<a href='/pponline/course/1'>
									<span class='diandian'>.</span>Java1
									</a>
								</li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>

<!--========================== Oracle 工程师 =============================-->
		<div class="width100 float_l backg_qiangray">
			<div class="width100 float_l">
				<div class="width_1200 margin_auto">
					<div class="width100 float_l" id="courseOracle">
						<div class=" width_220 height172 float_l img_backg14 margin_r20">
							<div class="width100 float_l padding_lr20 color_white fon_siz32 b_weight700 margin_t10">
								<span>Oracle<br>DBA
							</span>
							</div>
							<div class="width100 float_l padding_lr20 color_white fon_siz16 margin_t30 jiantoubianhua bianshou">
								<a href="${pageContext.request.contextPath}/study/download/ORACLE.chm"><span>API 下载<span class="margin_l5 wobianhua">></span></span></a>
							</div>
						</div>
						 <div class="width_220 height172 float_l margin_r20 border_shadow jingguoxianshi over_pos bianshou">
							<div class="width100 float_l img_100 z_inx_1">
								<img src="img/uiz7.jpg">
							</div>
							<div class="img_backg2 donghua">
								<span class="margin_t15 float_l ">飞速上手的跨平台App开发</span> <span class="float_l fon_siz12 line_hei16 color_gray margin_t5 posi_relative ">8小时带领大家步步深入学习标签的基础知识，掌握各种样式的基本用法。</span>
							</div>
							<div class="width100 float_l padding_lr20 height48 fon_siz12 line_hei48 z_inx_3 posi_relative backg_white">
								<span class="float_l color_red">￥88.00</span> <span class="float_r color_gray"><span>499</span>人在学</span>
							</div>
						</div>
						
						<div class="width_220 height172 float_l margin_r20 border_shadow jingguoxianshi over_pos bianshou">
							<div class="width100 float_l img_100 z_inx_1">
								<img src="img/uiz7.jpg">
							</div>
							<div class="img_backg2 donghua">
								<span class="margin_t15 float_l ">飞速上手的跨平台App开发</span> <span class="float_l fon_siz12 line_hei16 color_gray margin_t5 posi_relative ">8小时带领大家步步深入学习标签的基础知识，掌握各种样式的基本用法。</span>
							</div>
							<div class="width100 float_l padding_lr20 height48 fon_siz12 line_hei48 z_inx_3 posi_relative backg_white">
								<span class="float_l color_red">￥88.00</span> <span class="float_r color_gray"><span>499</span>人在学</span>
							</div>
						</div>
						
						<div class="width_220 height172 float_l margin_r20 border_shadow jingguoxianshi over_pos bianshou">
							<div class="width100 float_l img_100 z_inx_1">
								<img src="img/uiz7.jpg">
							</div>
							<div class="img_backg2 donghua">
								<span class="margin_t15 float_l ">飞速上手的跨平台App开发</span> <span class="float_l fon_siz12 line_hei16 color_gray margin_t5 posi_relative ">8小时带领大家步步深入学习标签的基础知识，掌握各种样式的基本用法。</span>
							</div>
							<div class="width100 float_l padding_lr20 height48 fon_siz12 line_hei48 z_inx_3 posi_relative backg_white">
								<span class="float_l color_red">￥88.00</span> <span class="float_r color_gray"><span>499</span>人在学</span>
							</div>
						</div>
						
						<div class="width_220 height172 float_l margin_r20 border_shadow jingguoxianshi over_pos bianshou">
							<div class="width100 float_l img_100 z_inx_1">
								<img src="img/uiz7.jpg">
							</div>
							<div class="img_backg2 donghua">
								<span class="margin_t15 float_l ">飞速上手的跨平台App开发</span> <span class="float_l fon_siz12 line_hei16 color_gray margin_t5 posi_relative ">8小时带领大家步步深入学习标签的基础知识，掌握各种样式的基本用法。</span>
							</div>
							<div class="width100 float_l padding_lr20 height48 fon_siz12 line_hei48 z_inx_3 posi_relative backg_white">
								<span class="float_l color_red">￥88.00</span> <span class="float_r color_gray"><span>499</span>人在学</span>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>

	<%@include file="footer.jsp"%>
	</body>
	<script type="text/javascript" src="js/ovls_service.js"></script>
	<script type="text/javascript">
		$(function(){
			loadFreeCourse();
			loadDirections();
			loadPayCourse();
		});
		function loadDirections(){
			$.ajax({
				url:COURSE_SERVICE+"/direction/all",
				type:"get",
				dataType:"json",
				success:function(result){
					if(result.code == 0){
						var directions = result.data;
						for(var i=0;i<directions.length;i++){
							var direction_id = directions[i].id;
							var direction_name = directions[i].name;
							var subjects = directions[i].subjects;
							var courses = directions[i].courses;
							var str = "";
							str += '<div class="width100 float_l tab_qiehuan ">';
							str += '<div class="width100 float_l text_c height64 line_hei64 color_white bianhuabeijing backg_jqian padding_lr20">';
							str += '	<div class="width100 float_l text_l height64 line_hei64 color_white border_b_baise fon_siz16">';
							str += '		<span>'+direction_name+'</span> <span class="float_r">></span>';
							str += '	</div>';
							str += '</div>';
							str += '<div class="width_700 float_l lunbofenlei dis_none img_backg15">';
							str += '	<div class="width100 float_l padding40">';
							str += '		<div class="width100 float_l margin_b40">';
							str += '			<span class="width100 color_shenred fon_siz16 float_l margin_b20">分类目录</span>';
							str += '			<ul class="width100 ul_lis float_l">';
							for(var j=0;j<subjects.length;j++){
								var subject_id = subjects[j].id;
								var subject_name = subjects[j].name;
								str+='				<li>';
								str+='					<a href="#">'+subject_name+'</a>';
								str+='				</li>';
								str+='				<li>/</li>';
							}
							
							str += '			</ul>';
							str += '		</div>';
							str += '		<div class="width100 float_l margin_b40">';
							str += '			<span class="width100 color_shenred fon_siz16 float_l margin_b20">推荐</span>';
							str += '			<ul class="width100 ul_lis float_l">';
							for(var k=0;k<courses.length;k++){
								var course_id = courses[k].id;
								var course_name = courses[k].name;
								str+='					<li class="width100 float_l margin_b15">';
								str+='						<a href="course?cid='+course_id+'">课程 | '+course_name+'</a>';
								str+='					</li>';
							}
							str += '			</ul>';
							str += '		</div>';
							str += '	</div>';
							str += '</div>';
							str += '</div>';
							$("#directions").append(str);
						}
						$('.tab_qiehuan').hover(
								function() {
									$(this).children(".bianhuabeijing").css("background-color",
										"#8a8f93").next().css("display", "block")
								},
								function() {
									$(this).children(".bianhuabeijing").css("background-color",
										"#a9aaae").next().css("display", "none")
								}
						);
					}
				}
			});
		};
		
		
		
		
		
		function loadFreeCourse(){
			$.ajax({
				url:COURSE_SERVICE+"/course/free",
				type:"get",
				data:{"endCount":"5"},
				dataType:"json",
				success:function(result){
					if(result.code == 0){
						var courses = result.data;
						for(var i = 0;i < courses.length;i ++){
							var course_id = courses[i].id;
							var course_name = courses[i].name;
							var course_intro = courses[i].intro;
							var course_image = courses[i].image;
							var course_learnCount = courses[i].learnCount;
							var course_score = courses[i].score;
							var str = "";
							str += '<div class="width_220 height172 float_l margin_r20 border_shadow jingguoxianshi over_pos bianshou">';
							str += '<a href="course?cid='+course_id+'">';
							str += '<div class="width100 float_l img_100 z_inx_1">';
							str += '	<img src="img/course/'+course_image+'">';
							str += '</div>';
							str += '<div class="img_backg2 donghua">';
							str += '	<span class="margin_t15 float_l ">'+course_name+'</span> <span class="float_l fon_siz12 line_hei16 color_gray margin_t5 posi_relative ">'+course_intro+'</span>';
							str += '</div>';
							str += '<div class="width100 float_l padding_lr20 height48 fon_siz12 line_hei48 z_inx_3 posi_relative backg_white">';
							str += '	<span class="float_l color_red">评分：'+course_score+'</span> <span class="float_r color_gray"><span>'+course_learnCount+'</span>人在学</span>';
							str += '</div>';
							str += '</a>';
							str += '</div>';
							$("#zymCoursePrice").append(str);
						}
					}
				}
			});
		}
		
		function loadPayCourse(){
			$.ajax({
				url:COURSE_SERVICE+"/course/pay",
				type:"get",
				data:{"endCount":"5"},
				dataType:"json",
				success:function(result){
					if(result.code == 0){
						var courses = result.data;
						for(var i = 0;i < courses.length;i ++){
							var course_id = courses[i].id;
							var course_name = courses[i].name;
							var course_intro = courses[i].intro;
							var course_image = courses[i].image;
							var course_learnCount = courses[i].learnCount;
							var course_score = courses[i].score;
							var course_price = courses[i].price;
							var str = "";
							str += '<div class="width_220 height172 float_l margin_r20 border_shadow jingguoxianshi over_pos bianshou">';
							str += '<a href="course?cid='+course_id+'">';
							str += '<div class="width100 float_l img_100 z_inx_1">';
							str += '	<img src="img/course/'+course_image+'">';
							str += '</div>';
							str += '<div class="img_backg2 donghua">';
							str += '	<span class="margin_t15 float_l ">'+course_name+'</span> <span class="float_l fon_siz12 line_hei16 color_gray margin_t5 posi_relative ">'+course_intro+'</span>';
							str += '</div>';
							str += '<div class="width100 float_l padding_lr20 height48 fon_siz12 line_hei48 z_inx_3 posi_relative backg_white">';
							str += '	<span class="float_l color_red">价格：'+course_price+'</span> <span class="float_r color_gray"><span>'+course_learnCount+'</span>人在学</span>';
							str += '</div>';
							str += '</a>';
							str += '</div>';
							$("#zymCourse").append(str);
						}
					}
				}
			});
		}
	</script>
</html>








