<%-- 
    Document   : index
    Created on : Jan 15, 2021, 11:48:12 AM
    Author     : swarnim
--%>
<%@page import="java.sql.ResultSet"%>
<%@page import="mypack.DbManager"%>
<%
if(session.getAttribute("adminid")==null || session.getAttribute("adminid")=="")
{
    response.sendRedirect("../adminlogin.jsp");
}
else
{
    


%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <style>
            #outer
            {
                min-height:900px;
                width: 1340px;
                //border:15px dashed;
                margin:0px auto;
                height:auto;
                
            }
            #header
            {
                height:150px;
                width:1340px;
            }
            #logo
            {
                height: 150px;
                width: 150px;
                background-color: crimson;
                float:left;
            }
            #pt
            {
                height: 150px;
                width:850px;
                background-color: white;
                float:left;
                font-size: 75px;
            }
            #menu
            {
                height: 50px;
                width:1340px;
                background-color: black;
               border: 1px solid;
            }
            #menu ul
{
list-style-type:none;
}
#menu ul li
{
display:inline;
padding:15px;


//border:1px solid;
}
#menu ul li a
{
color:white;
text-decoration:none;

}
#menu ul li:hover
{
background-color:chartreuse;
border-radius:20px 0px 20px 0px;

}
           
            #main
            {
               height:600px;
               width: 1340px;
               background-color: white;
                  }
                 
             
                #footer
                {
     height:150px;
                    width:1340px;
                }
                  #lfooter
                {
                    height:150px;
                    width:670px;
                    background-color:black;
                   float: left; 
                   color:#a9dba9;
                }
                        #rfooter
                {
                    height:150px;
                    width:670px;
                    background-color: black;
                    float: left;
                    color:#a9dba9;
                }
        </style>
 
    </head>
    <body>
        <div id="outer">
               <div id="header">
                <div id="logo">
                    <img src="../images/logo1.png" height="150px" width="150px"  alt="path galat hai"/>
                </div>
                <div id="pt">
                    <center><font face="comic sans ms">E-Procurement System</font></center>
                </div>
            </div>
            <div id="menu">
                <ul>
                    <li><a href="adminhome.jsp">ADMINHOME</a></li>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<li><a href="enquriries.jsp">ENQIURIES</a></li>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<li><a href="complains.jsp">COMPLAINS</a></li>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<li><a href="vendorinfo.jsp">VENDORINFO</a></li>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<li><a href="career.jsp">CAREER</a></li>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<li><a href="uploadtender.jsp">UPLOADTENDER</a></li>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<li><a href="logout.jsp">LOGOUT</a></li>

</ul
            </div>
           
            <div id="main" style="overflow: scroll;">
                               <center>  <font face="comic sans ms" size="75px" ><u> VIEW ALL CAREER </u></font></center>
                <table style="margin:0 auto;width: 90%;" border="1">
                    <tr>
                        <th> Name</th>
                        <th>Gender</th>
                        <th>Address</th>
                     <th>Contact No.</th>
                        <th>Email Address</th>
                                 <th>Qualification</th>
                        <th>Experience.</th>
                        <th>Keyskill</th>
                        <th>CV</th>
                        <th>Connectdate</th>
                         <th>DELETE</th>
                    </tr>
                    <%
                    DbManager db=new DbManager();
                    ResultSet rs=db.selectQuery("select * from career");
                    while(rs.next())
                    {
                        %>
                    <tr>
                             <td>  <%=rs.getString("name")%> </td>
                    <td>  <%=rs.getString("gender")%> </td>
                    <td>  <%=rs.getString("address")%> </td>
                             <td>  <%=rs.getString("contactno")%> </td>
                                               <td>  <%=rs.getString("emailaddress")%> </td>
                                               <td>  <%=rs.getString("qualification")%> </td>
                                               <td>  <%=rs.getString("experience")%> </td>
                                                        <td>  <%=rs.getString("keyskills")%> </td>
                                                        <td>  <%=rs.getString("cv")%> </td>
                                                        <td>  <%=rs.getString("connectdate")%> </td>
                                                     
                                                        <td><a href="admincode/careerdelete.jsp?emailaddress=<%=rs.getString("emailaddress")%>">Delete</a></td>
                    </tr>
              
                    <% } %>
                </table>
             </div>
            <div id="footer">
                <div id= "lfooter">
                    <font face="comic sans ms" size="20px">
                            <marquee direction="left" onmouseover="stop()" onmouseout="start()">
                        E-Procurement System
                           
                            </marquee>
                            </font>
                            
                </div>
                <div id="rfooter">
                    <center> <h3>SWARNIM MISHRA
                                 <br/>SAURABH DIXIT<br/>SAKSHI KESHARI<br/>NEHA BANSAL<br/>
                    FROM KASHI INSTITUTE OF TECHNOLOGY,VARANASI
                        </h3></center>
                </div>
            </div>
            
        </div>   
    </body>
</html>
<%}%>