<%@page import="java.sql.ResultSet"%>
<%@page import="mypack.DbManager"%>
<%
String subject=request.getParameter("subject");
String complaintext=request.getParameter("complaintext");
String emailaddress=session.getAttribute("userid").toString();
DbManager db=new DbManager();
ResultSet rs=db.selectQuery("select * from vendorreg where emailaddress='"+emailaddress+"'");
rs.next();
String companyname=rs.getString("companyname");
String concernperson=rs.getString("concernperson");
String contactno=rs.getString("contactno");
String complaindate=db.getDate();
String query="insert into complain(companyname,concernperson,contactno,emailaddress,subject,complaintext,complaindate) values('"+companyname+"','"+concernperson+"','"+contactno+"','"+emailaddress+"','"+subject+"','"+complaintext+"','"+complaindate+"')";
if(db.nonQuery(query))
{
    out.print("<script>alert('Your complain is logged');window.location.href='../userhome.jsp';</script>");
}
else
{
    out.print("<script>alert('Your complain is not logged');window.location.href='../userhome.jsp';</script>");
}
%>