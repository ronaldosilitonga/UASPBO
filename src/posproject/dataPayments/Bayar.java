/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Interface.java to edit this template
 */
package posproject.dataPayments;

import java.time.LocalDateTime;

/**
 *
 * @author NALDO
 */
public interface Bayar {
    
    public int getIDPembayaran();
    public void setIDPembayaran(int IDPembayaran);
    
    public void setPaymentMethod(String metode_Pembayaran);
    public String getPaymentMethod();
    
    public float getTotalHarga();
    public void setTotalHarga(float totalHarga);
    
    public LocalDateTime getWaktuPembayaran();
    public void setWaktuPembayaran(LocalDateTime waktuPembayaran);
    
}
