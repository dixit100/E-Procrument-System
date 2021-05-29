<%@page import="mypack.DbManager"%>
<%
    String companyname=request.getParameter("companyname");
    String address1=request.getParameter("address1");
    String address2=request.getParameter("address2");
       String concernperson=request.getParameter("concernperson");
    String contactno=request.getParameter("contactno");
    String emailaddress=request.getParameter("emailaddress");
    String tinno=request.getParameter("tinno");
       String panno=request.getParameter("panno");
          String specialization=request.getParameter("specialization");
             String password=request.getParameter("password");
                
    DbManager db=new DbManager();
    String regdate=db.getDate();
    String query="insert into vendorreg(companyname,address1,address2,concernperson,contactno,emailaddress,tinno,panno,specialization,password,regdate)values('"+companyname+"','"+address1+"','"+address2+"','"+concernperson+"','"+contactno+"','"+emailaddress+"','"+tinno+"','"+panno+"','"+specialization+"','"+password+"','"+regdate+"')";
    
    if(db.nonQuery(query)==true)
    {
        out.print("<script>alert('registeration is saved');window.location.href='../index.jsp';</script>");
    }
   else
    {
        out.print("<script>alert('registeration is not saved');window.location.href='../index.jsp';</script>");
    }
    
     
%>