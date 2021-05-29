<%-- 
    Document   : index
    Created on : Jan 17, 2021, 11:48:12 AM
    Author     : swarnim
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <style>
            #outer
            {
                height:1250px;
                width: 1340px;
                //border:15px solid;
                margin:0px auto;
                
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
            #slider
            {
                height:300px;
                width: 1340px;
                background-color: aqua;
            }
            #main
            {
               height:600px;
               width: 1340px;
                  }
                  #lmain
                  {
                      height:600px;
                      width: 300px;
                      float:left;
                      //background-color: #dfe4ea;
                      background:url(images/notisw.jpg);
                      color:black;
                }
                #rmain
                {
                    height:600px;
                    width:1040px;
                    float: left;
                    background:url(images/common.jpg);
                    //background-color: white;
                    
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
                          background-color: black;
                             color:#a9dba9;
                             float: left;
                             
                }
                        #rfooter
                {
                    height:150px;
                    width:670px;
                          background-color: black;
                             color:#a9dba9;
                    float: left;
                }
                .input
                {
                    height: 25px;
                    width:300px;
                }
        </style>
        <script>
            var imgno=0;
            var imgarr=["s1.jpg","s2.jpg","s3.jpg","s4.jpg"];   //for diffrent extension
            function slider()
            {
             var img=document.getElementById("slide");
          img.src="images/"+imgarr[imgno];
            
             imgno++;
             if (imgno==4)
             {
                 imgno=0;
             }
             window.setTimeout("slider()","2000")
            }
            </script>
    </head>
    <body onload="slider()">
        <div id="outer">
               <%@include file="header/header.html" %>
            <div id="slider">
                <img height="300px" width="1340px" id="slide"/>
            </div>
            <div id="main">
                <div id="lmain">
                       <%@include file="masternotice.jsp" %>
                </div>
                <div id="rmain">
                    
                       <form action="generalcode/logincode.jsp" method="post">
                           <center>  <font face="comic sans ms" size="75px" style="color: black;"><u>LOGIN FORM</u></font>
                           <br/>
                           <br/>
                           <table border="1" style="width:40%; margin:0 auto;">
                               <tr>
                                   <td><b> USER ID</b></td>
                                   <td><input type="text" name="userid" required="" style="margin: 0px; width: 300px; height:50px;"/></td>
                               </tr>
                               <br/>
                               </br>
                               
                           
                               <tr>
                                   <td><b>PASSWORD</b></td>
                                   <td><input type="password" name="password" required="" style="margin: 0px; width: 300px; height:50px;"/></td>
                               </tr>
                               <br/>
                               <br/>
                          
                               <tr>
                                   <td>
                                       <a href="adminlogin.jsp"><b>AdminLogin</b></a>
                                   </td>
                               <td colspan="2" align="center"><input type="submit" value="login" class="input"/></td>
                               </tr>
                           
                           </table>
                           </center>
                       </form>
                </div>
                  
            </div>
            <div id="footer">
                <div id= "lfooter">
                    <font face="comic sans ms" size="20px">
                            <marquee direction="left" onmouseover="stop()" onmouseout="start()">
                        E-Procurement System
                           
                            </marquee>
                            </font>
                            <center><img src="images/fb.png">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <img src="images/youtube.png">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <img src="images/twitter.jpg"></center>
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
