package com.kosign.wecafe.services.report;

import java.text.ParseException;
import java.util.Date;
import java.util.List;
import java.util.Map;

import org.hibernate.HibernateException;
import org.springframework.transaction.annotation.Transactional;

import com.kosign.wecafe.entities.Pagination;
import com.kosign.wecafe.forms.DateForm;

public interface AdminReportRequestService {
	
	public List<Map> getTotalProQty(DateForm date);
	public List<Map> getListReportDetailRequest(Pagination pagination,DateForm date);
	public List<Map> getListReportDailyRequest(Pagination pagination, DateForm date);
	public Object getListReportWeeklyRequest(Pagination pagination,DateForm date);
	public Long getTotalDailyRequest(DateForm date);
	public Long countDetail(DateForm date) throws ParseException;
	public Long countDaily(Date dateTime) throws HibernateException, ParseException;
	public Long countWeekly(DateForm date) throws ParseException;
	public Long getTotalQtyWeeklyRequest(DateForm date) throws ParseException;
	public Long getTotalQtyDetailRequest(DateForm date);
	public List<Map> getListReportMonthlyRequest(Date startdate, Date enddate, Pagination pagination);
	public Long countMonthly(Date startDate, Date endDate) throws ParseException;
	public Long getTotalQtyMonthlyRequest(Date startDate, Date endDate);
}
