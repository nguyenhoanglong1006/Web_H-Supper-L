package hl.ImplDAO;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import hl.dao.KhachHangDAO;
import hl.entity.KhachHang;
@Repository
public class KhachHangImpl implements KhachHangDAO{
 
	@Autowired
	private SessionFactory sessionFactory;
	@Override
	public List<KhachHang> getTatCaKhachHang() {
		Session currentSession = sessionFactory.getCurrentSession();
		Query<KhachHang> theQuery = currentSession.createQuery("from KhachHang", KhachHang.class);
		List<KhachHang> khachHangs = theQuery.getResultList();

		return khachHangs;
	}

	@Override
	public KhachHang getKhachHangTheoID(int id) {
		Session currentSession = sessionFactory.getCurrentSession();
		KhachHang khachHang=currentSession.get(KhachHang.class, id);

		return khachHang;
	}

	@Override
	public KhachHang getKhachHangTheoEmail(String email) {
		Session currentSession = sessionFactory.getCurrentSession();
		KhachHang khachHang=currentSession.createNativeQuery("select * from khachhang where email = '"+ email +"'", KhachHang.class).getSingleResult();
		return khachHang;
	}

	@Override
	public void saveKhachHang(KhachHang khachHang) {
		 Session currentSession = sessionFactory.getCurrentSession();
		 currentSession.saveOrUpdate(khachHang);
		
	}
	@Override
	public void themHoacCapNhatKhachHang(KhachHang khachHang) {
//		Session currentSession = sessionFactory.getCurrentSession();
//		currentSession.saveOrUpdate(khachHang);
		
		Session currentSession = sessionFactory.getCurrentSession();
		String sql = "UPDATE `hl_web`.`khachhang` SET `tenKH` = '"+ khachHang.getTenKH() +"', `email` = '"+ khachHang.getEmail() +"', `sdt` = '"+ khachHang.getSdt() +"',"
				+ " `gioiTinh` = '"+ khachHang.getGioiTinh() +"', `ngaySinh` = '"+ khachHang.getNgaySinh() +"', `diaChi` = '"+ khachHang.getDiaChi() +"' WHERE (`id` = '"+ khachHang.getId() +"')";
		Query query = currentSession.createNativeQuery(sql);
		
		query.executeUpdate();

	}
	
	@Override
	public void xoaKhachHang(int id) {
		Session currentSession = sessionFactory.getCurrentSession();
		Query theQuery = currentSession.createQuery("delete from KhachHang where id= '"+ id +"'");
		theQuery.executeUpdate();

	}

	@Override
	public KhachHang getKHEmail(String email) {
		Session currentSession = sessionFactory.getCurrentSession();
		// now retrieve/read from database using the primary key
		Query<KhachHang> theQueryKH = currentSession.createNativeQuery("select * from hl_web.KhachHang where  email='"+email+"'",
				KhachHang.class);
		KhachHang khachhang =  theQueryKH.getSingleResult();
		return khachhang;
	}

}
