/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import dto.RecursoDTO;
import interfaces.IRecursoDAO;
import java.sql.Date;
import java.util.ArrayList;

/**
 *
 * @author Javier
 */
public class RecursoDAO implements IRecursoDAO{

    @Override
    public ArrayList<RecursoDTO> obtenerHabitacionesDisponibles(Date fecha_salida, Date fecha_entrada) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    
    
}
