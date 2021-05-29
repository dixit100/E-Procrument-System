<%-- 
    Document   : index
    Created on : Jan 15, 2021, 11:48:12 AM
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
                //background-color: yellow;
               // border:15px dotted;
                margin:0px auto;
                
            }
            #header
            {
                height:150px;
                width:1340px;
                //background-color: blue;
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
                width:1338px;
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
background-color:limegreen;
border-radius:20px 0px 20px 0px;

}
            #slider
            {
                height:300px;
                width: 1340px;
                background-color: pink;
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
                      //background-color: whitesmoke;
                       background:url(images/noti.jpg);
                      color:white;
                }
                #rmain
                {
                    height:600px;
                    width:1040px;
                    float: left;
                    background-color: white;
                    font-size: 20px;
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
                      <center>  <font face="comic sans ms" size="75px" style="color: black;">E-PROCUREMENT SYSTEM</font>
                          <br/>
                          <br/>
                    
                    <font face="comic sans ms">E-procurement is the process of buying and selling supplies and services over the Internet.
                    It differs from e-commerce in that it makes use of a supplier’s closed system typically available only to registered users.When implemented
                    properly, e-procurement opens the lines of communication between a company and a supplier by creating a direct link and facilitating
                    interactions such as bids,purchase orders and emails.
                    Built-in monitoring tools help control costs and maximize performance, reducing overhead and paperwork.
                    Fully automated systems streamline processes and can result in a faster cycle from creating an order to fulfillment.
                    There also is an opportunity for a larger selection of products and services.
                    Centralized transaction tracking simplifies reporting on orders, payments, and requisitions, as well as ensuring contract compliance, all of 
                    which can reduce delivery time. Buyers have electronic access to available products, services, and prices.
                    Procurement professionals can quickly locate products from preferred suppliers and are limited to the purchases they can make, so inventory 
                    is better controlled.
                    Government agencies were among the first organizations to implement e-procurement, which offers a quick ramp-up, along with benefits such as spend savings, a one-stop, seamless system, and transparency in the purchasing of goods and services.

E-procurement makes every detail of government purchasing, contracts and vendor relationships available to the public, such as:

Current and past procurements and contracts, as well as possible future procurements
Detailed information on rules, processes, and standards driving each procurement
Bidding opportunities and statewide contracts
Information on vendor names, items procured, prices paid and the purchasing agency.</font>
                    
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
