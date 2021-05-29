<%
String tid=request.getParameter("tid");
String q="delete from tender where tid='"+tid+"'";
String res=(new mypack.DbManager().nonQuery(q)==true)?"Tender is deleted":"Tender is not deleted";

%>
<script>
    alert('<%=res%>');
    window.location.href='../uploadtender.jsp';
</script>