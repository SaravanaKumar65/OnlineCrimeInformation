package com.onlinecrime.Service;



import java.util.List;

import com.onlinecrime.bean.CitizenComplaintBean;

public interface CitizenComplaintService {
	
	public CitizenComplaintBean registerCitizenComplaintService(CitizenComplaintBean citizencomplaintbean);

	public CitizenComplaintBean getComplaintById(Integer citizenId);

	public List<CitizenComplaintBean> getAllComplaints();
	
	
}
