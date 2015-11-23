<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="ccn.medical.model.GoodsCategory" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'addGoodsPage.jsp' starting page</title>
       
   
    <script language="javascript" type="text/javascript" src="<c:url value="My97DatePicker/WdatePicker.js"></c:url>"></script>
	<script language="javascript" type="text/javascript" src="<c:url value="My97DatePicker/calendar.js"></c:url>"></script>
	<script language="javascript" type="text/javascript" src="<c:url value="My97DatePicker/config.js"></c:url>"></script>
	<script language="javascript" type="text/javascript" src="<c:url value="My97DatePicker/lang/zh-cn.js"></c:url>"></script>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" type="text/css" href="My97DatePicker/skin/whyGreen/datepicker.css">
	
  

  </head>
  
  <body>
  <font><a href="addGoodsList">查看添加商品</a></font>
  </br>
  </br>
      
    <form action="addgoods" method="post" enctype="multipart/form-data">
       <lable>商品名称:</lable><input name="goodsName" type="text"></br>
       <lable>cd:</lable><input name="goodsMedium" type="radio" value="CD"></br>
       <lable>书籍:</lable><input name="goodsMedium" type="radio" value="书籍"></br>
       <lable>选择商品种类：</lable><select name="goodsCategory" id="goodsCategory">
       <%
           Map<String,Object> model=(Map<String,Object>)request.getAttribute("model");
           List<GoodsCategory> goodCategoryResponselist=(List<GoodsCategory>)model.get("goodCategoryResponselist");
           for(int i=0;i<goodCategoryResponselist.size();i++)
           {
               GoodsCategory  goodscate=goodCategoryResponselist.get(i);
                        
       %>
       
          <option value=<%=goodscate.getGoods_category_id()%>><%=goodscate.getGoods_category_name()%></option>
       
       <% }%>
       </select></br>
       <lable>商品价格：</lable><input name="goodsPrice" type="text"></br>
       <lable>作者姓名：</lable><input name="specialistName" type="text"></br>
       <lable>作者简介：</lable><input name="specialistIntroduction" type="text"></br>
       <lable>商品介绍：</lable><input name="goodsIntroduction" type="text"></br>
       <lable>商品内容：</lable><input name="goodsContent" type="text"></br>
       <lable>出版时间：</lable><input name="goodsPublishingTime" id="d421" class="Wdate" type="text" onclick="WdatePicker({skin:'whyGreen',maxDate:'%y-%M-%d'})"/>
       
       </br>
          
            选择文件位置一:<input type="file" name="filedata">
            描述：<input type="text" name="goodsDescriptionOne"></br> 
            选择文件位置二:<input type="file" name="filedata">
            描述：<input type="text" name="goodsDescriptionTow"></br>
            选择文件位置三:<input type="file" name="filedata">
             描述：<input type="text" name="goodsDescriptionThree"></br>
       <input type="submit" value="提交">
       
</form>
    
   
  </body>
</html>
