package hl.dao;

import java.util.List;

import hl.entity.SanPham;

public interface SanPhamDAO {

	public List<SanPham> getTatCaSanPham();
	public SanPham getSanPhamTheoID(int id);
	
	

}
