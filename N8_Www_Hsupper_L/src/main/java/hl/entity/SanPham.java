package hl.entity;

import java.io.Serializable;
import java.sql.Date;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import org.hibernate.annotations.Immutable;

@Entity
@Table(name = "sanpham")
public class SanPham implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	@Id
	private int id;
	private String tenSP;
	private Date ngayNhap;
	private int soLuongTon;
	private int soLuongBan;
	private String moTaSP;
	private int idNSX;
	private int idLoai;
	private double giaBan;
	private double giaGoc;
	private String chatLieu;
	private Date ngaySX;
	private String trangThai;
	private String urlAnhSP;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getTenSP() {
		return tenSP;
	}
	public void setTenSP(String tenSP) {
		this.tenSP = tenSP;
	}
	public Date getNgayNhap() {
		return ngayNhap;
	}
	public void setNgayNhap(Date ngayNhap) {
		this.ngayNhap = ngayNhap;
	}
	public int getSoLuongTon() {
		return soLuongTon;
	}
	public void setSoLuongTon(int soLuongTon) {
		this.soLuongTon = soLuongTon;
	}
	public int getSoLuongBan() {
		return soLuongBan;
	}
	public void setSoLuongBan(int soLuongBan) {
		this.soLuongBan = soLuongBan;
	}
	public String getMoTaSP() {
		return moTaSP;
	}
	public void setMoTaSP(String moTaSP) {
		this.moTaSP = moTaSP;
	}
	public double getGiaBan() {
		return giaBan;
	}
	public void setGiaBan(double giaBan) {
		this.giaBan = giaBan;
	}
	public double getGiaGoc() {
		return giaGoc;
	}
	public void setGiaGoc(double giaGoc) {
		this.giaGoc = giaGoc;
	}
	public String getChatLieu() {
		return chatLieu;
	}
	public void setChatLieu(String chatLieu) {
		this.chatLieu = chatLieu;
	}
	public Date getNgaySX() {
		return ngaySX;
	}
	public void setNgaySX(Date ngaySX) {
		this.ngaySX = ngaySX;
	}
	public String getTrangThai() {
		return trangThai;
	}
	public void setTrangThai(String trangThai) {
		this.trangThai = trangThai;
	}
	public int getIdNSX() {
		return idNSX;
	}
	public void setIdNSX(int idNSX) {
		this.idNSX = idNSX;
	}
	public int getIdLoai() {
		return idLoai;
	}
	public void setIdLoai(int idLoai) {
		this.idLoai = idLoai;
	}
	
	public String getUrlAnhSP() {
		return urlAnhSP;
	}
	public void setUrlAnhSP(String urlAnhSP) {
		this.urlAnhSP = urlAnhSP;
	}
	
	public SanPham(int id, String tenSP, Date ngayNhap, int soLuongTon, int soLuongBan, String moTaSP, int idNSX,
			int idLoai, double giaBan, double giaGoc, String chatLieu, Date ngaySX, String trangThai, String urlAnhSP) {
		super();
		this.id = id;
		this.tenSP = tenSP;
		this.ngayNhap = ngayNhap;
		this.soLuongTon = soLuongTon;
		this.soLuongBan = soLuongBan;
		this.moTaSP = moTaSP;
		this.idNSX = idNSX;
		this.idLoai = idLoai;
		this.giaBan = giaBan;
		this.giaGoc = giaGoc;
		this.chatLieu = chatLieu;
		this.ngaySX = ngaySX;
		this.trangThai = trangThai;
		this.urlAnhSP = urlAnhSP;
	}
	
	public SanPham(String tenSP, Date ngayNhap, int soLuongTon, int soLuongBan, String moTaSP, int idNSX, int idLoai,
			double giaBan, double giaGoc, String chatLieu, Date ngaySX, String trangThai, String urlAnhSP) {
		super();
		this.tenSP = tenSP;
		this.ngayNhap = ngayNhap;
		this.soLuongTon = soLuongTon;
		this.soLuongBan = soLuongBan;
		this.moTaSP = moTaSP;
		this.idNSX = idNSX;
		this.idLoai = idLoai;
		this.giaBan = giaBan;
		this.giaGoc = giaGoc;
		this.chatLieu = chatLieu;
		this.ngaySX = ngaySX;
		this.trangThai = trangThai;
		this.urlAnhSP = urlAnhSP;
	}
	public SanPham() {
		super();
	}
	@Override
	public String toString() {
		return "SanPham [id=" + id + ", tenSP=" + tenSP + ", ngayNhap=" + ngayNhap + ", soLuongTon=" + soLuongTon
				+ ", soLuongBan=" + soLuongBan + ", moTaSP=" + moTaSP + ", idNSX=" + idNSX + ", idLoai=" + idLoai
				+ ", giaBan=" + giaBan + ", giaGoc=" + giaGoc + ", chatLieu=" + chatLieu + ", ngaySX=" + ngaySX
				+ ", trangThai=" + trangThai + ", urlAnhSP=" + urlAnhSP + "]";
	}
	
	
}
