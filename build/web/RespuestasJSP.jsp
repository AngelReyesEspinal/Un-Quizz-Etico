<%@page import="java.util.Arrays"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <title>Rank</title>
    <meta name="viewport" content="width=device-width, user-scalable=no">
    <link href='https://fonts.googleapis.com/css?family=Roboto' rel='stylesheet' type='text/css'>
    <link rel="shortcut icon" href="css/img/arbol.ico">
    <link rel="stylesheet" href="css/stylesRespuestas.css">
  </head>
  <body>
    <div class="titulo">
      <h2>RANKING</h2>
    </div>
    <div class="contenedor">
      <div class="wrap">
        <section class="main">
            <div class="tabla-container">
            <table class="table">

              <thead>
                <tr>
                  <td> Respondiste: </td>
                  <td> Respuesta: </td>
                </tr>
              </thead>

              
            <%
            String [] array = (String []) request.getAttribute("MisRespuestas");
            String [] arrayDos = (String []) request.getAttribute("RespuestasQueEran");
              int i = 0;      
            for (int j = 0 ; j < array.length ; j++)
            {   
            %>
                <tr>
                   <td> <%= array[j].toString() %> </td>
                    <td> <%= arrayDos[i].toString() %> </td>
                 </tr>
            <%i++;}%>

            </table>
          </div>
          <div class="grupo">
            <A href="index.html" class="enlace"> INICIO </a>
          </div>
          
        </section>
      </div>
    </div>
  </body>
</html>

