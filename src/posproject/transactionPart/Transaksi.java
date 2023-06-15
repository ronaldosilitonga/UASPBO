/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package posproject.transactionPart;

import posproject.dbConnection.DBConnector;
import java.sql.*;
import java.util.Random;
import javax.swing.JOptionPane;

/**
 *
 * @author NALDO
 */
public class Transaksi{
    
    public int id_transaksi;
    public float total_harga;
    public float total_dibayar;
    public float kembalian;
    public String metode_pembayaran;
    
    public void simpanData(int _transactionID, float total_harga, float _totalBayar, float _kembalian, String metode_pembayaran){
        
        try{
            
            String sql = "INSERT INTO transaksi (id_transaksi,total_harga,total_dibayar,kembalian, metode_pembayaran) VALUES (?,?,?,?,?);";
            PreparedStatement stmt = DBConnector.connection.prepareStatement(sql);
            
            stmt.setInt(1, id_transaksi);
            stmt.setFloat(2, total_harga);
            stmt.setFloat(3,total_dibayar);
            stmt.setFloat(4, kembalian);
            stmt.setString(5,metode_pembayaran);
            
            int rowInserted = stmt.executeUpdate();
            
            JOptionPane.showMessageDialog(null, "Data berhasil disimpan");
            stmt.close();
            
        }catch(Exception ex){
            System.out.println(ex);
        }
    }
    
    public int generateRandomTransactionID(){
        Random rand = new Random();
        int randomNum = rand.nextInt(900000) + 100000;
        return randomNum;
    }
    
    public void setTotalBayar(float input){
        total_dibayar = input;
    }
    
    public float getTotalBayar(){
        return total_dibayar;
    }
    
    public void setKembalian(float input){
        kembalian = input;
    }
    
    public float getKembalian(){
        return kembalian;
    }

}


