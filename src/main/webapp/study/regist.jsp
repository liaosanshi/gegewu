<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>

<head>
<title>登录页面</title> 
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="css/login2.css" rel="stylesheet" type="text/css" />
</head>
<body>
<div class="login" style="margin-top:50px;">
    
    <div class="header">
        <div class="switch" id="switch"><a class="switch_btn" id="switch_qlogin" href="javascript:void(0);" tabindex="7">快速登录</a>
			<a class="switch_btn_focus" id="switch_login" href="javascript:void(0);" tabindex="8" >快速注册</a>
			<div class="switch_bottom" id="switch_bottom" style="position: absolute; width: 64px; right: 0px;"></div>
        </div>
    </div>    

  <!--注册-->
    <div class="qlogin" id="qlogin">
    <div class="web_login" >
	      <input type="hidden" name="to" value="reg"/> 
		      		       <input type="hidden" name="did" value="0"/> 
        <ul class="reg_form" id="reg-ul">
        		<div id="userCue" class="cue">
        		快速注册请注意格式	
        		</div> 
                <li>
                    <label for="user"  class="input-tips2">用户名：</label>
                    <div class="inputOuter2">
                        <input type="text" id="username"  name="username"  maxlength="16" class="inputstyle2"/>
                    	<span id="username_error" style="color: red"></span>
                    </div>
                    
                </li>
                
                <li>
                <label for="passwd" class="input-tips2">密码：</label>
                    <div class="inputOuter2">
                        <input type="password" id="password"  name="password"  maxlength="16" class="inputstyle2"/>
                        <span id="password_error" style="color: red"></span>
                    </div>
                    
                </li>
                <li>
                <label for="passwd2" class="input-tips2">确认密码：</label>
                    <div class="inputOuter2">
                        <input type="password" id="password2" name="password2" maxlength="16" class="inputstyle2" />
                        <span id="password2_error" style="color: red"></span>
                    </div>
                    
                </li>
                
               <!--  <li>
                 <label for="qq" class="input-tips2">QQ：</label>
                    <div class="inputOuter2">
                       
                        <input type="text" id="qq" name="qq" maxlength="10" class="inputstyle2"/>
                    </div>
                   
                </li> -->
                
                <li>
                    <div class="inputArea">
                        <input type="button" id="reg"  style="margin-top:10px;margin-left:85px;width:150px;" class="button_blue" value="马上注册" onclick="register()" /> 
                    </div>
                    
                </li><div class="cl"></div>
            </ul> 
    </div>
   
    
    </div>
    <!--注册end-->
</div>
<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/ovls_service.js"></script>
<script type="text/javascript">
function register(){
	//清除提示信息
	$("#username_error").html("");
	$("#password_error").html("");
	$("#password2_error").html("");
	//获取请求参数
	var username = $("#username").val();
	var password = $("#password").val();
	var password2 = $("#password2").val();
	//检查参数格式
	var ok = true;//表示通过校验
	if(username==""){
		$("#username_error").html("用户名为空");
		ok = false;
	}
	if(password==""){
		$("#password_error").html("密码为空");
		ok = false;
	}
	if(password2==""){
		$("#password2_error").html("确认密码为空");
		ok = false;
	}else if(password != password2){
		$("#password2_error").html("与密码不一致");
		ok = false;
	}
	//通过检查发送Ajax调用http://localhost:8001/user/regist服务
	if(ok){
		$.ajax({
			url:USER_SERVICE+"/user/regist",
			type:"post",
			data:{"username":username,"password":password},
			dataType:"json",
			success:function(result){
				if(result.code==0){//成功
					alert("注册成功");
					window.parent.location.reload();//刷新当前父页面
				}else if(result.code==1){//用户已存在
					$("#username_error").html(result.msg);
				}else{
					alert("注册失败");
				}
			}
		});
	}
};
</script>
</body>
</html>