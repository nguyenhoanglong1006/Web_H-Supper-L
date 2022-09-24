package hl.dao;

import java.util.List;

import hl.entity.KhachHang;



public interface KhachHangDAO {
	public List<KhachHang> getTatCaKhachHang();
	public KhachHang getKhachHangTheoID(int id);
	public KhachHang getKhachHangTheoEmail(String email);
	public void xoaKhachHang(int id);
	public void saveKhachHang(KhachHang thekhachHang);
	public KhachHang getKHEmail(String email);
	public void themHoacCapNhatKhachHang(KhachHang khachHang);
	
}
