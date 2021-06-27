<%-- 
    Document   : Cantidad
    Created on : 3/05/2021, 02:25:39 PM
    Author     : 24DD018LA
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
       <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
        <meta http-equiv="X-UA-Compatible" content="ie=edge" />
        <link rel="stylesheet" href="newcss.css" />
        <link href="https://fonts.googleapis.com/css2?family=IBM+Plex+Sans:wght@500&display=swap" rel="stylesheet">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
        <title>Cantidad de Articulos</title>
    </head>
    
     <body onload="generateCaptcha();">
        <nav class="navbar navbar-expand-sm bg-dark navbar-dark">
  <!-- Links -->
  <ul class="navbar-nav">
    <li class="nav-item">
      <a class="nav-link" href="index.jsp">Home</a>
    </li>
    <li class="nav-item">
      <a class="nav-link" href="Articulos.jsp">Articulos</a>
    </li>
    <li class="nav-item">
      <a class="nav-link" href="Fechas.jsp">Fechas</a>
    </li>
    <li class="nav-item">
      <a class="nav-link" href="Nit.jsp">Nit</a>
    </li>
  </ul>
</nav>
        
        <form action="?" method="POST">
      <h1>FORMULARIO CANTIDAD DE ARTICULOS</h1>
         <label><b>Imagen de la Cantidad de Articulos: </b></label>
         <input class="form-control form-control-sm" id="txt_file" type="file">
         </form>
  
   <div class="full-row">
      <div class="captcha_outer flex-row">
         <div class="captcha_output">
               <br><br/>
             <label>Conplete el Captcha Antes de Enviar</label>
             <br><br/>
            <input type="text" id="Captcha" readonly>
         </div>
         <div class="captcha_gen">
            <button id="refresh" onclick="generateCaptcha();">Refresh</button>
         </div>
      </div>
      <div class="captcha_valid flex-row">
         <div class="fillcaptcha"><input type="text" id="txtInput" /></div>
         <div class="valid_captcha">
            <button id="CheckCaptcha" onclick="CheckValidCaptcha();">Check</button>
         </div>
      </div>
      <div class="valid-msg-error">
         <span id="error" style="color:red"></span>
         <span id="success" style="color:green"></span>
      </div>
   </div>
        <br> <br/>
       <button type="button" class="btn btn-success">Enviar</button>      
    </body>
    <script type="text/javascript">
   function generateCaptcha() {
      var alpha = new Array('A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M',
         'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z',
         'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm',
         'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z');
      var i;
      for (i = 0; i < 5; i++) {
         var a = alpha[Math.floor(Math.random() * alpha.length)];
         var b = alpha[Math.floor(Math.random() * alpha.length)];
         var c = alpha[Math.floor(Math.random() * alpha.length)];
         var d = alpha[Math.floor(Math.random() * alpha.length)];
         var e = alpha[Math.floor(Math.random() * alpha.length)];
      }
      var code = a + '' + b + '' + '' + c + '' + d + '' + e;
      document.getElementById("Captcha").value = code;

   }
   function CheckValidCaptcha() {
      var string1 = removeSpaces(document.getElementById('Captcha').value);
      var string2 = removeSpaces(document.getElementById('txtInput').value);
      if (string1 == string2) {
         document.getElementById('success').innerHTML = "Captcha is validated Successfully";
         //alert("Form is validated Successfully");
         return true;
      }
      else {
         document.getElementById('error').innerHTML = "Please enter a valid captcha.";
         //alert("Please enter a valid captcha.");
         return false;
      }
   }
   function removeSpaces(string) {
      return string.split(' ').join('');
   }

</script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/js/bootstrap.bundle.min.js" integrity="sha384-JEW9xMcG8R+pH31jmWH6WWP0WintQrMb4s7ZOdauHnUtxwoG2vI5DkLtS3qm9Ekf" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.1/dist/umd/popper.min.js" integrity="sha384-SR1sx49pcuLnqZUnnPwx6FCym0wLsk5JZuNx2bPPENzswTNFaQU1RDvt3wT4gWFG" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/js/bootstrap.min.js" integrity="sha384-j0CNLUeiqtyaRmlzUHCPZ+Gy5fQu0dQ6eZ/xAww941Ai1SxSY+0EQqNXNE6DZiVc" crossorigin="anonymous"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</html>
