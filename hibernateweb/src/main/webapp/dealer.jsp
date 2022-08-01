<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"
    import = "com.wipro.velocity.DealerDao"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Registration Success</title>
</head>
<body>

<jsp:useBean id="d" class = "com.wipro.velocity.Dealer"></jsp:useBean>
<jsp:setProperty property="*" name="d"/>

<%
int i = DealerDao.dealer(d);
if(i>0)
{
	out.print("Successfully Registered");
}
%>
</body>
</html>