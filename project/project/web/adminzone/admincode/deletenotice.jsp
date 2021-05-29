<%@page import="mypack.DbManager"%>
<%
String id=request.getParameter("id");
String q="delete from notification where id='"+id+"'";
DbManager db=new DbManager();
String res=(db.nonQuery(q)==true)?"Record deleted":"Record is not deleted";
%>
<script>
    alert('<%=res%>');
    window.location.href='../adminhome.jsp';
</script>