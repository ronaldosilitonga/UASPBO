/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package posproject.transactionPart;

import java.sql.PreparedStatement;
import java.util.ArrayList;
import posproject.dbConnection.DBConnector;

/**
 *
 * @author NALDO
 */
public class DetailTransaksi {
    
        
    public int id_transaksi;
    
    public ArrayList<Integer> detailIdBarang = new ArrayList();
    public ArrayList<Integer> detailQTYBarang = new ArrayList();
    public ArrayList<Float> detailHargaBarang = new ArrayList();
    
    public void simpanDetailTransaksi(){
        try{
            
            String sql = "INSERT INTO detail_transaksi (id_barang, id_transaksi, qty, harga) VALUES (?,?,?,?);";
            PreparedStatement stmt = DBConnector.connection.prepareStatement(sql);
            
            for( int i = 0; i<detailIdBarang.size(); i++){
                
                
                stmt.setFloat(1, detailIdBarang.get(i));
                stmt.setInt(2, id_transaksi);
                stmt.setFloat(3,detailQTYBarang.get(i));
                stmt.setFloat(4, detailHargaBarang.get(i));
            
                int rowInserted = stmt.executeUpdate();
            }
            
            stmt.close();
            
        }catch(Exception ex){
            System.out.println(ex);
        }
    }
    
    public void setDetailIdTransaksi(int input){
        id_transaksi = input;
    }
    
    public int getDetailIdTransaksi(){
        return id_transaksi;
    }
}
