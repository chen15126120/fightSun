<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="ccn.medical.model.GoodsInfo"%>
<%@ page import="ccn.medical.model.GoodsCategory"%>
<%@page import="ccn.medical.model.GoodsImageInfo"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="page" uri="/WEB-INF/pager.tld"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> 
<%
String path = request.getContextPath();
System.out.println(path);
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
String url = request.getScheme()+"://"+ request.getServerName()+request.getRequestURI()+"?"+request.getQueryString();
System.out.println(url);
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">
  <title>专家预约-心凌彩虹</title>
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
  <meta http-equiv="Content-Language" content="zh-CN" />
  <meta name="Author" content="网页作者" /> 
  <meta name="Copyright" content="网站版权" />
  <meta name="keywords" content="网站关键字" />
  <meta name="description" content="网站描述" />
  <link rel="Shortcut Icon" href="网站.ico图标路径" />
  <link type="text/css" rel="stylesheet" href="./page/css/reset.css" />
  <link type="text/css" rel="stylesheet" href="./page/css/font-awesome.css" />
  <link type="text/css" rel="stylesheet" href="./page/css/index.css" />
  <link href="http://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet">
  <link type="text/css" rel="stylesheet" href="./page/css/public.css" />
  <link type="text/css" rel="stylesheet" href="./page/css/classroom.css" />
  <script type="text/javascript" src="./page/js/jquery.js"></script>
  <script type="text/javascript" src="./page/js/Pagination/jquery.twbsPagination.min.js"></script>
  <script type="text/javascript" src="./page/js/public.js"></script>
</head>
<body>
  <!-- 网站最顶部 -->
  <div id="top">
    <div class="top">
      <span><i class="icon-phone"></i> 咨询热线 ：400-1234-123</span>
      <div class="fl-right">
        <a href="login.html">登录</a>
        <a href="register.html">注册</a>
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
            <a href="appointment.html" class="nav-l">专家预约 <i class="icon-caret-down"></i></a>
            <ul class="children">
              <li><a href="">心理科</a></li>
              <li><a href="">精神科</a></li>
            </ul>
          </li> 
          <li>
            <a href="test.html" >咨询/自测 <i class="icon-caret-down"></i></a>
            <ul class="children">
              <li><a href="">咨询</a></li>
              <li><a href="">自测</a></li>
            </ul>
          </li>
          <li><a href="zhishi.html" class="nav-l">科普知识</a></li>
          <li><a href="class.html" class="nav-l selected">心灵课堂</a></li>
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
    <!-- 面包屑导航 -->
	
    <div id="bread">
      <i class="start"></i>
      <a href=""><span>心灵课堂</span><i class="icon-angle-right"></i></a>      
      <span><c:out value="${cateStr}" /></span>      
    </div><!-- 面包屑导航 -->
    <div class="content">      
      <div id="content-body" style="background: none;">
	  <div class="search">
	  <form action="categorySearch?categoryId=<c:out value="${categoryId}"/>" method="post" id="searchForm">
	   <input type="text" placeholder="输入标题进行搜索" name="searchStr" style="height: 28px; ">
	  <span  class="tp-common-btn    " type="button" onclick="search();">搜索</span>
	   </form>
	  </div>
	  
	
	  
      <div id="trophy" class="space">
      <div class="trophy-title">
        <div class="class-title" style="width:100%"><c:out value="${cateStr}" />
		</div>
       
      </div>
      <div class="class-list">
      
      
      
    
		
	
		
		<c:forEach items="${list}" var="l">
		
        <li>
		   <a href="goods_buy?goodsId=${l.goodsId}&categoryId=${l.goodsCategory}"><div>
		     <img class="ulImg3" src="${l.goodsImage.imagesData}" }><p class="price">￥${l.goodsPrice}</p>
			 <p class="span_h">${l.goodsName}</P>
		   </div>
		   </a>
		</li>
	</c:forEach>
		
		
       
      </div>
    </div>
    <form id="testForm" action="categorySearch?categoryId=<c:out value="${categoryId}"/> method="post">
    
    <div id="page">
	<page:createPager pageSize="${pageSize}"
	    totalPage="${totalPage}" totalCount="${totalCount}"
	    curPage="${pageNum}" formId="testForm" />
	 </div>
    </form>
     <div id="page"></div>  
        <div class="clear"></div>
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
  
  function search()
  {
      document.getElementById("searchForm").submit();
  }
  /*
   var number = $('#pres tr').length;
	var pageSize = 8;//显示每页显示数量
	var pageNum  = Math.ceil(/pageSize)//总页数
	$(function(){
	   isPage(pageSize,1);
	})
    $('#pag').twbsPagination({
          totalPages: pageNum,
          visiblePages: 3,
          first: '首页',
          prev: '上一页',
          next: '下一页',
          last: '尾页',
          onPageClick: function (event, page) {
            isPage(pageSize,page);
          }
      });
	 function isPage(pageSize,page){
	    $('#pres tr').hide();
		if(page==1){
		  var nowPage  = 1
		}else{
	      var nowPage = pageSize*(page-1);
		}
		var i=0;
	    for(i;i<pageSize;i++){
		   $('#pres tr').eq(nowPage-1).show();
           nowPage++;
		}
	 }*/
  

  </script>
</body>
</html>
