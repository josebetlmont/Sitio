<!DOCTYPE HTML>

<%@ page import="java.sql.*" %> 
<%@ page import="java.io.*" %> 

<HTML>
<head>
<title>This is a jsp page</title>
</head>
<body>
<FORM action="index.jsp" method="post">
<TABLE style="background-color: #ECE5B6;" WIDTH="30%" >

<TR>
<TH width="50%">Name</TH>
<TD width="50%"><INPUT TYPE="text" NAME="name"></TD>
</tr>
<TR>
<TH width="50%">City</TH>
<TD width="50%"><INPUT TYPE="text" NAME="city"></TD>
</tr>
<TR>
<TH width="50%">Phone</TH>
<TD width="50%"><INPUT TYPE="text" NAME="phone"></TD>
</tr>

<TR>
<TH></TH>
<TD width="50%"><INPUT TYPE="submit" VALUE="submit"></TD>
</tr>
</TABLE>
<%
String username = request.getParameter("name");
String city = request.getParameter("city");
String phone = request.getParameter("phone");
String connectionURL = "jdbc:mysql://remotemysql.com:3306/6BBVOPZm0z";
Connection connection = null;
PreparedStatement pstatement = null;
int updateQuery = 0;
if(username!=null && city!=null && phone!=null)
{
if(username!="" && city!="" && phone!="")
{
try {
Class.forName("com.mysql.jdbc.Driver");
connection = DriverManager.getConnection(connectionURL,"6BBVOPZm0z","JyeN4hBiEh");
String queryString = "insert into Test (username) values(?)";
pstatement = connection.prepareStatement(queryString);
pstatement.setString(1, username);

updateQuery = pstatement.executeUpdate();
if (updateQuery != 0) {%>
<br>
<TABLE style="background-color: #E3E4FA;" WIDTH="30%" border="1">
<tr><th>Data is inserted successfully in database.</th></tr>
</table>

<%
}
} 
catch (Exception ex){
out.println("Unable to connect to batabase.");
}finally {
// close all the connections.
pstatement.close();
connection.close();
}
}
}
%>
</FORM>
</body> 
</html>