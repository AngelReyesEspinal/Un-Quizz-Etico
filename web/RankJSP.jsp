<%@page import="java.util.ArrayList"%>
<%@page import="Model.Usuario"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <title>Rank</title>
    <meta name="viewport" content="width=device-width, user-scalable=no">
    <link href='https://fonts.googleapis.com/css?family=Roboto' rel='stylesheet' type='text/css'>
    <link rel="shortcut icon" href="css/img/arbol.ico">
    <link rel="stylesheet" href="css/stylesRank.css">
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
                  <td> Persona: </td>
                  <td> Puntuación: </td>
                  <td> Nota: </td>
                </tr>
              </thead>

              <% ArrayList <Usuario> lista = (ArrayList <Usuario>) request.getAttribute("datos");
              for(int i = 0; i < lista.size() ; i++)
            {%>
              <tr>
                <td> <%= lista.get(i).getNombre() %> </td>
                <td> <%= lista.get(i).getPuntuacion() %> </td>
                <td> <%= lista.get(i).getNota() %> </td>
              </tr>
            <%}%>
            </table>
          </div>
          <div class="grupo">
            <A href="index.html" class="enlace"> INICIO </a>
            <A href="RespuestasServlet" class="enlace1"> VER RESPUESTAS </a>
          
          </div>

        </section>
      </div>
    </div>
  </body>
</html>

