<%-- 
    Document   : index
    Created on : Jan 16, 2021, 11:48:12 AM
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
                //border:15px dashed;
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
                      background:url(images/notisw.jpg);
                      color:black;
                }
                #rmain
                {
                    height:600px;
                    width:1040px;
                    float: left;
                    font-size: 20px;
                     background:url(images/common.jpg);
                  
                   
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
                 .input{
                    height: 50px;
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
            <style>
                .input{
                    width:339px;
                    height:30px;
                }
                </style>
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
                    <form action="generalcode/enquirycode.jsp" method="post">
                      
                            <center>  <font face="comic sans ms" size="75px" ><u>ENQUIRY FORM</u></font>
                                <br/>
                                <br/>
                                <table>
                                <tr>
                                <td>ENTER NAME</td>
                                <td><input type="text" name="name" required="" class="input" /></td>
                                </tr>
                                <tr>
                                    <td>SELECT GENDER</td>
                                    <td><input type="radio" name="gender" value="male"/>MALE
                                     <input type="radio" name="gender" value="female"/>FEMALE</td>

                                </tr>
                                <tr>
                                    <td>ADDRESS</td>
                                    <td><textarea placeholder="enter a Address" name="address"style="margin: 0px; width:339px; height:45px; resize:no"></textarea></td>
                                </tr>
                                <tr>
                                    <td>CONTACT NO</td>
                                    <td><input type="number" name="contactno" required="" class="input" /></td>
                                </tr>
                                <tr>
                                    <td>EMAILID</td>
                                    <td><input type="email" name="emailaddress" required="" class="input" /></td>
                                </tr>
                                <tr>
                                    <td>ENQUIRY TEXT</td>
                                    <td><textarea name="enquirytext" placeholder="Enquiry" style="margin: 0px; width:350px; height:73px;resize:no"></textarea></td>
                                </tr>
                                <tr>
                                    <td colspan="2" align="center"> <input type="submit" value="submit" class="input"/></td></tr>
                                </center>
                            </table>
                        
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
