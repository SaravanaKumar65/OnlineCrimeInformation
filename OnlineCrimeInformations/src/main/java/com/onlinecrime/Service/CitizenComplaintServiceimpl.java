package com.onlinecrime.Service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.onlinecrime.bean.CitizenComplaintBean;
import com.onlinecrime.repository.CitizenComplaintDao;

@Service
public class CitizenComplaintServiceimpl implements CitizenComplaintService{
	
	@Autowired
	private CitizenComplaintDao citizencomplaintdao;

	@Override
	public CitizenComplaintBean registerCitizenComplaintService(CitizenComplaintBean citizencomplaintbean) {
	
		return citizencomplaintdao.save(citizencomplaintbean);
	}

	@Override
	public CitizenComplaintBean getComplaintById(Integer citizenId) {
		return citizencomplaintdao.findById(citizenId).get();
	}

	@Override
	public List<CitizenComplaintBean> getAllComplaints() {
		return citizencomplaintdao.findAll();
	}

	
	


	
	
	

}
