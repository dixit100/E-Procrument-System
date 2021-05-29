<%@page import="mypack.SmsSender"%>
<%@page import="mypack.DbManager"%>
<%
    String name=request.getParameter("name");
    String gender=request.getParameter("gender");
    String address=request.getParameter("address");
    String contactno=request.getParameter("contactno");
    String emailaddress=request.getParameter("emailaddress");
    String enquirytext=request.getParameter("enquirytext");
    DbManager db=new DbManager();
    String enquirydate=db.getDate();
    String query="insert into enquiry(name,gender,address,contactno,emailaddress,enquirytext,enquirydate)values('"+name+"','"+gender+"','"+address+"','"+contactno+"','"+emailaddress+"','"+enquirytext+"','"+enquirydate+"')";
    
    if(db.nonQuery(query)==true)
    {
        SmsSender  sms=new SmsSender();
        sms.SendSms(contactno, "hii ! "+name+"your enquiry successfully submited");
        out.print("<script>alert('enquiry is saved');window.location.href='../index.jsp';</script>");
    }
   else
    {
        out.print("<script>alert('enquiry is not saved');window.location.href='../index.jsp';</script>");
    }
    
     
%>