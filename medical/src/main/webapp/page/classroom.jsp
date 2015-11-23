<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="ccn.medical.model.GoodsInfo"%>
<%@ page import="ccn.medical.model.GoodsCategory"%>
<%@page import="ccn.medical.model.GoodsImageInfo"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
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
      <span>首页</span>      
    </div><!-- 面包屑导航 -->
    <div class="content">      
      <div id="content-body" style="background: none;">
	  <div class="search">
	   <form action="goodslist" method="post" id="searchForm">
	   <input type="text" placeholder="输入标题进行搜索" name="searchStr"><span  class="tp-common-btn    " type="button" onclick="searchFunction();">搜索</span>
	 </form>
	  </div>
<%
			String cateIdString = request.getAttribute("categoryId").toString();
			int cateId = Integer.parseInt(cateIdString);
			String color = "blue";
			//在还没有传值到后台cateid的值是-1，否则是正常值
			Map<String, Object> model = (Map<String, Object>) request
					.getAttribute("model");
			List<GoodsCategory> goodCategoryResponselist = (List<GoodsCategory>) model
					.get("goodCategoryResponselist");
		    List<GoodsInfo> viewgoodslist = (List<GoodsInfo>) model
					.get("responselist");
			int context=0;
			int x=0;
			for (int i = 0; i < goodCategoryResponselist.size(); i++) {
				color = "blue";
				GoodsCategory listcategory = goodCategoryResponselist.get(i);
				context=0;
				for(x=0;x<viewgoodslist.size();x++)
				{
				   GoodsInfo gf=viewgoodslist.get(x);
				   if(gf.getGoodsCategory()==listcategory.getGoods_category_id())
				   {
				       context++;
				   }
				}
				if(context>0)
				{
			       String categoryStr=listcategory.getGoods_category_name();
		%>

      <div id="trophy" class="space">
      <div class="trophy-title">
        <div class="class-title" style="width:100%">  <%=categoryStr%>
		<a href="categorySearch?categoryId=<%=listcategory.getGoods_category_id()%>">查看更多<i class="icon-play-circle"></i></a>
		</div>
       
      </div>
      <div class="class-list">
	   <%
			//  Map<String,Object> model=(Map<String, Object>)request.getAttribute("model");
			List<GoodsImageInfo> viewgoodsImage = (List<GoodsImageInfo>) model
					.get("goodsimageSearchList");


	    %>
		
		<%
		   

				
			    for(int j=0;j<viewgoodslist.size()&&j<4;j++)
			    {
			        GoodsInfo viewgoods = viewgoodslist.get(j);
			        if(viewgoods.getGoodsCategory()==listcategory.getGoods_category_id())
			        {
			             int goodsviewidInt=viewgoods.getGoodsId();
			             int k=0;
				         for (; k < viewgoodsImage.size(); k++) {
					         GoodsImageInfo imageinfo = viewgoodsImage.get(k);
					         if (goodsviewidInt == imageinfo.getGoodsId())
						          break;
				            }
				         GoodsImageInfo imageinfo = viewgoodsImage.get(k);
				//数据库中放的直接是完全路径
				         String Imagepath = imageinfo.getImagesData();
				// Imagepath="./image/jpeg/"+Imagepath;
				//SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy/MM/dd/HH/mm/ss");//可以方便地修改日期格式
				//String goodsPublishTime= dateFormat.format( viewgoods.getGoodsPublishingTime());
		    %>
        <li>
		    <a href="goods_buy?goodsId=<%=viewgoods.getGoodsId() %>&categoryId=<%=viewgoods.getGoodsCategory()%>">
			 <div>
		     <img class="ulImg3" src=<%=Imagepath%>><p class="price">￥<%=viewgoods.getGoodsPrice()%></p>
			 <p class="span_h"><%=viewgoods.getGoodsName()%></P>
		     </div>
		   </a>
		</li>
		<%}} %>
        
      </div>
    </div>
	  <%
			}}
		%>

       
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
    function searchFunction()
    {

      document.getElementById("searchForm").submit();
    }
    $('#page').twbsPagination({
          totalPages: 35,
          visiblePages: 6,
          first: '首页',
          prev: '上一页',
          next: '下一页',
          last: '尾页',
          onPageClick: function (event, page) {
            alert(page);
          }
      });
    $('#page').twbsPagination({
          totalPages: 35,
          visiblePages: 6,
          first: '首页',
          prev: '上一页',
          next: '下一页',
          last: '尾页',
          onPageClick: function (event, page) {
            alert(page);
          }
      });
  </script>
</body>
</html>