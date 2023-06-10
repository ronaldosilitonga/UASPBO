/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package posproject.newData;

import java.sql.PreparedStatement;
import java.sql.SQLException;
import posproject.dbConnection.DBConnector;

/**
 *
 * @author NALDO
 */
public class Pulsa extends Barang {
    
    private String nominal;
    private String operator;
    private String noTelp;
    private int id_barang;
    private int id_transaksi;
    
    public void insertPulsa(posproject.newData.Pulsa pulsa) {
        try  {
            String sql = "INSERT INTO pulsa (operator, no_telp, harga, nominal, id_barang, id_transaksi) VALUES (?, ?, ?, ?, ?, ?)";
            PreparedStatement stmt = DBConnector.connection.prepareStatement(sql);

            stmt.setString(1, pulsa.getOperator());
            stmt.setString(2, pulsa.getNoTelp());
            stmt.setFloat(3, pulsa.getHarga());
            stmt.setString(4, pulsa.getNominal());
            stmt.setInt(5, pulsa.getId_barang());
            stmt.setInt(6, pulsa.getId_transaksi());
            stmt.executeUpdate();
        } 
        catch (SQLException ex) {
            System.out.println(ex);
        }
    }


    /**
     * @return the operator
     */
    public String getOperator() {
        return operator;
    }

    /**
     * @param operator the operator to set
     */
    public void setOperator(String operator) {
        this.operator = operator;
    }
    
    /**
     * @return the nominal
     */
    public String getNominal() {
        return nominal;
    }

    /**
     * @param nominal the nominal to set
     */
    public void setNominal(String nominal) {
        this.nominal = nominal;
    }

    /**
     * @return the noTelp
     */
    public String getNoTelp() {
        return noTelp;
    }

    /**
     * @param noTelp the noTelp to set
     */
    public void setNoTelp(String noTelp) {
        this.noTelp = noTelp;
    }

    /**
     * @return the id_barang
     */
    public int getId_barang() {
        return id_barang;
    }

    /**
     * @param id_barang the id_barang to set
     */
    public void setId_barang(int id_barang) {
        this.id_barang = id_barang;
    }

    /**
     * @return the id_transaksi
     */
    public int getId_transaksi() {
        return id_transaksi;
    }

    /**
     * @param id_transaksi the id_transaksi to set
     */
    public void setId_transaksi(int id_transaksi) {
        this.id_transaksi = id_transaksi;
    }
}
