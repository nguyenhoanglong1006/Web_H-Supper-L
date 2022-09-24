package hl.implService;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import hl.dao.SanPhamDAO;
import hl.entity.SanPham;
import hl.service.SanPhamService;

@Service
public class SanPhamServiceImpl implements SanPhamService {
	@Autowired
	private SanPhamDAO sanPhamDAO;

	@Override
	@Transactional
	public List<SanPham> getTatCaSanPham() {
		return sanPhamDAO.getTatCaSanPham();
	}

	@Override
	@Transactional
	public SanPham getSanPhamTheoID(int id) {
		return sanPhamDAO.getSanPhamTheoID(id);
	}

}
