<%-- 
    Document   : procesarConsultaA
    Created on : 23-may-2016, 14:02:34
    Author     : Javier
--%>

<%@page import="dto.HospedajeDTO"%>
<%@page import="facade.Fachada"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String id_cliente = request.getParameter("id_cliente");
    String habitacion = request.getParameter("habitacion");
    System.out.println(habitacion);
    Fachada fachada = new Fachada();
    HospedajeDTO dto = fachada.consultarHospedajeActivo(id_cliente, habitacion);
    if (dto != null) {
%>  <table id="tablaAdmin" class="table table-bordered table-striped">
    <thead style="background-color: #2c3b41; color: #fff">
        <tr>
            <th> Id.</th>
            <th> Habitación </th>
            <th> Cliente a cargo </th>
            <th> Fecha entrada </th>
            <th> Fecha salida </th>
            <th> Acción </th>
            <th> Acción </th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td> <%= dto.getId()%></td>
            <td> <%= dto.getId_habitacion()%></td>
            <td> <%= dto.getId_cliente()%> </td>
            <td> <%= dto.getFecha_entrada()%> </td>
            <td> <%= dto.getFecha_salida()%></td>
            <td> <a class="btn btn-info" href="modificarHospedaje.jsp?id_habitacion=<%=dto.getId_habitacion()%>&id_cliente=<%=dto.getId_cliente()%>">Modificar </a></td>
            <td> <a class="btn btn-danger" href="procesar/finalizarHospedaje.jsp?id=<%=dto.getId()%>&id_habitacion=<%=dto.getId_habitacion()%>&id_cliente=<%=dto.getId_cliente()%>&fecha_s=<%= dto.getFecha_salida()%>&fecha_e=<%= dto.getFecha_entrada()%>">Finalizar </a></td>
        </tr>

    </tbody>
</table> 
<% } else {%>
<table id="tablaAdmin" class="table table-bordered table-striped">
    <thead style="background-color: #2c3b41; color: #fff">
        <tr>
            <th> Habitación </th>
            <th> Cliente a cargo </th>
            <th> Fecha entrada </th>
            <th> Fecha salida </th>
            <th> Acción </th>
            <th> Acción </th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td> </td>
            <td> </td>
            <td>No se hallaron resultados </td>
            <td> </td>
            <td> </td>
            <td> </td>
        </tr>

    </tbody>
</table> 
<% }%>