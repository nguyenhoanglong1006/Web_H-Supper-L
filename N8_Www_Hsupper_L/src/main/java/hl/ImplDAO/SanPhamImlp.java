package hl.ImplDAO;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import hl.dao.SanPhamDAO;

import hl.entity.SanPham;


@Repository
public class SanPhamImlp implements SanPhamDAO{

	@Autowired
	private SessionFactory sessionFactory;

	@Override
	public List<SanPham> getTatCaSanPham() {
		Session currentSession = sessionFactory.getCurrentSession();
		Query<SanPham> theQuery = currentSession.createQuery("from SanPham", SanPham.class);
		List<SanPham> sanPhams = theQuery.getResultList();

		return sanPhams;
	}
	
	public SanPham getSanPhamTheoID(int id) {
		Session currentSession = sessionFactory.getCurrentSession();
		SanPham tempSanPham = currentSession.get(SanPham.class, id);
		return tempSanPham;
		
		
	}
	
}
