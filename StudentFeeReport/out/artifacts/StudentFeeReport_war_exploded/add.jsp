<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="include.jsp"%>
<html>
<head>
    <title>AddStudentDetails</title>
</head>
<body>
<form action="/addServlet" method="post">
    <table>
        <tr>
            <td>Name:</td>
            <td><input type="text" name="name"></td>
        </tr>
        <tr>
            <td>Standard</td>
            <td><input type="text" name="standard"></td>
        </tr>
        <tr>
            <td>RollNo</td>
            <td><input type="number" name="rollNo" value="1" min="1"></td>
        </tr>
        <tr>
            <td>Percentage</td>
            <td><input type="number" name="percentage" value="0" min="0"></td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td><input type="submit" onclick="return validation(form)" value="Add"></td>
        </tr>
    </table>

</form>
<script>
    function validation(form) {
        if(form.name.value=="" ){
            alert("Name has not entered")
            return false;
        }
        if(form.standard.value==""){
            alert("Standard has not entered")
            return false;
        }
        if(form.percentage.value==""){

            alert("Percentage has not entered")
            return false;
        }
        if(form.rollNo.value==""){
            alert("RollNo has not entered")
            return false;
        }
        else{
            return true;
        }
    }
</script>
</body>
</html>
