package hl.implService;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import hl.dao.KhachHangDAO;
import hl.entity.KhachHang;
import hl.service.KhachHangService;

@Service
public class KhachHangServiceImpl implements KhachHangService {

	@Autowired
	private KhachHangDAO khachHangDAO;
	@Override
	@Transactional
	public List<KhachHang> getTatCaKhachHang() {
		return khachHangDAO.getTatCaKhachHang();
	}
	@Override
	@Transactional
	public KhachHang getKhachHangTheoID(int id) {
		// TODO Auto-generated method stub
		return khachHangDAO.getKhachHangTheoID(id);
	}
	@Override
	@Transactional
	public KhachHang getKhachHangTheoEmail(String email) {
		// TODO Auto-generated method stub
		return khachHangDAO.getKHEmail(email);
	}
	@Override
	@Transactional
	public void saveKhachHang(KhachHang khachHang) {
		// TODO Auto-generated method stub
		khachHangDAO.saveKhachHang(khachHang);
	}
	@Override
	@Transactional
	public KhachHang getKHEmail(String email) {
		return khachHangDAO.getKhachHangTheoEmail(email);
	}
	@Override
	@Transactional
	public void themHoacCapNhatKhachHang(KhachHang khachHang) {
		khachHangDAO.themHoacCapNhatKhachHang(khachHang);
		
	}
	@Override
	@Transactional
	public void xoaKhachHang(int id) {
		khachHangDAO.xoaKhachHang(id);
		
	}

}
