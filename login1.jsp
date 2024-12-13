<%@ page import="base.*" session="false" %>
<%! conexion base=new conexion("localhost", "proyecto", "root","admin");%>

<% 
String usuario=request.getParameter("usuario");
String password=request.getParameter("password");
base.consultaSel("SELECT * FROM usuarios where usuario='"+ usuario + "'");
if(base.num_regs()>0){
    base.consultaSel("SELECT * FROM usuarios where usuario='"+ usuario + "' and password= Sha2('"+ password+"',256)");
    
if(base.num_regs()>0){
    base.primero();
    String id=base.getData(1);
    String tipo=base.getData(5);
    base.consultaAcc("Insert into login(fecha,idusuario)values(now(),"+id+")");
    HttpSession Session=request.getSession(true);
    Session.setMaxInactiveInterval(300);
    Session.setAttribute("usuario",usuario);
    if(tipo.equals("A")){
        response.sendRedirect("pagina1.html");
    }
    else  if(tipo.equals("U")){
        response.sendRedirect("pagina.html");
    }
 

    
}
else{
    out.print("Error En La Contrase&ntilde;a");
}
}

else{
    out.print ("Error En El Usuario");
}

%>