<%@page import="mypack.DbManager"%>
<%
String notice=request.getParameter("notice");
DbManager db=new DbManager();
String postdate=db.getDate();
String q="insert into notification(notice,postdate) values('"+notice+"','"+postdate+"')";
String res=(db.nonQuery(q)==true?"Sucess":"unsuccess");

%>
<script>
    alert('<%=res%>');
    window.location.href='../adminhome.jsp';
</script>