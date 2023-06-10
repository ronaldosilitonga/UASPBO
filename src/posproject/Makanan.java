/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package posproject;

import java.util.Date;
/**
 *
 * @author NALDO
 */
public class Makanan extends Barang {
    public Date tanggal_kadaluwarsa;
    
    public Makanan(String kode, String nama, float harga, Date tanggal_kadaluwarsa) {
        this.kode = kode;
        this.nama = nama;
        this.harga = harga;
        this.tanggal_kadaluwarsa = tanggal_kadaluwarsa;
    }
}
