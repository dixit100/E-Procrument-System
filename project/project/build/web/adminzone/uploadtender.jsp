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
<li><a href="logout.jsp">LOGOUT</a></li>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

</ul
            </div>
           
            <div id="main">
                <center>  <font face="comic sans ms" size="75px" ><u> UPLOAD TENDOR </u></font></center>       <form action="../UploadTender" method="post" enctype="multipart/form-data">
                    <table style="margin:0px auto; width: 90%" border="1">
                        <tr>
                            <td>Enter tender name :</td>
                            <td> <input type="text" name="tendername" required="" style="width:200px;"/></td>
                        </tr>
                        <tr>
                            <td> Enter tender description:</td>
                            <td>
                                <textarea name="description" required="" style="width: 200px;height: 100px;resize: none;"></textarea>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Upload tender file:    </td>
                            <td> <input type="file" name="file" required=""  style="width:200px;"/></td>
                                
                        
                        </tr>
                        <tr>
                            <td colspan="2"align="center">
                                <input type="submit" value="ADD NEW TENDOR"/>
                            </td>
                        </tr>
                    </table>
                </form>
                <br>
                <center>  <font face="comic sans ms" size="75px" ><u> TENDOR MANAGEMENT </u></font></center> 
                <hr>
                <%
    DbManager db=new DbManager();
    String q="select * from tender";
    ResultSet rs=db.selectQuery(q);
    if(rs!=null)
    {
        %>
               
      
        <table style="margin: 0px auto;width: 90%;" border="1">
            <tr>
                <th>Tender id</th>
                  <th>Tender name</th>
                    <th>Tender Description</th>
                      <th>Tender Upload date</th>
                        <th>Download</th>
                          <th>Delete</th>
            </tr>
            <%
            while(rs.next())
            {
            %>
            <tr>
                <td><%=rs.getString("tid")%></td>
                 <td><%=rs.getString("tendername")%></td>
                  <td><%=rs.getString("description")%></td>
                   <td><%=rs.getString("uploaddate")%></td>
                   <td><a target="_blank" href="<%=request.getContextPath()+"/uploadtender/"+rs.getString("filename")%>">Download</a></td>
                   <td><a href="admincode/deletetender.jsp?tid=<%=rs.getString("tid")%>">Delete</a></td>
            </tr>
            <%
            }%>
0            
        </table>
               
        <%}
                %>
             
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