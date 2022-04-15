<%@ page import="com.google.appengine.api.blobstore.BlobstoreServiceFactory" %>
<%@ page import="com.google.appengine.api.blobstore.BlobstoreService" %>

<%
    BlobstoreService blobstoreService = BlobstoreServiceFactory.getBlobstoreService();
%>


<html>
    <head>
        <title>Software as a Service: Google Cloud Vision API</title>
        <style>
input[type=button], input[type=submit], input[type=reset]{
  background-color: #555555;
  border: none;
  color: white;
  padding: 15px 32px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 20px;
  margin: 4px 2px;
  cursor: pointer;
  border-radius: 50%;
}
input[type=button], input[type=submit], input[type=reset]{
  background-color: white;
  color: black;
  border: 2px solid #555555;
}
input[type=button], input[type=submit], input[type=reset]{
  background-color: white;
  color: black;
  border: 2px solid #555555;
}
</style>
    </head>
    <body>
    <body style="background-color:#e6f2ff;">
</body>
    	<h1 style="background-color:white;"><center>Label Detection</center></h1>
        <form action="<%= blobstoreService.createUploadUrl("/upload") %>" method="post" enctype="multipart/form-data">
            <center> <input type="file" name="myFile"><br> </center>
            <center>  <input type="submit" value="Upload"> </center> 
            </br>
        </form>
    </body> 
</html>