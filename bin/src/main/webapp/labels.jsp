<%@ page
	import="com.google.appengine.api.blobstore.BlobstoreServiceFactory"%>
<%@ page import="com.google.appengine.api.blobstore.BlobstoreService"%>


<%@ page import="com.google.cloud.vision.v1.EntityAnnotation"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="java.util.List"%>

<%
	BlobstoreService blobstoreService = BlobstoreServiceFactory.getBlobstoreService();
%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html>
<head>
<title>Labels</title>
</head>
<body>
<body style="background-color:#cce6ff;">
</body>
	<table>
		<tr>
			<td align="center"><b style="color: blue;"> Software as a Service: Google Cloud Vision API

 
		</b></td>
		</tr>
		<tr>
			<td><br></td>
		</tr>

	</table>

	<table>
		<tr>
			<center>Image Uploaded </center>
			
			<center><img src="<%=request.getAttribute("imageUrl")%>"></center>
		</tr>
		<tr>
			<td><br></td>
		</tr>
		<tr>
			<td><br></td>
		</tr>
		<%
			List<EntityAnnotation> imageLabels = (List<EntityAnnotation>) request.getAttribute("imageLabels");
		%>
		<tr>
			<td> List of detected labels </td>
			<td></td>
			<td>
				<table border="2">
					<tr>
						<td>Label</td>
						<td>Score</td>

					</tr>

					<c:forEach items="${imageLabels}" var="label">
						<tr>
							<td>${label.getDescription()}</td>
							<td>${label.getScore()}</td>
						</tr>
					</c:forEach>

				</table>

			</td>
		</tr>
		<tr>
			<td><a href="/">Reset</</a></td>
		</tr>
	</table>

</body>
</html>