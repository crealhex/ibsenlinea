<%--
    Document   : solicitarprestamo
    Created on : 16/03/2020, 09:59:44 PM
    Author     : dolly
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="es">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport"
              content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <title>IBS-PE</title>
        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/styles.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/fonts.css">
    </head>
    <body>
        <nav>
            <ul>
                <li><a href="index.jsp">Inicio</a></li>
                <li><a><span class="icon-drive"> Prestamos</span></a></li>
            </ul>
        </nav>
        <div class="prestamo">
            <div id="prestamo">
                <div class="prestamop">
                <p>Eliga un tipo de prestamo</p>
                </div>
                <div id="left">
                    <a href="javascript:abrirPP()"><img src="img/prestamo-personal.png" width="100%"></a>
                    <div class="txt">
                        <h2>Prestamo Personal</h2>
                        <p>Estos préstamos se usan para financiar necesidades concretas en un momento determinado. Son generalmente cantidades pequeñas que se usan para financiar gastos inesperados, viajes, reparaciones, bodas, etc.</p>
                    </div>
                </div>
                <div id="right">
                    <a href="javascript:abrirPE()"><img src="img/prestamo-estudiante.png" width="100%"></a>
                    <div class="txt2">
                        <h2>Prestamo Estudiantil</h2>
                        <p>Se trata de préstamos dirigidos a financiar matrículas universitarias, estudios de postgrado o masters. Los tipos de interés de los préstamos de estudios son más baratos que los de los créditos personales.</p>
                    </div>
                </div>
            </div>
        </div>
 
        
        <div class="prestamo-personal" id="prestamo-personal">
        <div id="cerrarPP"><a href="javascript:cerrarPP()"><img src="img/close1.png"></a></div>
        <form class ="pp" action="ServletPrestamo" method="post">
            <h1>Prestamo Personal</h1>
            <input id="ppState" type="hidden" value="${ppState}">
            <input type="text" name="idp" placeholder="DNI">
            <label for="tprestamop">Elija un tipo de prestamo:</label>
            <select id="tprestamop" name="tprestamop">
                <option value="pp">Prestamo Personal</option>
            </select><br>
            <label for="fechap">Fecha de inicio del prestamo:</label>
            <input type="text" name="fechap"><br>
            <label for="amount">Elija la cantidad que requiere:</label>
            <select id="amount" name="amountp">
                <option value=$>4000</option>
                <option value=$>5000</option>
                <option value=$>6000</option>
                <option value=$>7000</option>
                <option value=$>8000</option>
                <option value=$>9000</option>
                <option value=$>10000</option>
            </select>
            <div class="rangev">
                <span id="rangeValuep">0</span>
                <label for="range">Seleccione las cuotas en las que desea pagar:</label>
                <input type="range" class="range" name="duesp" value="0" min="2" max="24" onmousemove="rangeSlider(this.value)" onchange="rangeSlider(this.value)">
            </div>
            <br>
            <label for="pagoxmesp">Pago por mes:</label>
            <input type="text" name="pagoxmesp"><br>
            <label for="card_numberp">Número de tarjeta:</label>
            <input type="text" name="card_numberp"><br>
            <label for="card_datep">Fecha de creación de la tarjeta:</label>
            <input type="text" name="card_datep"><br>
            <label for="card_safecodep">Codigo de la tarjeta:</label>
            <input type="text" name="card_safecodep"><br>
            <input type="submit" class="solpp" value="Solicitar Prestamo">
        </form>
    </div>
        
          
        <div class="prestamo-estudiante" id="prestamo-estudiante">
            <div id="cerrarPE"><a href="javascript:cerrarPE()"><img src="img/close1.png"></a></div>
            <form class ="pe" action="ServletPrestamo" method="post">
            <h1>Prestamo Personal</h1>
            <input id="ppState" type="hidden" value="${ppState}">
            <input type="text" name="id" placeholder="DNI">
            <label for="tprestamop">Elija un tipo de prestamo:</label>
            <select id="tprestamop">
                <option value="pp">Prestamo Estudiantil</option>
            </select><br>
            <label for="fecha">Fecha de inicio del prestamo:</label>
            <input type="date" name="fecha"><br>
            <label for="amount">Elija la cantidad que requiere:</label>
            <select id="amount">
                <option value=$>4000</option>
                <option value=$>5000</option>
                <option value=$>6000</option>
                <option value=$>7000</option>
                <option value=$>8000</option>
                <option value=$>9000</option>
                <option value=$>10000</option>
            </select>
            <div class="rangev">
                <span id="rangeValuee">0</span>
                <label for="range">Seleccione las cuotas en las que desea pagar:</label>
                <input type="range" class="range" name="" value="0" min="2" max="24" onmousemove="rangeSlider1(this.value)" onchange="rangeSlider1(this.value)">
            </div>
            <input type="submit" class="solpp" value="Solicitar Prestamo"><br>
            <label for="pagoxmes">Pago por mes:</label>
            <input type="text" name="pagoxmes"><br>
            <label for="card_number">Número de tarjeta:</label>
            <input type="text" name="card_number"><br>
            <label for="date">Fecha de creación de la tarjeta:</label>
            <input type="date" name="date"><br>
            <label for="text">Codigo de la tarjeta:</label>
            <input type="text" name="card_safecode">
        </form>
        </div>
        
        
            
            
    </body>
    
    <script>
        function abrirPP(){
            document.getElementById("prestamo-personal").style.display="block";
            cerrarPE();
        }
        function cerrarPP(){
            document.getElementById("prestamo-personal").style.display="none";
        }
        function abrirPE(){
            document.getElementById("prestamo-estudiante").style.display="block";
            cerrarPP();
        }
        function cerrarPE(){
            document.getElementById("prestamo-estudiante").style.display="none";
        }
    </script>
    
    <script type="text/javascript">
        function rangeSlider(value){
            document.getElementById('rangeValuep').innerHTML = value;
        }
        function rangeSlider1(value){
            document.getElementById('rangeValuee').innerHTML = value;
        }
    </script>
</html>
    

