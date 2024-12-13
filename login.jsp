
<link rel="stylesheet" href="login1.css">

<div class="background">
    <div class="page-container">
    <div class="page" id="page">
    <div class="front">
    <div class="login-container">
        <h2>REGISTRATE</h2>
        
    <form action="nuevo11.jsp" method="post" name="forms">
        <input type="text" name="nom" placeholder="Nombre">
        <input type="text" name="usuario" placeholder="Usuario">
        <input type="text" name="password " placeholder="Contrase&ntilde;a">
        <input type="hidden" name="tipo_u" value="U" placeholder="Tipo De Usuario">
        <input type="text" name="correo" placeholder="Correo">
        <input type="text" name="tel" placeholder="Telefono">
        <input type="text" name="cp" placeholder="Codigo Postal">
        <input type="text" name="calle" placeholder="Calle">
        <input type="text" name="mz" placeholder="Manzana">
        <input type="text" name="lt" placeholder="Lote"><br>        
        <input class="href" type="button" onclick="funcion()" value="Registrar">
    </form>
        <p class="text"> Ya tienes cuenta 
        <br><a href="login.html">Inicia Sesion</a></p>
    </div>
</div>
</div>
</div>
</div>
    <script>
        function funcion(){
            if(document.forms.nom.value==""){
           alert("el campo de nombre esta vacio");
           document.forms.nom.focus();
           return;
            }
        if(document.forms.usuario.value==""){
           alert("el campo de usuario esta vacio");
           document.forms.usuario.focus();
           return;
            }
        if(document.forms.password.value==""){
           alert("el campo de contraseña esta vacio");
           document.forms.password.focus();
           return;
            }
           if(document.forms.correo.value==""){
           alert("el campo de correo esta vacio");
           document.forms.correo.focus();
           return;
            }
            if(document.forms.tel.value==""){
           alert("el campo de telefono esta vacio");
           document.forms.tel.focus();
           return;
            }
           if(document.forms.cp.value==""){
           alert("el campo de código postal esta vacio");
           document.forms.cp.focus();
           return;
            }if(document.forms.calle.value==""){
           alert("el campo de calle esta vacio");
           document.forms.calle.focus();
           return;
            }if(document.forms.mz.value==""){
           alert("el campo de manzana esta vacio");
           document.forms.mz.focus();
           return;
            }if(document.forms.lt.value==""){
           alert("el campo de lote esta vacio");
           document.forms.lt.focus();
           return;
            }
        document.forms.submit();
        }
        
        </script>
    
    <%
    %>