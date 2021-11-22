package com.onlinecrime.Service;


import com.onlinecrime.bean.CitizenBean;

public interface CitizenService {
	
	
public CitizenBean registerCitizenService(CitizenBean citizenbean);
	
	public CitizenBean getCitizenById(Integer citizenId);
	
	public CitizenBean updateProfile(CitizenBean citizen);
	
}
