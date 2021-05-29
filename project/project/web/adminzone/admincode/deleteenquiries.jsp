<%@page import="mypack.DbManager"%>
<%
String id=request.getParameter("id");
DbManager db=new DbManager();
String query="delete from enquiry where id='"+id+"'";
if(db.nonQuery(query))
{
    out.print("<script>alert('enquiry is deleted');window.location.href='../enquriries.jsp';</script>");
}
else
{
    out.print("<script>alert('enquiry is not deleted');window.location.href='../enquriries.jsp';</script>");
}
%>