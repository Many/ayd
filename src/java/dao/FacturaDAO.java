/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import dto.FacturaDTO;
import interfaces.IFacturaDAO;
import java.sql.Date;
import java.util.ArrayList;

/**
 *
 * @author Javier
 */
public class FacturaDAO implements IFacturaDAO{

    @Override
    public FacturaDTO generarFacturaHospedaje(String id_hospedaje) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void generarPdf(FacturaDTO dto) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public FacturaDTO generarFacturaRecurso(String id_recurso, String id_cliente, Date fecha_inicio) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public boolean registrarFactura(FacturaDTO dto) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public FacturaDTO consultarFacturaHospedaje(String id_hospedaje, String fecha, String id_cliente) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public FacturaDTO consultarFacturaRecurso(String id_recurso, String fecha, String id_cliente) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public ArrayList<FacturaDTO> obtenerFacturas() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    
}
