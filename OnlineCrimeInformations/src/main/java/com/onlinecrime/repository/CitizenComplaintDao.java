package com.onlinecrime.repository;



import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.onlinecrime.bean.CitizenComplaintBean;


public interface CitizenComplaintDao extends JpaRepository<CitizenComplaintBean, Integer> {
	
	
}
