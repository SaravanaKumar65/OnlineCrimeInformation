package com.onlinecrime.Service;

import java.util.List;

import com.onlinecrime.bean.PoliceOfficerT;

public interface PoliceOfficerServiceT {
	public PoliceOfficerT registerPolice(PoliceOfficerT policeOfficerT);
	
	public List<PoliceOfficerT> getAllPolice();
	
	public PoliceOfficerT updatePolice(PoliceOfficerT pct);
	
	public List<PoliceOfficerT> deletePolice(Integer polId);
	
	public PoliceOfficerT getPoliceById(Integer polId);

}
