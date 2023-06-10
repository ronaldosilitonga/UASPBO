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
public class Token extends Barang {                        
    
    public String noMeteran;
    public String kode_token;                    
    public float nominal;
    public int id_transaksi;
    public int id_barang;
                                                                            
    public void insertToken(Token token) {
        try  {
            String sql = "INSERT INTO token ( no_meteran, kode_token, nominal, harga, id_barang, id_transaksi) VALUES (?, ?, ?, ?, ?, ?)";
            PreparedStatement stmt = DBConnector.connection.prepareStatement(sql);
                            
            stmt.setString(1, token.getNoMeteran());
            stmt.setString(2, token.getKodeToken());
            stmt.setFloat(3, token.getHarga());
            stmt.setFloat(4, token.getNominal());
            stmt.setInt(5, token.getId_barang());
            stmt.setInt(6, token.getId_transaksi());
                                    
            stmt.executeUpdate();
        } 
        catch (SQLException ex) {
            System.out.println(ex);
        }
    }
                                                                                                                                                                                    
    public String getKodeToken() {
        return kode_token;
    }

    public void setKodeToken(String kode_token) {
        this.kode_token = kode_token;
    }

    public float getNominal() {
        return nominal;
    }

    public void setNominal(float nominal) {
        this.nominal = nominal;
    }

    public String getNoMeteran() {
        return noMeteran;
    }

    public void setNoMeteran(String noMeteran) {
        this.noMeteran = noMeteran;
    }

    public int getId_transaksi() {
        return id_transaksi;
    }

    public void setId_transaksi(int id_transaksi) {
        this.id_transaksi = id_transaksi;
    }
                
    public int getId_barang(){
        return id_barang;
    }
            
    public void setId_barang(int id_barang) {
        this.id_barang = id_barang;
    }
                
}
