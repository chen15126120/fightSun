<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> 
<%@ taglib prefix="page" uri="/WEB-INF/pager.tld"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
 <base href="<%=basePath%>">
  <title>我的自测-心凌彩虹</title>
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
  <meta http-equiv="Content-Language" content="zh-CN" />
  <meta name="Author" content="网页作者" /> 
  <meta name="Copyright" content="网站版权" /> 
  <meta name="keywords" content="网站关键字" />
  <meta name="description" content="网站描述" />
  <link rel="Shortcut Icon" href="网站.ico图标路径" />
  <link type="text/css" rel="stylesheet" href="./page/css/reset.css" />
  <link type="text/css" rel="stylesheet" href="./page/css/font-awesome.css" />
  <link href="http://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet">
  <link rel="stylesheet" href="./page/css/jquery-ui-1.9.2.custom.css" />  
  <link type="text/css" rel="stylesheet" href="./page/css/public.css" />
  <link type="text/css" rel="stylesheet" href="./page/css/doctorcenter.css" />
  <script type="text/javascript" src="./page/js/jquery.js"></script>
   <script type="text/javascript" src="./page/jquery.js"></script>
   <script type="text/javascript" src="./page/jqueryEditUseBlur.js"></script>
  <script type="text/javascript" src=".page/js/public.js"></script> 
  <script src="./page/js/jquery-ui-1.9.2.custom.min.js"></script>
  <script type="text/javascript" src="./page/js/Pagination/jquery.twbsPagination.min.js"></script>
  <style>
  #ui-datepicker-div .ui-state-default {
    line-height: 35px;
  }
  </style>
</head>
<body>
  <!-- 网站最顶部 -->
  <div id="top">
    <div class="top">
      <span><i class="icon-phone"></i> 咨询热线 ：400-1234-123</span>
      <div class="fl-right">
        <span style="margin:0px;color: #fc9a00;">欢迎你！</span>
        <a href="" style="margin:0px;color: #fc9a00;">李时珍</a>
		<a href="user-pwd.html">修改密码</a>
        <a href="signOut.html">退出</a>
        <a href="register.html"><i class="icon-user-md"></i> 在线咨询</a>
        <a href="javascript:void(0)" class="weiboShowDiv"><i class="fa fa-weibo"></i> 微博
          <p id="weiboShowDiv" style="display: none;"><img src="http://static.51talk.com/images/new_web/weixin.png"></p>
        </a>
        <a href="javascript:void(0)" class="showDialog"><i class="fa fa-weixin"></i> 微信
          <p id="weixinShowDiv" style="display: none;"><img src="http://static.51talk.com/images/new_web/weixin.png"></p>
        </a>
      </div>
    </div>    
  </div><!-- 网站最顶部 -->
  
  <!-- 导航 -->
  <div id="head">
    <div class="head">
      <a class="logo fl-left" href="index.html"><img src="./img/logo3.png" alt="" /></a>
      <div id="nav" class="fl-right">
        <ul class="nav-father">
          <li><a href="index.html" class="nav-l">首页</a></li>
          <li>
            <a href="appointment.html" class="nav-l selected">专家预约 <i class="icon-caret-down"></i></a>
            <ul class="children">
              <li><a href="">心理科</a></li>
              <li><a href="">精神科</a></li>
            </ul>
          </li> 
          <li>
            <a href="test.html" class="nav-l">咨询/自测 <i class="icon-caret-down"></i></a>
            <ul class="children">
              <li><a href="">咨询</a></li>
              <li><a href="">自测</a></li>
            </ul>
          </li>
          <li><a href="zhishi.html" class="nav-l">科普知识</a></li>
          <li><a href="class.html" class="nav-l">心灵课堂</a></li>
        </ul>
      </div>
    </div>
  </div><!-- 导航 -->

  <!-- 幻灯片 -->
  <div id="banner">
    <div style="height:200px;background-image: url('./img/200.jpg');"></div>
  </div><!-- 幻灯片 -->

  <!-- 页面主体 -->
  <div id="content" style="margin-top:80px;">
    <div id="bread">
      <i class="start"></i>
      <a href=""><span>个人中心</span><i class="icon-angle-right"></i></a>      
      <span>我的自测</span>      
    </div><!-- 面包屑导航 -->
    <div class="content">
      <!-- 左侧列表 -->
      <div id="left" class="fl-left">
        <ul class="nav">

          <li class="active"><a href="user-test.html">添加类型</a></li>

        </ul>
      </div><!-- 左侧列表 -->

      <div id="order" class="fl-right">
        <div class="date" style="height:30px">
          <h1>添加类型</h1>
        </div>
        <div >
          <form action="countData" class="form-basic" method="post">
            <div class="form-group" style="margin:10px 0;width:220px;float:left;">
              <label class="normal profile-label" for="date">添加类型</label>
              <input type="text" class="form-control form-profile small" id="cateValue" name="dateTime" placeholder="请选择日期" style="height: 35px; "/>
            </div>
          
             <button class="btn" type="button" style="margin:22px 0;"  onclick="clickState();">添加</button>
                </form>
       
            
					<div style="width:150px; " id="reloadDiv">
						<table cellspacing="0" width="100px" align="center">
							<tr>
							    <th style="width: 100px; " align="center">名称</th>
							</tr>
						<c:forEach items="${list}" var="l">
							<tr>
							 <td align="center" id="${l. getGoods_category_id() }">${l.getGoods_category_name()}</td>
							</tr>
							</c:forEach>
							<tr>
								<form action="sendGoodsPage" method="post" id="testForm">
									<div id="page"></div>
								</form>
							</tr>
						</table>

					</div>
		
            <div id="shiftdiv">
			</div>
      </div>
     
      </div>
                      
      
      <div class="clear"></div> 
    </div>
  </div><!-- 页面主体 -->
  
  <!-- 页面底部 -->
  <div id="foot">
    <!-- 页面快捷链接 -->
    <div id="foot-link">
      <div class="foot-link">
        <ul>
          <li>
            <h1>关于</h1>
            <p><a href=""><i class="icon-minus"></i> 关于医生</a></p>
            <p><a href=""><i class="icon-minus"></i> 关于我们</a></p>
            <p><a href=""><i class="icon-minus"></i> 合作伙伴</a></p>
          </li>
          <li>
            <h1>服务</h1>
            <p><a href=""><i class="icon-minus"></i> 用户协议</a></p>
            <p><a href=""><i class="icon-minus"></i> 支付方式</a></p>
          </li>
          <li>
            <h1>关注</h1>
            <p><a href=""><img class="img" src="./img/weibo.png" alt="" /> 微博：@心灵医生</a></p>
            <p><a href=""><img class="img" src="./img/weixin.png" alt="" /> 微信：心灵医生</a></p>
          </li>
        </ul>
      </div>
    </div><!-- 页面快捷链接 -->    
    <p class="foot-copyright">
      <a href="">京ICP备12345678号</a>
    </p>
  </div><!-- 页面底部 -->

  <!-- 页面底部 -->
  <div id="fast">
    <ul>
      <li class="user"><a href=""><i class="icon-user-md fast"></i>咨询</a></li>
      <li class="envelope"><a href=""><i class="icon-envelope-alt fast"></i> 意见</a></li>
      <li class="up" id="gotop"><a  href="javascrpt:void(0)"><i class="icon-arrow-up fast"></i></a></li>
    </ul>
  </div>
  <script>
  

    $.datepicker.regional['zh-CN'] = {
        closeText: '关闭',
        prevText: '&#x3c;上月',
        nextText: '下月&#x3e;',
        currentText: '今天',
        monthNames: ['一月','二月','三月','四月','五月','六月','七月','八月','九月','十月','十一月','十二月'],
        monthNamesShort: ['一','二','三','四','五','六','七','八','九','十','十一','十二'],
        dayNames: ['星期日','星期一','星期二','星期三','星期四','星期五','星期六'],
        dayNamesShort: ['周日','周一','周二','周三','周四','周五','周六'],
        dayNamesMin: ['日','一','二','三','四','五','六'],
        weekHeader: '周',
        dateFormat: 'yy-mm-dd',
        firstDay: 1,
        isRTL: false, showMonthAfterYear: true,
        yearSuffix: '年'
      };
      $.datepicker.setDefaults($.datepicker.regional['zh-CN']);
      $('#date').datepicker({
        changeMonth: true,
        changeYear: true,
        dateFormat: 'yy-mm-dd',

      });
      $('#begin').datepicker({
        changeMonth: true,
        changeYear: true,
        dateFormat: 'yy-mm-dd',

      });
      $('#end').datepicker({
        changeMonth: true,
        changeYear: true,
        dateFormat: 'yy-mm-dd',

      });
      $('#').twbsPagination({
      
      });
      
function clickState()
 {
       var dateString = document.getElementById("cateValue").value;
       
       alert(dateString);
       if(cateValue=="" || cateValue==null)
       {
          alert("请选择日期");
          return false;
       }
       /*else if(cateString=="" || cateString==null)
       {
          alert("请选择检索类型");
          return false;
       }*/
       else
       {
            	$.ajax({
              		    url: "addfunction",
              		    type: "POST",
              		    data:{
              		    	"cateString":dateString	    	
              		      },
              		   success:function(){
        					window.location.reload();
        					 
        				},
        				error:function()
        				{
        				    window.location.reload(); 
        				   
        				}
                  	 });
             /*var ExportForm = document.createElement("FORM");  
             document.body.appendChild(ExportForm);  
             ExportForm.method = "POST";  
             var newElement = document.createElement("input");  
             newElement.setAttribute("name", "dateTime");  
             newElement.setAttribute("type", "hidden");  
             var newElement2 = document.createElement("input");  
             newElement2.setAttribute("name", "cateTime");  
             newElement2.setAttribute("type", "hidden");  
             ExportForm.appendChild(newElement);  
             ExportForm.appendChild(newElement2);  
             newElement.value = dateString;  
             newElement2.value = cateString; 
             ExportForm.action ="countData";  
             ExportForm.submit(); */
       }
  /*
       alert(cateString);
       if(dateString=="" || cateString==null)
       {
          alert("请选择日期");
          return false;
       }
       else if(cateString=="" || cateString==null)
       {
          alert("请选择检索类型");
          return false;
       }
       else
       {
       alert("nihao,hello");
                
                 }*/
  }
  </script>
</body>
</html>
