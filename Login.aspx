<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="index2" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
  <meta charset="UTF-8">
  <title>Crystal Money-Iniciar Sesión</title>
  <link href='http://fonts.googleapis.com/css?family=Titillium+Web:400,300,600' rel='stylesheet' type='text/css'>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">
      <link rel="stylesheet" href="css/style.css">
    <script src="js/jquery.min.js"></script>
    <script src="js/Login.js"></script>

</head>
<body>
  <div class="form">
      <ul class="tab-group">
        <li class="tab active"><a href="#login">Iniciar Sesion</a></li>
        <li class="tab"><a href="#signup">Registrarme</a></li>
      </ul>
      <div class="tab-content">
        <div id="login">   
          <h1>¡Bienvenido!</h1>
          
          <form action="/" method="post">
          
            <div class="field-wrap">
            <label>
              Usuario<span class="req">*</span>
            </label>
            <input type="email"required autocomplete="off" id="txtUsuario"/>
          </div>
          
          <div class="field-wrap">
            <label>
              Contraseña<span class="req">*</span>
            </label>
            <input type="password"required autocomplete="off" id="txtContraseña"/>
          </div>
          
          <p class="forgot"><a href="#">¿Olvidaste tu contraseña?</a></p>
          
          <button class="button button-block" onclick="Logearse()"/>Entrar</button>
          
          </form>

        </div>
        <div id="signup">   
          <h1>Registrate Gratis</h1>
          
          <form action="/" method="post">
          
          <div class="top-row">
            <div class="field-wrap">
              <label>
                Nombres<span class="req">*</span>
              </label>
              <input type="text" required autocomplete="off" />
            </div>
        
            <div class="field-wrap">
              <label>
                Apellidos<span class="req">*</span>
              </label>
              <input type="text"required autocomplete="off"/>
            </div>
          </div>

          <div class="field-wrap">
            <label>
              Correo Electronico<span class="req">*</span>
            </label>
            <input  id="txtNick" type="email"required autocomplete="off"/>
          </div>
          
          <div class="field-wrap">
            <label>
              Contraseña<span class="req">*</span>
            </label>
            <input id="txtPwd" type="password"required autocomplete="off"/>
          </div>
          
          <button type="submit" class="button button-block"/>Registrarme</button>
          
          </form>

        </div>
        
       
        
      </div><!-- tab-content -->
      
</div> <!-- /form -->
    <script src="js/index.js"></script>
</body>

</html>
