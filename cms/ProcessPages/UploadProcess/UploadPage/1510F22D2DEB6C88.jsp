<% response.setHeader("Expires", "0");%>
<%@ page import="ch.ivyteam.ivy.page.engine.jsp.IvyJSP"%><jsp:useBean id="ivy" class="ch.ivyteam.ivy.page.engine.jsp.IvyJSP" scope="session"/>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
	"http://www.w3.org/TR/html4/loose.dtd"><html>
<head>
	<title></title>
</head>
<body>
	<form method="post" action="<% ivy.cms.co("UploadPage/LinkA.ivp"); %>" enctype="multipart/form-data">
		<input type="file" name="upload-file" />
 		 <input type="submit" value="Submit" />
	</form> 
</body>
</html>