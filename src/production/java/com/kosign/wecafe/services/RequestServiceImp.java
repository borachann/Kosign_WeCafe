package com.kosign.wecafe.services;

import java.util.Date;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.SQLQuery;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.kosign.wecafe.entities.ImportProduct;
import com.kosign.wecafe.entities.Product;
import com.kosign.wecafe.entities.RequestStock;
import com.kosign.wecafe.entities.RequestStockDetail;
import com.kosign.wecafe.entities.Supplier;
import com.kosign.wecafe.entities.User;
import com.kosign.wecafe.forms.RequestForm;

@Service
public class RequestServiceImp implements RequestService {

	@Inject UserService userService;
	
	@Autowired SessionFactory sessionFactory;

	private String getPrincipal() {
		String userName = null;
		Object principal = SecurityContextHolder.getContext().getAuthentication().getPrincipal();

		if (principal instanceof UserDetails) {
			userName = ((UserDetails) principal).getUsername();
		} else {
			userName = principal.toString();
		}
		return userName;
	}
	
	
	@Override
	@Transactional
	public Boolean saveRequestPro(List<RequestForm> requestForm) {

		Session session = sessionFactory.getCurrentSession();
		try {
			//1. save import product 
			RequestStock requestStock = new RequestStock();
			requestStock.setStatus(true);
			User user = userService.findUserByUsername(getPrincipal());
			requestStock.setUserRequest(user);
		
			//2.save import detail
			
			for(int i=0; i < requestForm.size();i++){
				RequestStockDetail requestDetail = new RequestStockDetail();
				Product product = new Product();		
				product.setProductId(requestForm.get(i).getProId());					
				requestDetail.setProduct(product);			
				requestDetail.setRequestStock(requestStock);				
				requestDetail.setProQty(requestForm.get(i).getProQty());		
				requestDetail.setRemainQty(requestForm.get(i).getRemainQty());
				requestStock.getRequestStockDetail().add(requestDetail);
				
				//session.save(requestDetail);				
				/*//3. update product (stock)
				Product products  = session.get(Product.class, requestDetail.getProduct().getProductId());
				System.out.println("requestDetail.getProduct().getProductId()" + products.getQuantity());
				products.setQuantity(products.getQuantity() + requestForm.get(i).getQuantity() );
				System.out.println("product.getQuantity()" +  requestForm.get(i).getQuantity());
				session.update(products);*/
			}
			session.save(requestStock);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}

	@Override
	@Transactional
	public List<Map> listRequestDetail(String id){
		Session session = sessionFactory.getCurrentSession();
		try {
			String sql="SELECT rs.req_id,pro.pro_id,pro.pro_name,rsd.pro_qty,rsd.remain_qty,firstname,lastname,rs.req_date,pro.qty stock_qty "
					+ "FROM "
					+ "request_stock rs, request_stock_detail  rsd,users use,product pro "
					+ "WHERE 1=1 "
					+ "and rs.req_id=rsd.req_id "
					+ "and rs.use_id=use.id "
					+ "and rsd.pro_id=pro.pro_id "
					+ "and rs.status='t' "
					+ "and CAST(rs.req_id as TEXT) LIKE ? Order By rs.req_id DESC";
			SQLQuery query = session.createSQLQuery(sql);
			query.setResultTransformer(Criteria.ALIAS_TO_ENTITY_MAP);		
			query.setParameter(0, "%"+id+"%");
			List<Map> requestDetails = query.list();
			return requestDetails;
		} catch (Exception e) {
			e.getStackTrace();
		}
		return null;
	}
	
	@Override
	@Transactional
	public List<RequestStock> listRequestStock(){
		
		Session session = null;
		try{
			session = sessionFactory.getCurrentSession();
			session.getTransaction().begin();
			Query query = session.createQuery("FROM RequestStock");
			List<RequestStock>	requestStock = (List<RequestStock>)query.list();	
			return requestStock;
		}catch(Exception e){
			e.printStackTrace();
		}finally {
			
		}
		
		return null;
	}

	 
}
