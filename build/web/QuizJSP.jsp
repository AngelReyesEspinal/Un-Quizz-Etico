    <!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <title> Quiz </title>
    <meta name="viewport" content="width=device-width, user-scalable=no">
    <link href='https://fonts.googleapis.com/css?family=Roboto' rel='stylesheet' type='text/css'>
    <link rel="shortcut icon" href="css/img/arbol.ico">
    <link rel="stylesheet" href="css/stylesQuizz.css">
  </head>
  <body>
    <div class="titulo">
      <h2 class="letters"> �Cu�nto sabes sobre la naturaleza? </h2>
    </div>

    <div class="wrap">
      <form class="formulario" action="QuizServlet" method="post">
        <div class="radio">

          <!--PRIMERA PREGUNTA-->
          <h2 class="preguntas"> �Qu� es reciclar? </h2>

          <input type="radio" name="Pregunta1" value="true" id="1">
          <label for="1"> Someter materiales usados o desperdicios a un proceso de transformaci�n o aprovechamiento para que puedan ser nuevamente utilizados. </label>
          <br /><br />

          <input type="radio" name="Pregunta1"  value="false" id="2">
          <label for="2"> Volver a utilizar algo, generalmente con una funci�n distinta a la que ten�a originariamente. </label>
          <br /><br />

          <input type="radio" name="Pregunta1" value="false" id="3">
          <label for="3"> vinculado a volver a usar algo. </label>

          <!--SEGUNDA PREGUNTA-->
          <h2 class="preguntas"> �Qu� es la contaminaci�n? </h2>

          <input type="radio" name="Pregunta2" value="false" id="4">
          <label for="4"> Suciedad. </label>
          <br /><br />

          <input type="radio" name="Pregunta2" value="false" id="5">
          <label for="5">  Acumulaci�n de sustancias indeseables. </label>
          <br /><br />

          <input type="radio" name="Pregunta2" value="true" id="6">
          <label for="6"> Introducci�n de sustancias u otros elementos f�sicos en un medio que provocan que �ste sea inseguro o no apto para su uso. </label>

          <!--TERCERA PREGUNTA-->
          <h2 class="preguntas"> �Cu�les son los contenedores principales del reciclaje? </h2>

          <input type="radio" name="Pregunta3" value="false" id="7">
          <label for="7"> Morado, rojo y amarillo. </label>
          <br /><br />

          <input type="radio" name="Pregunta3" value="true" id="8">
          <label for="8"> Verde, amarillo, azul y gris. </label>
          <br /><br />

          <input type="radio" name="Pregunta3" value="false" id="9">
          <label for="9"> Azul, naranja, verde y amarillo. </label>

          <!--CUARTA PREGUNTA-->
          <h2 class="preguntas"> �En qu� contenedor deber�an arrojarse los envases de pl�stico? </h2>

          <input type="radio" name="Pregunta4" value="false" id="10">
          <label for="10"> Gris. </label>
          <br /><br />

          <input type="radio" name="Pregunta4" value="false" id="11">
          <label for="11"> Verde. </label>
          <br /><br />

          <input type="radio" name="Pregunta4" value="true" id="12">
          <label for="12"> Amarillo. </label>

          <!--QUINTA PREGUNTA-->
          <h2 class="preguntas"> �Qu� es el medio ambiente? </h2>

          <input type="radio" name="Pregunta5" value="false" id="13">
          <label for="13"> Entorno f�sico. </label>
          <br /><br />

          <input type="radio" name="Pregunta5" value="false" id="14">
          <label for="14"> Las �reas verdes. </label>
          <br /><br />

          <input type="radio" name="Pregunta5" value="true" id="15">
          <label for="15"> Todo aquello que nos rodea. </label>

          <!--SEXTA PREGUNTA-->
          <h2 class="preguntas"> �Qu� se entiende por efecto invernadero? </h2>

          <input type="radio" name="Pregunta6" value="false" id="16">
          <label for="16"> Un d�a de playa. </label>
          <br /><br />

          <input type="radio" name="Pregunta6" value="false" id="17">
          <label for="17"> Calentamiento global. </label>
          <br /><br />

          <input type="radio" name="Pregunta6" value="true" id="18">
          <label for="18">  Subida de la temperatura de la atm�sfera que se produce como resultado de la concentraci�n en la atm�sfera de gases, principalmente di�xido de carbono. </label>

          <!--SEPTIMA PREGUNTA-->
          <h2 class="preguntas"> �Cu�les de estos son materiales reciclables? </h2>

          <input type="radio" name="Pregunta7" value="false" id="19">
          <label for="19"> Lentes, pa�ales y espejos. </label>
          <br /><br />

          <input type="radio" name="Pregunta7" value="true" id="20">
          <label for="20"> Papel, pl�stico y vidrio. </label>
          <br /><br />

          <input type="radio" name="Pregunta7" value="false" id="21">
          <label for="21"> Papel de fotograf�a, materia org�nica y aluminio. </label>

          <!--OCTAVA PREGUNTA-->
          <h2 class="preguntas"> �En qu� contenedor se debe desechar el vidrio? </h2>

          <input type="radio" name="Pregunta8" value="true" id="22">
          <label for="22"> Verde. </label>
          <br /><br />

          <input type="radio" name="Pregunta8" value="false" id="23">
          <label for="23"> Amarillo. </label>
          <br /><br />

          <input type="radio" name="Pregunta8" value="false" id="24">
          <label for="24"> Gris. </label>

          <!--NOVENA PREGUNTA-->
          <h2 class="preguntas"> �Qu� es compost? </h2>

          <input type="radio" name="Pregunta9" value="false" id="25">
          <label for="25"> Un compuesto. </label>
          <br /><br />

          <input type="radio" name="Pregunta9" value="false" id="26">
          <label for="26"> Basura. </label>
          <br /><br />

          <input type="radio" name="Pregunta9" value="true" id="27">
          <label for="27"> Es un producto obtenido a partir de diferentes materiales de origen org�nico. </label>

          <!--DECIMA PREGUNTA-->
          <h2 class="preguntas"> �En qu� contenedor se desecha el papel? </h2>

          <input type="radio" name="Pregunta10" value="true" id="28">
          <label for="28"> Azul. </label>
          <br /><br />

          <input type="radio" name="Pregunta10" value="false" id="29">
          <label for="29"> Verde. </label>
          <br /><br />

          <input type="radio" name="Pregunta10" value="false" id="30">
          <label for="30"> Rojo. </label>
        </div>
        <br />
        <input type="submit" name="button" value="LISTO" class="boton">
            
      </form>
    </div>
  </body>
</html>

