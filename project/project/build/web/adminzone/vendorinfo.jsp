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
              //  border:15px dashed;
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
           
            <div id="main">
                
                <center>  <font face="comic sans ms" size="75px" ><u> VIEW ALL COMPLAINS </u></font></center>
                <table style="margin:0 auto;width: 70%" border="1">
                    <tr>
                        <th>Company Name</th>
                        <th>Address1</th>
                        <th>Address2</th>
                        <th>Concern Person</th>
                        <th>Contact No.</th>
                        <th>Email Address</th>
                                 <th>Tin No.</th>
                        <th>Pan No.</th>
                        <th>Specialization</th>
                        <th>Password</th>
                        <th>Reg Date</th>
                         <th>DELETE</th>
                    </tr>
                    <%
                    DbManager db=new DbManager();
                    ResultSet rs=db.selectQuery("select * from vendorreg");
                    while(rs.next())
                    {
                        
                    
                    
                    %>
                    <tr>
                             
                    <td>  <%=rs.getString("companyname")%> </td>
                    <td>  <%=rs.getString("address1")%> </td>
                    <td>  <%=rs.getString("address2")%> </td>
                             <td>  <%=rs.getString("concernperson")%> </td>
                                      <td>  <%=rs.getString("contactno")%> </td>
                                               <td>  <%=rs.getString("emailaddress")%> </td>
                                               <td>  <%=rs.getString("tinno")%> </td>
                                               <td>  <%=rs.getString("panno")%> </td>
                                                        <td>  <%=rs.getString("specialization")%> </td>
                                                        <td>  <%=rs.getString("password")%> </td>
                                                        <td>  <%=rs.getString("regdate")%> </td>
                                                     
                                                        <td><a href="admincode/vendordelete.jsp?emailaddress=<%=rs.getString("emailaddress")%>">Delete</a></td>
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