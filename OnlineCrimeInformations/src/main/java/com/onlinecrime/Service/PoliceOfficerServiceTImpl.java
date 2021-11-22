package com.onlinecrime.Service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.onlinecrime.bean.PoliceOfficerT;
import com.onlinecrime.repository.PoliceOfficerDaoT;

@Service
public class PoliceOfficerServiceTImpl implements PoliceOfficerServiceT{
	@Autowired
	private PoliceOfficerDaoT poDao;

	@Override
	public PoliceOfficerT registerPolice(PoliceOfficerT policeOfficerT) {
			return poDao.save(policeOfficerT);
		}

	@Override
	public List<PoliceOfficerT> getAllPolice() {
		return poDao.findAll();
	}

	@Override
	public PoliceOfficerT updatePolice(PoliceOfficerT pct) {
		return poDao.save(pct);
	}

	@Override
	public List<PoliceOfficerT> deletePolice(Integer polId) {
		Optional<PoliceOfficerT> opt=poDao.findById(polId);
		if(!opt.isPresent()) {
			System.out.println("Doesn't Exist");
		}
		
		PoliceOfficerT po=opt.get();
		poDao.delete(po);
		return poDao.findAll();
	}

	@Override
	public PoliceOfficerT getPoliceById(Integer polId) {
		return poDao.getById(polId);
	}
	
	
}
