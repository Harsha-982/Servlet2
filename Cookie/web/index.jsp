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
        <td><input type="text" name="name" id="username"></td>
      </tr>
      <tr>
        <td>Password:</td>
        <td><input type="password" name="password" id="password"></td>
      </tr>
      <tr>
        <td>&nbsp;</td>
        <td><input type="submit" onclick="return myValidation(this.form)" value="login"></td>
      </tr>
    </table>

<script>
  function check(){
      var user=document.getElementById("username").value;
      var pass=document.getElementById("password").value;
      if(user=="" && pass==""){
          alert("Username or Password should not be empty!!")
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
