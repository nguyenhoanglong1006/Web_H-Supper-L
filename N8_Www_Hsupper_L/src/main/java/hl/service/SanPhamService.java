package hl.service;

import java.util.List;

import hl.entity.SanPham;

public interface SanPhamService {
	public List<SanPham> getTatCaSanPham();
	public SanPham getSanPhamTheoID(int id);

}
