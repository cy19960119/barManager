<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1>Spring Boot文件上传示例</h1>

<form method="POST" action="uploadCarousel" enctype="multipart/form-data">
    <input type="file" name="image" /><br/><br/>
    <input type="submit" value="提交" />
</form>

</body>
</html>