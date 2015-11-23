<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="ccn.medical.model.GoodsInfo"%>
<%@page import="ccn.medical.model.GoodsImageInfo"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'addGoodsList.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>

<table border="1">
	<%
		Map<String, Object> model = (Map<String, Object>) request.getAttribute("model");
		List<GoodsImageInfo> viewgoodsImage = (List<GoodsImageInfo>) model
				.get("goodsimageSearchList");
		List<GoodsInfo> viewgoodslist = (List<GoodsInfo>) model
				.get("responselist");
		int i = -1;
		for (int j = 0; j < viewgoodslist.size(); j++) {
			GoodsInfo viewgoods = viewgoodslist.get(j);
			
			int goodsviewidInt = viewgoods.getGoodsId();
			i = 0;
			for (; i < viewgoodsImage.size(); i++) {
				GoodsImageInfo imageinfo = viewgoodsImage.get(i);
				if (goodsviewidInt == imageinfo.getGoodsId())
					break;
			}
			String Imagepath="";
			if(i<=viewgoodsImage.size())
			{
			   GoodsImageInfo imageinfot = viewgoodsImage.get(i);
			   Imagepath= imageinfot.getImagesData();
			   System.out.println("zhenhao"+Imagepath+"xxxxxx"+basePath);
			}
			//数据库中放的直接是完全路径
			//String Imagepath = imageinfot.getImagesData();
			
			// Imagepath="./image/jpeg/"+Imagepath;
			//SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy/MM/dd/HH/mm/ss");//可以方便地修改日期格式
			//String goodsPublishTime= dateFormat.format( viewgoods.getGoodsPublishingTime());
	%>
	<tr>
		<td><font><%=viewgoods.getGoodsId()%></font></td>
		<td><font><%=viewgoods.getGoodsName()%></font></td>
		<td><a><img src=<%=Imagepath%> style="height: 51px; width: 60px; "></a></td>
		<td><span><%=viewgoods.getSpecialistName()%></span></td>
		<td><font><%=viewgoods.getGoodsPrice()%></font></td>
		<td><font><%=viewgoods.getGoodsPublishingTime()%></font></td>
		<td><a href="deleteGoodsInfo?goodsId=<%=viewgoods.getGoodsId()%>">删除商品</a></td>
		<td><a href="editGoodsSkip?goodsId=<%=viewgoods.getGoodsId()%>">修改商品</a></td>
	</tr>
	<%
		}
	%>

</table>

</body>
</html>
