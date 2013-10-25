<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<title>My JSP 'index.jsp' starting page</title>

	</head>
<script type="text/javascript">
    var xmlHttp = null;
	function GetXmlHttpObject() {
		try {
			// Firefox, Opera 8.0+, Safari
			xmlHttp = new XMLHttpRequest();
		} catch (e) {
			// Internet Explorer
			try {
				xmlHttp = new ActiveXObject("Msxml2.XMLHTTP");
			} catch (e) {
				xmlHttp = new ActiveXObject("Microsoft.XMLHTTP");
			}
		}
		return xmlHttp;
	}
	
	function click1() {
	    xmlHttp = GetXmlHttpObject();//获取XMLHttpRequest对象
		xmlHttp.onreadystatechange=callback;  //当状态改变时调用回调函数
		alert(xmlHttp);
		var url = "hello.jsp";
		xmlHttp.open("GET", url, false);
		xmlHttp.send(null);
	}
	//回调函数
	function callback() {
		if(xmlHttp.readyState == 4) {
			if(xmlHttp.status == 200) {
				
			}
		} 
	}
  
  </script>
	<body>
		<iframe src="hello.jsp" name="iframe_a" width="100%" height="100%" frameborder="0"></iframe>
		<input type="button" value="按钮" onclick="click1()" />
		<h1>我们的爱 哈在不在</h1>
	</body>
</html>
