<%@ page import="java.util.Map" %>
<%@ page import="Admin.StudentDetails" %>
<%@ page import="java.util.Set" %>
<%@ page import="java.io.PrintWriter" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--<%@include file="include.jsp"%>--%>

<html>
<head>
    <title>View</title>
</head>
<body>
<%
    PrintWriter pw=response.getWriter();
    Set<Map.Entry<Integer,StudentDetails>> set=
            (Set<Map.Entry<Integer,StudentDetails>>)request.getServletContext().getAttribute("set");
    for(Map.Entry s:set){

%>
<button type="button" class="collapsible"><%=s.getKey()%></button>

        <div class="content">
            <%=s.getValue()%>
        </div>
<a href="/viewPages?delete=<%=s.getKey()%>">Delete</a>
    <%
        }
    %>
<script>
    var coll = document.getElementsByClassName("collapsible");
    var i;

    for (i = 0; i < coll.length; i++) {
        coll[i].addEventListener("click", function() {
            this.classList.toggle("active");
            var content = this.nextElementSibling;
            if (content.style.display === "block") {
                content.style.display = "none";
            } else {
                content.style.display = "block";
            }
        });
    }
</script>
</body>
</html>
