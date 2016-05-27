/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package facade;

import dto.ClienteDTO;
import dto.HabitacionDTO;
import dto.HospedajeDTO;
import dto.ReservaDTO;
import java.sql.Date;
import java.util.ArrayList;
import negocio.cliente.ControlCliente;
import negocio.hospedajes.ControlHospedaje;
import negocio.reserva.ControlReserva;

/**
 *
 * @author Javier
 */
public class Fachada {
    
    public boolean registrarHospedaje(String id_habitacion,String cantPersonas, String id_cliente, String fecha_salida) throws Exception{
        ControlHospedaje hospedaje = new ControlHospedaje();
        return hospedaje.registrarHospedaje(id_habitacion, cantPersonas, id_cliente, fecha_salida);
    }
    
    public ArrayList<String> obtenerHabitacionesDisponibles(int cantPersonas, String fecha_salida) throws Exception{
        ControlHospedaje hospedaje = new ControlHospedaje();
        return hospedaje.obtenerHabitacionesDisponibles(cantPersonas, fecha_salida);
    }
    
    public ArrayList<HospedajeDTO> obtenerHospedajes() throws Exception{
        ControlHospedaje hospedaje= new ControlHospedaje();
        return hospedaje.obtenerHospedajes();
    }
    
    public ArrayList<HospedajeDTO> obtenerHospedajesActivos()throws Exception{
        ControlHospedaje hospedaje =new ControlHospedaje();
        return hospedaje.obtenerHospedajesActivos();
    }
    
    public HospedajeDTO consultarHospedaje(String id_cliente, String f_salida, String f_entrada) throws Exception{
        ControlHospedaje hospedaje= new ControlHospedaje();
        return hospedaje.consultarHospedaje(id_cliente, f_salida, f_entrada);
    }
    
    public HospedajeDTO consultarHospedajeActivo(String id_cliente, String id_habitacion) throws Exception{
        ControlHospedaje hospedaje = new ControlHospedaje();
        return hospedaje.consultarHospedajeActivo(id_cliente, id_habitacion);
    }
    
    public boolean modificarHospedaje(String id_habitacion,String cantPersonas, String id_cliente, String fecha_salida, String habAnt) throws Exception{
        ControlHospedaje hospedaje= new ControlHospedaje();
        return hospedaje.modificarHospedaje(id_habitacion, cantPersonas, id_cliente, fecha_salida, habAnt);
    }
    
    public HabitacionDTO consultarHabitacion(String id) throws Exception{
        ControlHospedaje hospedaje= new ControlHospedaje();
        return hospedaje.consultarHabitacion(id);
    }
    
    public boolean validarCliente(String id) throws Exception{
        ControlCliente cliente = new ControlCliente();
        return cliente.validarCliente(id);
    }
    public boolean registrarCliente(String id_cliente, String nombre_cliente, String apellido, String telefono, String email, String procedencia) throws Exception{
        ControlCliente cliente = new ControlCliente();
        return cliente.registrarCliente(id_cliente, nombre_cliente, apellido, telefono, email, procedencia);
    }
    
    public ArrayList<ClienteDTO> obtenerClientes() throws Exception{
        ControlCliente cliente = new ControlCliente();
        return cliente.obtenerClientes();
    }
    
    public ClienteDTO consultarCliente(String id)throws Exception{
        ControlCliente cliente = new ControlCliente();
        return cliente.consultarCliente(id);
    }
    
    public ArrayList<String> consultarHabitacionesDispReserva(int cant, String fecha_salida, String fecha_entrada) throws Exception{
        ControlReserva reserva = new ControlReserva();
        return reserva.consultarHabitacionesDisponiblesReserva(cant, fecha_salida, fecha_entrada);
    }
    
    public boolean registrarReserva(String id_habitacion, String id_cliente, int cantidad, String fecha_inicio, String fecha_salida, String nombre_cliente, String telefono, String email, String apellido, String procedencia) throws Exception{
        ControlReserva reserva = new ControlReserva();
        return reserva.registrarReserva(new ReservaDTO(id_habitacion, id_cliente, cantidad, fecha_inicio, fecha_salida, nombre_cliente, telefono, email, apellido, procedencia));
    }
}
