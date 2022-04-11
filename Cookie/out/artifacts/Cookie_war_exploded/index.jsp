<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>login</title>
  </head>
  <body>
  <form action="/login" method="post">
    <table>
      <tr>
        <td>Name:</td>
        <td><input type="text" name="name"></td>
      </tr>
      <tr>
        <td>Password:</td>
        <td><input type="password" name="password"></td>
      </tr>
      <tr>
        <td>&nbsp;</td>
        <td><input type="submit" onclick="return myValidation(this.form)" value="login"></td>
      </tr>
    </table>

<script>
  function myValidation(form) {
    if(form.name.value=="" || form.password.value==""){
      alert("You haven't filled out Name or Password ")
      return false;
    }
    else{
      return true;
    }
  }
</script>
  </form>
  </body>
</html>
