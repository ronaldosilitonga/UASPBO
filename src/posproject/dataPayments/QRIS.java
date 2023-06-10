/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package posproject.dataPayments;

import java.sql.PreparedStatement;
import java.time.LocalDateTime;
import java.util.Random;
import posproject.transactionPart.Transaksi;
import posproject.dbConnection.DBConnector;

/**
 *
 * @author NALDO
 */
public class QRIS extends Transaksi implements Bayar {
    
    private float totalHarga;
    private LocalDateTime waktuPembayaran;
    private int IDPembayaran;
    private String paymentMethod;

    private String qris_content;
    private LocalDateTime requestDate;
    private String invoiceID;
    
    private static String qris_nmid = "ID1020021181745";
    
    public int generateRandomTransactionID(){
        Random rand = new Random();
        int randomNum = rand.nextInt(900000) + 100000;
        return randomNum;
    }
    
    public void insertQRISDetails()
    {
        try{
            
            String sql = "INSERT INTO qris_details (qris_content, qris_invoiceid, qris_nmid) VALUES (?, ?, ?)";
            
            PreparedStatement stmt = DBConnector.connection.prepareStatement(sql);
            
            stmt.setString(1, qris_content);
            stmt.setInt(2, IDPembayaran);
            stmt.setString(3,qris_nmid);
            
            int rowInserted = stmt.executeUpdate();
            if(rowInserted > 0){
                System.out.println("Proses Berhasil");
            }
            
            stmt.close();
            
        }catch(Exception ex){
            System.out.println(ex);
        }
    }
    
    public String getNMID(){
        return qris_nmid;
    }
    
    
    public String getContent(){
        return qris_content;
    }
    
    public void setContent(String _input){
        qris_content = _input;
    }
    
    public LocalDateTime getRequestDate(){
        return requestDate;
    }
    
    public void setRequestDate(LocalDateTime _input){
        requestDate = _input;
    }
    
    public String getInvoiceID(){
        return invoiceID;
    }
    
    public void setInvoiceID(String _input){
        invoiceID = _input;
    }
    
    @Override
    public float getTotalHarga() {
        return totalHarga;
    }

    @Override

    public void setTotalHarga(float totalHarga) {
        this.totalHarga = totalHarga;
    }

    @Override
    public LocalDateTime getWaktuPembayaran() {
        return waktuPembayaran;
    }

    @Override
    public void setWaktuPembayaran(LocalDateTime waktuPembayaran) {
        this.waktuPembayaran = waktuPembayaran;
    }

    @Override
    public int getIDPembayaran() {
        return IDPembayaran;
    }

    @Override
    public void setIDPembayaran(int _IDPembayaran) {
        this.IDPembayaran = _IDPembayaran;
    }

    @Override
    public void setPaymentMethod(String _paymentMethod) {
        paymentMethod = _paymentMethod;
    }

    @Override
    public String getPaymentMethod() {
        return paymentMethod;
    }
    
}
