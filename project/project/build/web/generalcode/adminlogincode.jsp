<%@page import="java.sql.ResultSet"%>
<%@page import="mypack.DbManager"%>
<%
String userid=request.getParameter("userid");
String password=request.getParameter("password");
DbManager db=new DbManager();
String query="";
query="select password from adminlogin where userid='"+userid+"'";
ResultSet rs=db.selectQuery(query);
if(rs.next())
{
    //logincode
    String respassword=rs.getString("password");
    if(password.equals(respassword))
    {
        session.setAttribute("adminid", userid);
        response.sendRedirect("../adminzone/adminhome.jsp");
    }
    else
    {
            out.print("<script>alert('Invalid user');window.location.href='../adminlogin.jsp';</script>");
    }
}
else
{
    out.print("<script>alert('The user is not exist');window.location.href='../adminlogin.jsp';</script>");
}
%>