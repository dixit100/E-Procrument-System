<%-- 
    Document   : index
    Created on : Jan 17, 2021, 11:48:12 AM
    Author     : swarnim
--%>
<%
if(session.getAttribute("userid")==null || session.getAttribute("userid")=="")
{
    response.sendRedirect("../login.jsp");
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
                width: 1000px;
                border:15px dotted;
                margin:0px auto;
                height:auto;
                
            }
            #header
            {
                height:150px;
                width:1000px;
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
                width:1000px;
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
padding:20px;


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
               width: 1000px;
               background-color: white;
                  }
                 
             
                #footer
                {
     height:100px;
                    width:1000px;
                }
                  #lfooter
                {
                    height:100px;
                    width:500px;
                    background-color:black;
                   float: left; 
                   color:#a9dba9;
                }
                        #rfooter
                {
                    height:100px;
                    width:500px;
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
                    <center><font face="comic sans ms" size="50px">E-PROCUREMENT SYSTEM</font></center>
                </div>
            </div>
            <div id="menu">
              <ul>
                    <li><a href="userhome.jsp">USERHOME</a></li>&nbsp;&nbsp;&nbsp;&nbsp;
<li><a href="complainlog.jsp">COMPLAIN LOG</a></li>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<li><a href="downloadtender.jsp">DOWNLOAD TENDER</a></li>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<li><a href="changepassword.jsp">CHANGE PASSWORD</a></li>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<li><a href="logout.jsp">LOGOUT</a></li>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

</ul
            </div>
           
            <div id="main">
                <form action="usercode/changepasswordecode.jsp" method="post">
                  
                     <center>  <font face="comic sans ms" size="75px" ><u>CHANGE PASSWORD</u></font>
                         <br/>
                         <br/>
                         <tr>
                                   <td>ENTER OLD PASSWORD</td>
                                   <td><input type="password" name="oldpassword" required="" style="margin: 0px; width: 300px; height:50px;"/></td>
                               </tr>
                               <br/>
                               <br/>
                               <tr>
                                   <td>ENTER NEW PASSWORD</td>
                                   <td><input type="password" name="newpassword" required="" style="margin: 0px; width: 300px; height:50px;"/></td>
                               </tr>
                               <br/>
                               <br/>
                               <tr>
                                   <td>ENTER CONFIRM PASSWORD</td>
                                   <td><input type="password" name="confirmpassword" required="" style="margin: 0px; width: 300px; height:50px;"/></td>
                               </tr>
                               <br/>
                               <br/>
                               <input type="submit" value="change"/>
                   
                </form> 
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
                    <h3>DEVELOP BY SWARNIM MISHRA,SAURABH DIXIT,SAKSHI KESHARI,NEHA BANSAL
                    FROM KASHI INSTITUTE OF TECHNOLOGY
                    <br/><center>VARANASI</center></h3>
                </div>
            </div>
            
        </div>   
    </body>
</html>
<%}%>