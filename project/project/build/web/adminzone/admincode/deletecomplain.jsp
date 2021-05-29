<%@page import="mypack.DbManager"%>
<%
String id=request.getParameter("id");
DbManager db=new DbManager();
String query="delete from complain where id='"+id+"'";
if(db.nonQuery(query))
{
    out.print("<script>alert('complain is deleted');window.location.href='../complains.jsp';</script>");
}
else
{
    out.print("<script>alert('complain is not deleted');window.location.href='../complains.jsp';</script>");
}
%>