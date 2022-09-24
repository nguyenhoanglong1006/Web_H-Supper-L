package hl.service;

import java.util.List;

import hl.entity.KhachHang;

public interface KhachHangService {
	public List<KhachHang> getTatCaKhachHang();
	public KhachHang getKhachHangTheoID(int id);
	public void themHoacCapNhatKhachHang(KhachHang khachHang);
	public void xoaKhachHang(int id);
	
	public KhachHang getKhachHangTheoEmail(String email);

	public void saveKhachHang(KhachHang khachHang);
	public KhachHang getKHEmail(String email);
}
