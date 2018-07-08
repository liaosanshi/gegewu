<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>java_搜索_兄弟网</title>
<meta http-equiv="X-UA-Compatible" content="IE=edge, chrome=1">
<meta name="renderer" content="webkit">
<meta http-equiv="Access-Control-Allow-Origin" content="*" />
<meta http-equiv="Cache-Control" content="no-transform " />
<meta http-equiv="Content-Security-Policy"
	content="script-src 'self' 'unsafe-inline' 'unsafe-eval' *.imooc.com *.mukewang.com *.baidu.com *.sina.com.cn *.bootcss.com">
<link rel="stylesheet" href="css/moco.min.css" type="text/css" />
<link rel="stylesheet" href="css/lv-common-less.css" type="text/css" />
<link rel="stylesheet" type="text/css" href="css/pagination.css" media="screen"  >


<style type="text/css">
.search-form-ipt {
	background-color: white;
}

.search-related {
	position: relative;
	top: 17px;
}
</style>
</head>

<body>

<!-- 页头开始 -->
<%@ include file="head_black.jsp" %>
	<div class="bindHintBox js-bindHintBox hide">
		<div class="pr">
			为了账号安全，请及时绑定邮箱和手机 <a href="javascript:;" class="ml20 color-red"
				target="_blank">立即绑定</a>
			<button class="closeBindHint js-closeBindHint" type="button"></button>
			<div class="arrow"></div>
		</div>
	</div>

	<div id="main">

		<div class='search-main'>
			<div class='search-header'>
				<div class='search-form clearfix'>
					<i class='icon-search'></i> 
					<input id='search2_id' type='text' class='search-form-ipt js-search-ipt' placeholder='请输入想搜索的内容' /> 
					<span class='search-form-btn js-search-btn' onclick="tiaozhuan()">搜索</span>
					<ul class='search-area-prge js-search-area-prge'></ul>
				</div>

				<ul class='hot'>
					<li>热门搜索：</li>
					<li><a href='${pageContext.request.contextPath}/study/search?keyword=Oracle' target="_blank">Oracle</a>
					</li>
					<li><a href='${pageContext.request.contextPath}/study/search?keyword=mysql' target="_blank">mysql</a></li>
					<li><a href='${pageContext.request.contextPath}/study/search?keyword=java' target="_blank">java</a></li>
				</ul>
			</div>

			<div id="searchcourse" class='search-body'>

				<div id="coursecounts" class='search-related'>共找到 101个相关内容  &nbsp;&nbsp;  
				<!-- <b id="lv_currentPage">5</b>
				/<b id="lv_pages"  class="pager-cur">10</b>  --></div>

				<h2  class='search-title' onclick="a">课程</h2>
				
				<!-- 遍历展示   开始 -->

				<!-- 遍历展示   结束 -->

			</div>

			<!-- ***** -->
		</div>
		
		<div class="M-box2"></div>

	</div>
	
<!-- 页脚开始 -->
<%@ include file="footer_black.jsp" %>
</body>
	
	<script type="text/javascript">
	$(function(){
		var keyword = getParamString("keyword");
		loadsearch(keyword);
	});
	
	function tiaozhuan(){
		var val = $("#search2_id").val();
		window.location.href="search?keyword="+val;
	};
	
	function loadsearch(keyword){
		var count1 = 0;
		$.ajax({
			url:COURSE_SERVICE+"/study/search",
			type:"get",
			dataType:"json",
			data:{"keyword":keyword},
			success:function(result){
				if(result.code==0){
					var courses = result.data;
					count1 = courses.length;
					for(var i = 0;i < courses.length;i ++){
						var str = "";
						var course_id = courses[i].id;
						var course_name = courses[i].name;
						var course_intro = courses[i].intro;
						var course_image = courses[i].image;
						var course_learnCount = courses[i].learnCount;
						var course_score = courses[i].score;
						str += '<div class="course-item clearfix">';
						str += '<div class="course-item-left">';
						str += '	<img src="img/course/'+course_image+'" width="210" height="120" />';
						str += '</div>';
						str += '<div class="course-item-right">';
						str += '	<div class="course-item-title">';
						str += '		<span class="type">[课程]</span> <a href="course?cid='+course_id+'" target="_blank">'+course_name+'</a>';
						str += '	</div>';
						str += '	<div class="tag">';
						str += '		<span>评分:'+course_score+'</span> <strong class="strongMargin"></strong> <strong>'+course_learnCount+'人学习</strong>';
						str += '	</div>';
						str += '	<p class="content"><span>课程简介：</span> '+course_intro+'</p>';
						str += '</div>';
						
						str += '</div>';
						$("#searchcourse").append(str);
					}
					var str = "共找到 "+courses.length+"个相关内容";
					
					$("#coursecounts").html(str);
					
				}
			}
		});
	};
	

	</script>
</html>
