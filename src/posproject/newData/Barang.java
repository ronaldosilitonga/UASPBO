/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package posproject.newData;

import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import posproject.dbConnection.DBConnector;
import java.sql.SQLException;

/**
 *
 * @author NALDO
 */
public class Barang {
    
    public String kode;
    public String nama;
    public float harga;
    
    public static ArrayList<Barang> daftarBarang;
    public static void loadBarangFromDB()
    {
        
        daftarBarang = new ArrayList<>();
        Barang barang;
        try {
            Statement stmt = DBConnector.connection.createStatement();
            
            String sql = "SELECT * FROM barang";        
            
            ResultSet rs = stmt.executeQuery(sql);
            
            while (rs.next())
            {
                barang = new Barang();
                barang.kode = Integer.toString(rs.getInt("id"));
                barang.nama = rs.getString("nama");
                barang.harga = rs.getFloat("harga");
                
                daftarBarang.add(barang);
            }
        } catch (SQLException ex) {
            System.out.println(ex);
        }
        
        
    }
    
    /**
     * @return the kode
     */
    public String getKode() {
        return kode;
    }

    /**
     * @param kode the kode to set
     */
    public void setKode(String kode) {
        this.kode = kode;
    }

    /**
     * @return the nama
     */
    public String getNama() {
        return nama;
    }

    /**
     * @param nama the nama to set
     */
    public void setNama(String nama) {
        this.nama = nama;
    }

    /**
     * @return the harga
     */
    public float getHarga() {
        return harga;
    }

    /**
     * @param harga the harga to set
     */
    public void setHarga(float harga) {
        this.harga = harga;
    }
}
