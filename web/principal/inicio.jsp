<%-- 
    Document   : inicio
    Created on : 9/10/2016, 03:57:49 PM
    Author     : tuto2
--%>

<%@page import="dto.ComentarioDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="facade.Fachada"%>
<%request.setCharacterEncoding("UTF-8");%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html>
    <head>

        <!--Import Google Icon Font-->
        <link href="http://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
        <!--Import materialize.css-->
        <link type="text/css" rel="stylesheet" href="../materialize/css/materialize.min.css"  media="screen,projection"/>

        <!--Let browser know website is optimized for mobile-->
        <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
        <script type="text/javascript" src="../materialize/js/jquery-3.1.0.js"></script>
        <script type="text/javascript" src="../materialize/js/materialize.min.js"></script>
        <script type="text/javascript" src="js/login.js"></script>

        <script language="javascript">
            function openWindow() {
                newWindow = window.open("formRegistro.jsp", null, "height=500,width=800,status=yes,toolbar=no,menubar=no,location=no");
            }
            $(document).ready(function () {
                $('select').material_select();
                $(".button-collapse").sideNav();
                $(document).on('change', function (e) {
                    $('select').material_select();
                });
                $('select').on('contentChanged', function () {
                    // re-initialize (update)
                    $(this).material_select();
                });
                $('input#input_text, textarea#descrip').characterCounter();
                $(document).ready(function () {
                    $('.slider').slider({full_width: true});
                });
                $('.modal-trigger').leanModal();
            });
        </script> 
        <script>
            $(function () {
                $("#from").datepicker({
                    defaultDate: "+1w",
                    changeMonth: true,
                    numberOfMonths: 1,
                    onClose: function (selectedDate) {
                        $("#to").datepicker("option", "minDate", selectedDate);
                    }
                });
                $("#to").datepicker({
                    defaultDate: "+1w",
                    changeMonth: true,
                    numberOfMonths: 1,
                    onClose: function (selectedDate) {
                        $("#from").datepicker("option", "maxDate", selectedDate);
                    }
                });
            });
        </script>
        <title>SIHYEST</title>
    </head>
    <%
        Fachada fachada = new Fachada();
        String mision = fachada.mostrarMision();
        String vision = fachada.mostrarVision();
        String historia = fachada.mostrarHistoria();
    %>
    <body>
        <div class="navbar-fixed">
            <nav>

                <div class="nav-wrapper grey lighten-2 z-depth-5 " >
                    <a href="#" class="brand-logo black-text"><img src="../images/logo_inicio2.png"></a>
                    <div class="container">
                        <ul id="nav-mobile" class="left hide-on-med-and-down">

                            <li><a href="#habitaciones"class="black-text">Habitaciones</a></li>

                            <li><a href="#"class="black-text">Servicios</a></li>
                        </ul>
                        <ul id="nav-mobile" class="right ">

                            <li><a href="../login/login.jsp"class="black-text">Iniciar sesion</a></li>

                            
                        </ul>
                    </div>
                </div>
            </nav>
        </div>
    </body>


    -    <div class="slider">
        -        <ul class="slides">
            -            <li>
                -                <img src="../images/img0.jpg"> <!-- random image -->
                -                <div class="caption center-align">
                    -                    <h3>Bienvenidos</h3>
                    -                    <h5 class="light grey-text text-lighten-3"></h5>
                    -                </div>
                -            </li>
            -            <li>
                -                <img src="../images/img1.jpg"> <!-- random image -->
                -                <div class="caption left-align">
                    -                    <h3 ></h3>
                    -                    <h5 class="light grey-text text-lighten-3"></h5>
                    -                </div>
                -            </li>
            -            <li>
                -                <img src="../images/img2.jpg"> <!-- random image -->
                -                <div class="caption right-align">
                    -                    <h3></h3>
                    -                    <h5 class="light grey-text text-lighten-3"></h5>
                    -                </div>
                -            </li>
            -            <li>
                -                <img src="../images/img3.jpg"> <!-- random image -->
                -                <div class="caption center-align">
                    -                    <h3></h3>
                    -                    <h5 class="light grey-text text-lighten-3"></h5>
                    -                </div>
                -            </li>
            -        </ul>
        -    </div>

    <div class="container">
        <div class="card-panel  indigo darken-4">
            <div class="row">
                <div  class="col s12">
                    <center><a href="#!" onclick="openWindow();" class="btn grey waves-effect waves-green">¡Haz tu reserva ya!  </a></center>
                </div>
            </div>
        </div>

        <div id="habitaciones">
            <center><HR align="CENTER" size="2" width="800" color="Grey" noshade><h4>
                    <span class="grey-text text-darken-3">Nuestras habitaciones</span></h4></center>



            <div class="row">
                <div class="col s4">
                    <div class="card">
                        <div class="card-image">
                            <img class="materialboxed" src="../images/habitacion_sencilla.jpg">
                            <span class="card-title "></span>
                        </div>

                        <div class="card-action">
                            <a href="#modal1" class="modal-trigger indigo-text text-darken-4">Habitacion sencilla</a>
                        </div>
                    </div>
                </div>
                <div class="col s4">
                    <div class="card">
                        <div class="card-image">
                            <img class="materialboxed" src="../images/habitacion_doble.jpg">
                            <span class="card-title"></span>
                        </div>

                        <div class="card-action">
                            <a href="#modal2" class="modal-trigger indigo-text text-darken-4">Habitacion doble</a>
                        </div>
                    </div>
                </div>
                <div class="col s4">
                    <div class="card">
                        <div class="card-image">
                            <img class="materialboxed" src="../images/habitacion_suite.jpg">
                            <span class="card-title"></span>
                        </div>

                        <div class="card-action ">
                            <a href="#modal3" class="modal-trigger indigo-text text-darken-4">Habitacion suite</a>
                        </div>
                    </div>
                </div>
            </div>

            <div id="modal1" class="modal">
                <div class="modal-content">
                    <h4>Habitacion sencilla</h4>
                    <p>Esta es la descripcion de la habitacion sencilla</p>
                </div>
                <div class="modal-footer">
                    <a href="#!" class=" modal-action modal-close waves-effect waves-green btn-flat">Cerrar</a>
                </div>
            </div>

            <div id="modal2" class="modal">
                <div class="modal-content">
                    <h4>Habitacion doble</h4>
                    <p>Esta es la descripcion de la habitacion doble</p>
                </div>
                <div class="modal-footer">
                    <a href="#!" class=" modal-action modal-close waves-effect waves-green btn-flat">Cerrar</a>
                </div>
            </div>

            <div id="modal3" class="modal">
                <div class="modal-content">
                    <h4>Habitacion suite</h4>
                    <p>Esta es la descripcion de la habitacion suite</p>
                </div>
                <div class="modal-footer">
                    <a href="#!" class=" modal-action modal-close waves-effect waves-green btn-flat">Cerrar</a>
                </div>
            </div>
        </div>


        <center><HR align="CENTER" size="2" width="800" color="Grey" noshade><h4>
                <span class="grey-text text-darken-3">Nosotros</span></h4></center>

        <div class="row">
            <div class="col s4">
                <div class="card-panel indigo">
                    <img src="../images/mision.png" alt="" class="circle responsive-img">
                    <span class="white-text"><%= mision%>
                    </span>
                </div>
            </div>
            <div class="col s4">
                <div class="card-panel indigo">
                    <img src="../images/vision.png" alt="" class="circle responsive-img">
                    <span class="white-text"><%= vision%>
                    </span>
                </div>
            </div>
            <div class="col s4">
                <div class="card-panel indigo">
                    <img src="../images/historia.png" alt="" class="responsive-img">
                    <span class="white-text"><%= historia%>
                    </span>
                </div>
            </div>
        </div>


        <%
            ArrayList<ComentarioDTO> comentarios = fachada.obtenerComentarios();
        %> 

        <center><HR align="CENTER" size="2" width="800" color="Grey" noshade><h4>
                <span class="grey-text text-darken-3">Comentarios</span></h4></center>

        <table>
            <thead>
                <tr>
                    <th data-field="nick">Usuario</th>
                    <th data-field="comment">Comentario</th>
                    <th data-field="date">Fecha</th>
                </tr>
            </thead>

            <tbody>
                <%for (ComentarioDTO dto : comentarios) {
                        String nick = dto.getNick();
                        String comment = dto.getComentario();
                        String date = dto.getFecha();
                %>
                <tr>
                    <td><%=nick%></td>
                    <td><%=comment%></td>
                    <td><%=date%></td>
                </tr>
                <% }%>
            </tbody>
        </table>

        <center><HR align="CENTER" size="2" width="800" color="Grey" noshade><h4>
                <span class="grey-text text-darken-3">Registra un Comentario</span></h4></center>

        <div class="row">
            <form name="registrarForm" action="procesar/registrarComentario.jsp" method="POST" class="col s12">
                <div class="row">
                    <div class="input-field col s12">
                        <input requred id="txtNick" name="txtNick" class="validate" placeholder="Usuario">
                    </div>
                </div>
                <div class="row">
                    <div class="input-field col s12">
                        <input required id="txtComentario" name="txtComentario" class="validate" placeholder="Comentario">
                    </div>
                </div>
                <div class="row">
                    <div class="input field col s12">
                        <a class="waves-effect waves-light btn"><input type="submit"></a>
                    </div>
                </div>
            </form>
        </div>
    </div>
    <footer class="page-footer grey darken-3">
        <div class="container">
            <div class="row">
                <div class="col l4 s12">
                    <h5 class="white-text">Hotel</h5>
                    <p class="grey-text text-lighten-4">1. El hotel cuenta con cuartos</p>
                    <p class="grey-text text-lighten-4">2. Excelente ubicacion</p>
                    <p class="grey-text text-lighten-4">3. Elmejor espacio para su descanso</p>
                </div>
                <div class="col l4 offset-l2 s12">
                    <h5 class="white-text">Direccion</h5>
                    <ul>
                        <li><a class="grey-text text-lighten-3" href="#!">Calle falsa #123 barrio inexistente</a></li>

                    </ul>
                    <h5 class="white-text">Contactenos</h5>
                    <ul>
                        <li><a class="grey-text text-lighten-3" href="#!">Tel:555-5555 Cel:312-213-3121</a></li>

                    </ul>
                </div>
            </div>
        </div>
        <div class="footer-copyright grey darken-4">
            <div class="container">
                © 2016 Copyright Text
                <a class="grey-text text-lighten-4 right" href="#!">UFPS</a>
            </div>
        </div>
    </footer>
</html>
