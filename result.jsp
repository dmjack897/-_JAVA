<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    	int intRamdomVal = (Integer)request.getAttribute("Random");
    	String comment;
    	String result;
    	if(intRamdomVal==0)
    	{
    		comment = "うらやましい限りだ...";
    		result = "大吉";
    	}
    	else if(intRamdomVal==1)
    	{
    		comment ="中吉でもいいでしょう";
    		result = "中吉";
    	}
    	else if(intRamdomVal==2)
    	{
    		comment ="よかったね。。。";
    		result = "小吉";
    	}
    	else
    	{
    		comment ="来年が早く来たら。。。";
    		result = "凶";
    	}
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>おみくじ</h1>
	<h2><%= intRamdomVal %></h2>
	<h2><%= result %></h2>
	<h3><%= comment %></h3>
	<form action="OmikujiServelet" method="post">
		<input type = "submit" value="もう一回"/>
	</form>
	
</body>
</html>