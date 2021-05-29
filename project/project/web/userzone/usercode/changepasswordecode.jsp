
<%@page import="mypack.DbManager"%>
<%
String oldpassword=request.getParameter("oldpassword");
String newpassword=request.getParameter("newpassword");
String confirmpassword=request.getParameter("confirmpassword");
if(newpassword.equals(confirmpassword))
{
    //change the password
    String userid=session.getAttribute("userid").toString();
    String query="update vendorreg set password='"+newpassword+"' where emailaddress='"+userid+"' and password='"+oldpassword+"'";
    DbManager db=new DbManager();
    if(db.nonQuery(query))
    {
        out.print("<script>alert('password is changed');window.location.href='../logout.jsp';</script>");
    }
    else
    {
        out.print("<script>alert('password is  not changed');window.location.href='../changepassword.jsp';</script>");
    }
}
else
{
    out.print("<script>alert('newpassword and confirmpassword is not matched');window.location.href='../changepassword.jsp';</script>");
}


%>