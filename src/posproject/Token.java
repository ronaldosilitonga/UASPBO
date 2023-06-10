/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package posproject;

/**
 *
 * @author NALDO
 */
public class Token extends Barang {
    
    public String tokenCode;
    public float nominal;
    public String noMeteran;

    public Token(String kode, String nama, float harga, float nominal, String noMeteran, String tokenCode) {
        this.kode = kode;
        this.nama = nama;
        this.harga = harga;
        this.noMeteran = noMeteran;
        this.nominal = nominal;
        this.tokenCode = tokenCode;
    }
}
