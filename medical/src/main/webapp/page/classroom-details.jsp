<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="ccn.medical.model.GoodsEvaluation"%>
<%@page import="ccn.medical.model.GoodsImageInfo"%>
<%@page import="ccn.medical.model.GoodsInfo"%>
<%@page import="java.text.SimpleDateFormat"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html  PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
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
  <script type="text/javascript" src="./page/js/jquery.cityselect.js"></script>
  <script type="text/javascript" src="./page/js/city.min.js"></script>
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
	<%
	   String cateString = request.getAttribute("goodCategory").toString();
	 %>
	<% 
	 Map<String, Object> model = (Map<String, Object>) request
					.getAttribute("model");
			List<GoodsImageInfo> viewgoodsImage = (List<GoodsImageInfo>) model
					.get("goodsimageSearchContent");
			List<GoodsInfo> viewgoodsContent = (List<GoodsInfo>) model
					.get("responsegoodsContent");
			//System.out.println(viewgoodsContent.size());
			if(viewgoodsContent.size()>0)
			{
			     GoodsInfo goodsContent = viewgoodsContent.get(0);
			     System.out.println(goodsContent.getGoodsId());
			     int i = 0;

			      for (; i < viewgoodsImage.size(); i++) {
				     GoodsImageInfo goodsimage = viewgoodsImage.get(i);
				     if (goodsimage.getImagesPosition() == 1)
					       break;
			      }
			      String imagePath = viewgoodsImage.get(i).getImagesData();
			      //imagePath = "./image/jpeg" + imagePath;
			      //商品的出版时间
			      SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy/MM/dd HH/mm/ss");//可以方便地修改日期格式
		          // String goodsPublishTime= dateFormat.format( goodsContent.getGoodsPublishingTime());
		          String goodsOnTime=dateFormat.format(goodsContent.getGoodsOnTime());
		%>
	 
	 
    <div id="bread">
      <i class="start"></i>
      <a href=""><span>心灵课堂</span><i class="icon-angle-right"></i></a>      
      <a href=""><span><%=cateString%></span><i class="icon-angle-right"></i></a>   
      <span><%=goodsContent.getGoodsName()%></span>
    </div><!-- 面包屑导航 -->
    <div class="content">      
      <div id="content-body" style="background: none;">
         <div id="details-title">
		    <div class="details-img">
			  <img src=<%=imagePath %>>
			</div>
			<div class="details-title">
			   <p class="details-name"><%=goodsContent.getGoodsName()%></p>
			   <p class="details-price">￥<spann id="price"><%=goodsContent.getGoodsPrice()%></span></p>
			   <table>
			   <form action="addGoodToBox?goodsId=<%=goodsContent.getGoodsId()%>"
		       method="post" name="argform" id="argform" onsubmit="return checkNoNull()">
			    <tr>
				  <td width="50">数量:</td>
				  <td class="details-amount"><a class="reduction">-</a><input type="text" name="ordersNumbers" id="num" value="1" onblur="storage()" onfocus="oldvalue();" style="height: 25px; "><a class="add">+</a></td>
				</tr>

				<tr>
				  <td style="height:40px" width="80">地址:</td>
				  <td><div id="city_5">
					<select class="prov" name="addressProv"></select> 
					<select class="city" disabled="disabled" name="addressCity"></select>
					<select class="dist" disabled="disabled" name="addressDist"></select>
					<input type="text" name="ordersAddress" id="ordersAddress" value="北京市海淀区"  style="height: 26px; width: 200px">
				</div></td>
				</tr>
					    <tr>
				  <td width="80">收货人:</td>
				  <td class="details-amount"><input type="text" name="consignee" id="consignee"   style="height: 26px; width: 200px"></td>
				</tr>
					    <tr>
				  <td width="80">电话:</td>
				  <td class="details-amount"><input type="text" name="phonenum" id="phonenum"   style="height: 26px; width: 200px" onkeyup="javascript:RepNumber(this)"></td>
				</tr>
				 <td></td>
				  <td ><a href ="javascript:;" onclick="add(<%=goodsContent.getGoodsId()%>);"><div class="buy">立即购买</div></a></td>
				 
				</tr>
				<tr> <td></td><td><div id="returnAjax"></div></td></tr>
				</form>
			   </table>
			</div>
         </div>
		  <div class="clear"></div>
		  
	
		  
		  
         <div id="details-info">
		    <ul class="details-tab">
			   <li class="tab-on" type="goods"><a href="javascript:">商品详情</a></li>
			   <li type="expert"><a href="javascript:" >专家简介</a></li>
			</ul>
			<div class="details-info" id="goods">

			  商品简介:</br>
			 <%=goodsContent.getGoodsIntroduction()%></br>
			   商品详情:</br>
			 <%=goodsContent.getGoodsContent()%></br>
			 商品图片展示:</br>
			<%
		       String otherImagePath = "";
		       String otherImageStr="";
		       for (int n = 1; n < viewgoodsImage.size(); n++) {
			       for (int j = 0; j < viewgoodsImage.size(); j++) {
				       GoodsImageInfo goodsimage = viewgoodsImage.get(i);
				       if (goodsimage.getImagesPosition() == n) {
					       otherImagePath = goodsimage.getImagesData();
					       otherImageStr=goodsimage.getImagesDescription();
					       break;
				        }
			        }
	    // otherImagePath = "./image/jpeg/" + otherImagePath;
	          %>
		  
		   
			 <%=otherImageStr%>></br>
			<img src=<%=otherImagePath%> style="width: 635px; height: 554px"></br>
			   <%
		       }
	          %>
			
			</div>
			<div class="details-info" id="expert" style="display:none">
			  专家姓名:<%=goodsContent.getSpecialistName()%></br>
			  专家简介:</br>
			  <%=goodsContent.getSpecialistIntroduction() %></br>
			</div>
		 </div>
		 
		 
		 
		 
		 
       <div class="clear"></div>
      </div>
    </div>
    <%} %>
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
	  $(function(){
	     $(".details-tab li").click(function(){
		    var type = $(this).attr('type')
		    $(".details-info").hide();
		    $("#"+type).show();
			$(".details-tab li").removeClass('tab-on');
			$(this).addClass('tab-on')
		 })
	 
	   $(".reduction").click(function(){//减数量
		 var oldNum = $("#num").val();
		 if(oldNum>1){
		    $("#num").val(oldNum-1);
		 }
	 })
	 $(".add").click(function(){//加数量
	     var oldNum = $("#num").val();
		    $("#num").val(oldNum*1+1*1);
		 
	 })
	})
//获取老数量
var old_value;
function oldvalue(){
    old_value=$("#num").val();
	$("#num").val("");
}
function storage(){//商品数量光标离开时判断是否是数字
	
	var num=$("#num").val();
	var re = /^[0-9]\d*$/;
	if (!re.test(num))
	{
		$("#num").val(old_value);
	}
}
  </script>
 <script type="text/javascript">
function add(goodId)
{
    //document.getElementById(key).value = value;
    alert("你好");
    if(checkNoNull())
    {
        alert("你好6");
        var address = document.getElementById("ordersAddress").value;
        var consignee = document.getElementById("consignee").value;
        var phonenum = document.getElementById("phonenum").value;
        var ordersNumbers=document.getElementById("num").value;
       alert("你好2");
        $.ajax({
              		    url: "addGoodToBox",
              		    type: "POST",
              		    data:{
              		    	"goodsId":goodId,
              		    	"ordersAddress":address,	
              		    	"consignee":consignee,
              		    	"phonenum":phonenum,
              	            "ordersNumbers":ordersNumbers   	
              		      },
              		   success:function(){
              		        alert("你好3");
        					//window.location.reload();
        					//$("div .returnAjax").html("成功添加<a>购物车</a>");
        					$("#returnAjax").html("成功添加<a href=\"/medical/checkGoodOrder\">购物车</a>");
        					
        				},
        				error:function()
        				{
        				  //  window.location.reload(); 
        				 alert("你好4");
        				}
                  	 });
       // document.getElementById("argform").submit();
    }
    //document.argform.submit();
    //document.getElementById("argsubmit").click();
}
function checkNoNull(){
alert("你好5");
var address = document.getElementById("ordersAddress").value;
var consignee = document.getElementById("consignee").value;
var phonenum = document.getElementById("phonenum").value;

if(address == ""){
    alert("详细地址不可为空");
    return false;
}
else if(phonenum=="")
{
   alert("电话不可为空");
    return false;
}
else if(consignee=="")
{   
    alert("收货人不可为空");
    return false;
}

//if(email == ""){
  //  alert("邮箱不可为空");
    //return false;
//}
return true;
} 

function RepNumber(obj) {
var reg = /^[\d]+$/g;
if (!reg.test(obj.value)) {
var txt = obj.value;
txt.replace(/[^0-9]+/, function (char, index, val) {//匹配第一次非数字字符
obj.value = val.replace(/\D/g, "");//将非数字字符替换成""
var rtextRange = null;
if (obj.setSelectionRange) {
obj.setSelectionRange(index, index);
} else {//支持ie
rtextRange = obj.createTextRange();
rtextRange.moveStart('character', index);
rtextRange.collapse(true);
rtextRange.select();
}
})
}
} 
</script>
</body>
</html>