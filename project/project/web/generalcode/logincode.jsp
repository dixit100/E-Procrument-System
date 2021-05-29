<%@page import="java.sql.ResultSet"%>
<%@page import="mypack.DbManager"%>
<%
    String userid=request.getParameter("userid");
    String password=request.getParameter("password");
    DbManager db=new DbManager();
    ResultSet rs=db.selectQuery("select password from vendorreg where emailaddress='"+userid+"'");
    if(rs.next())
    {
        //Match the password
        String respassword=rs.getString("password");
        if(password.equals(respassword))
        {
            
          session.setAttribute("userid", userid);
          response.sendRedirect("../userzone/userhome.jsp");
            
        }
        else
        {
                out.print("<script>alert('password is not matched');window.location.href='../login.jsp'</script>");
        }
    }
    else
    {
        out.print("<script>alert('invalid user');window.location.href='../login.jsp';</script>");
    }
 %>