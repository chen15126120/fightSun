<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML>
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>心灵彩虹</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
 	
  	<link type="text/css" rel="stylesheet" href="./static/resource/css/reset.css" />
    <link type="text/css" rel="stylesheet" href="./static/resource/css/font-awesome.css" />
    <link type="text/css" rel="stylesheet" href="./static/resource/css/public.css" />
    <link type="text/css" rel="stylesheet" href="./static/resource/css/index.css" />
    <link rel="stylesheet" type="text/css" href="./static/resource/js/slick/gslick.css" >
    <link href="./static/resource/js/iCheck/skins/flat/red.css?v=1.0.2" rel="stylesheet">
    <link href="http://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet">
    <script type="text/javascript" src="./static/resource/js/jquery.js"></script>
    <script type="text/javascript" src="./static/resource/js/index.js"></script>
    <script src="./static/resource/js/slick/slick.min.js"></script>  
    <script type="text/javascript" src="./static/resource/js/public.js"></script>
    <script type="text/javascript" src="./static/resource/js/iCheck/icheck.js?v=1.0.2"></script>
    <script type="text/javascript" src="./static/resource/js/jquery-validate.min.js"></script> 
    <script type="text/javascript" src="./static/application/index/resource/index.js"></script>
  	
  </head>
  
  <body>
     <!-- 网站最顶部 -->
  <div id="top">
    <div class="top">
      <span><i class="icon-phone"></i> 咨询热线 ：010-59795337</span>
      <div class="fl-right">
        <a href="login.html">登录</a>
        <a href="register.html">注册</a>
        <a href="javascript:void(0);"><i class="icon-user-md"></i> 在线咨询</a>
        <a href="javascript:void(0)" class="weiboShowDiv"><i class="fa fa-weibo"></i> 微博
          <p id="weiboShowDiv" style="display: none;"><img src="./webpage/commons/image/weibo.jpg"></p>
        </a> 
         <a href="javascript:void(0);" class="showDialog"><!-- <i class="fa fa-weixin"></i> 微信 -->
          <p id="weixinShowDiv" style="display: none;"><img src="http://static.51talk.com/images/new_web/weixin.png"></p>
        </a> 
      </div>
    </div>    
  </div><!-- 网站最顶部 -->
  <!-- 导航 -->
  <div id="head">
    <div class="head">
      <a class="logo fl-left" href="index.html"><img src="./static/resource/img/logo3.png" alt="" /></a>
      <div id="nav" class="fl-right">
        <ul class="nav-father">
          <li><a href="index.html" class="nav-l selected">首页</a></li>
          <li>
            <a href="ad.html?departmentsId=1">专家预约 <i class="icon-caret-down"></i></a>
            <ul class="children">
              <li><a href="ad.html?departmentsId=1">儿童心理科</a></li>
              <li><a href="ad.html?departmentsId=3">成人心理科</a></li>
            </ul>
          </li> 
          <li>
            <a href="test.html" class="nav-l">心理自测 <!-- <i class="icon-caret-down"></i> --></a>
          </li>
          <li><a href="zhishi.html" class="nav-l">科普知识</a></li>
          <li><a href="class.html" class="nav-l">心灵课堂</a></li>
        </ul>
      </div>
    </div>
  </div><!-- 导航 -->

  <!-- 幻灯片 -->
  <div id="banner">
    <div style="background-image: url('./static/resource/img/34.jpg');"></div>
    <div style="background-image: url('./static/resource/img/123.jpg');"></div>
    <div style="background-image: url('./static/resource/img/1.jpg');"></div>
    <div style="background-image: url('./static/resource/img/2.jpg');"></div>
  </div><!-- 幻灯片 -->
  
  <!-- 页面主体 -->
  <div id="content" style="padding-top: 5px;">

    <!-- 最新消息 -->
    <div id="news">
      <div class="news-title">
        <h1 class="fl-left"><a href="more-news.html"><i class="icon-volume-up"></i>  最新消息</a></h1>        
        <p class="fl-right"><a href="more-news.html">查看更多 <i class="icon-play-circle"></i></a></p>
      </div>
      <div class="news-list">
        <ul>
          <!-- <li><a href=""><span>【活动公告】李时珍专家讲座，敬请期待！</span><span class="time">2015-04-15</span></a></li>
          <li><a href=""><span>【活动公告】李时珍专家讲座，敬请期待！李时珍专家讲座，敬请期待！</span><span class="time">2015-04-15</span></a></li>
          <li><a href=""><span>【活动公告】李时珍专家讲座，敬请期待！李时珍专家讲座，敬请期待！</span><span class="time">2015-04-15</span></a></li> -->
       	  <c:forEach items="${listMessageInfos}" var="p">
       	  <li>${p.messageTitle}</li>
       	  </c:forEach>
        </ul>
      </div>
    </div><!-- 最新消息 -->
    <!-- 推荐专家 -->
    <div id="recommend">
      <div class="recommend-title">
        <h1 class="fl-left"><i class="icon-thumbs-up"></i> 推介专家</h1>
        <p class="fl-right"><a href="appointment.html">查看更多 <i class="icon-play-circle"></i></a></p>
      </div>
      <div class="recommend-list">
          <c:forEach items="${listdDoctorInfos}" var="d">
       	  	<div class="doctor">
              <table>
                <tr class="doctor-img">
                  <td class="img">
                    <img src="${d.doctorPicaure }" alt="" width="162" height="160" />                    
                  </td>
                  <td class="text">
                    <p class="keshi">${d.departmentsName }</p>
                    <i class="icon-comment-alt"></i>
                    <p class="name">${d.doctorName }</p>
                    <p class="title">${d.positionalTitles }</p>
                  </td>
                </tr>
                <tr class="doctor-intro">
                  <td colspan="2">
                  
                    <p><%-- ${d.doctorIntroduction } --%><%-- ${d.hospitalName } --%>${fn:substring(d.doctorIntroduction, 0, 50)}...</p>
                  </td>
                </tr>
                <tr class="doctor-enter">
                  <td colspan="2">
                    <a href=""></a>
                  </td>
                </tr>
              </table>
            </div>
       	  </c:forEach>
      </div>
    </div><!-- 推荐专家 -->
    <div class="tab_youshi">
      <div class="title m_b30"><b class="f_y f_24" style="_line-height:32px;">选择我们，只需<font size="+3">4</font>个理由</b></div>
      <ul id="tags_ul">
          <li class="selectTag">
              <a onclick="selectTag('tagContent0', this)" href="javascript:void(0)"><font class="f_80">1</font><font class="f_18" style="line-height:50px;">顶级权威</font><font class="f_18" style="line-height:14px;">专家</font></a> 
          </li>
          <li class="">
              <a onclick="selectTag('tagContent1', this)" href="javascript:void(0)"><font class="f_80">2</font><font class="f_14" style="line-height:20px;">VIP</font><font class="f_18" style="line-height:30px;">一对一<br />专属服务</font></a> 
          </li>
          <li class="">
              <a onclick="selectTag('tagContent2', this)" href="javascript:void(0)"><font class="f_80">3</font><font class="f_14" style="line-height:20px;">专家可出现在</font><font class="f_18" style="line-height:24px;">任何互联网<br>可达到的地方</font></a> 
          </li>
          <li class="">
              <a onclick="selectTag('tagContent3', this)" href="javascript:void(0)"><font class="f_80">4</font><font class="f_14" style="line-height:44px;">专业的</font><font class="f_18" style="line-height:20px;">隐私保险柜</font></a> 
          </li>
      </ul>
      <div id="tags_full">
          <div class="tags_box selectTag" id="tagContent0" style="display: block;">
              <p>心灵彩虹是最专业，</p>
              <p>也是最权威的精神卫生、</p>
              <p>心理健康云诊所</p>
               <p><a href="/user/user_register.php" target="_blank" class="btn_a"><font class="f_r">现在就来体验</font> <font class="f_r">&gt;</font></a></p>
          </div>
          <div class="tags_box selectTag" id="tagContent1" style="display: none;">
              <p>省时，</p>
              <p>省钱，</p>
              <p>省陪护，</p>
              <p>一省到底</p>
               <p><a href="/user/user_register.php" target="_blank" class="btn_a"><font class="f_r">现在就来体验</font> <font class="f_r">&gt;</font></a></p>
          </div>
          <div class="tags_box selectTag" id="tagContent2" style="display: none;">
              <p>顶级专家一对一私密远程诊疗由你选，</p>
              <p>时间灵活。</p>
               <p><a href="/user/user_register.php" target="_blank" class="btn_a"><font class="f_r">现在就来体验</font> <font class="f_r">&gt;</font></a></p>
          </div>
          <div class="tags_box selectTag" id="tagContent3" style="display: none;">
              <p>不排队，</p>
              <p>不压抑，</p>
              <p>远程问诊轻松搞定</p>
              <p><a href="/user/user_register.php" target="_blank" class="btn_a"><font class="f_r">现在就来体验</font> <font class="f_r">&gt;</font></a></p>
          </div>
      </div>
    </div>
    <div class="tab_guide">
      <div class="title m_b30"><b class="f_y f_24" style="_line-height:32px;">在线问诊，只需<font size="+3">3</font>步</b></div>
      <div class="clickStepTag pic_guide picGuide1">
          <ul>
              <li i="1"></li>
              <li i="2"></li>
              <li i="3"></li>
          </ul>
          <div class="showStep showStep1" style="display: block;">
              <form name="regFormTwo" method="POST" action="/user/do_login.php" id="regFormTwo" style="padding-top: 30px;">
                  <p class="f_18 f_y" style="padding-top:20px; margin-bottom:25px;">登录会员中心，开始您的问诊之旅</p>
                  <p><input name="user_name" id="user_name" type="text" class="index_input" value="" placeholder="请输入用户名" style="color: rgb(169, 169, 169);"></p>
                  <p><input name="password" type="password" id="password" class="index_input" value="" placeholder="请填写密码" style="color: rgb(169, 169, 169);"><a class="dl_a" href="javascript:void(0)" id="submitReg"><font class="f_l">登录</font> <font class="f_r">&gt;</font></a></p>
                  <p><a href="/user/get_pass.php" class="f_l m_r20">忘记密码</a><a href="/user/user_register.php" target="_blank" class="f_c">新用户点此注册</a></p>
                  <a href="/user/user_register.php" target="_blank" class="btn_a" style="bottom: 40px;"><font class="f_l">现在就来体验</font> <font class="f_r">&gt;</font></a>
              </form>
          </div>
          <div class="showStep showStep2" style="display: none;"><img src="./static/resource/img/ban_2.png" style="margin:40px 30px;"><a href="/user/user_register.php" target="_blank" class="btn_a"><font class="f_l">现在就来体验</font> <font class="f_r">&gt;</font></a></div>
          <div class="showStep showStep3" style="display: none;"><img src="http://static.51talk.com/images/new_web/box_3.png" style="margin:60px 50px;"><a href="/user/user_register.php" target="_blank" class="btn_a"><font class="f_l">现在就来体验</font> <font class="f_r">&gt;</font></a></div>
      </div>
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
            <p><a href=""><img class="img" src="./static/resource/img/weibo.png" alt="" /> 微博：@心灵医生</a></p>
            <p><a href=""><img class="img" src="./static/resource/img/weixin.png" alt="" /> 微信：心灵医生</a></p>
          </li>
        </ul>
      </div>
    </div><!-- 页面快捷链接 -->    
    <p class="foot-copyright">
      <a href="">京ICP备09027565号-1</a>
    </p>
  </div><!-- 页面底部 -->
  </body>
</html>
