<%@page import="mypack.DbManager"%>
<%
String emailaddress=request.getParameter("emailaddress");
DbManager db=new DbManager();
String query="delete from vendorreg where emailaddress='"+emailaddress+"'";
if(db.nonQuery(query))
{
    out.print("<script>alert('vendor is deleted');window.location.href='../vendorinfo.jsp';</script>");
}
else
{
    out.print("<script>alert('vendor is not deleted');window.location.href='../vendorinfo.jsp';</script>");
}
%>