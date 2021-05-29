<%@page import="mypack.DbManager"%>
<%
String emailaddress=request.getParameter("emailaddress");
DbManager db=new DbManager();
String query="delete from career where emailaddress='"+emailaddress+"'";
if(db.nonQuery(query))
{
    out.print("<script>alert('career is deleted');window.location.href='../career.jsp';</script>");
}
else
{
    out.print("<script>alert('career is not deleted');window.location.href='../career.jsp';</script>");
}
%>