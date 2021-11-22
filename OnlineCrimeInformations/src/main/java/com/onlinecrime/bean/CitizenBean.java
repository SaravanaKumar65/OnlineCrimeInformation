package com.onlinecrime.bean;



import java.util.ArrayList;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.validation.constraints.Email;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

@Entity
public class CitizenBean {
	
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Integer citizenId;
	
	@NotEmpty(message = "Name is Mandatory")
	private String citizenName;
	
	@Email(message = "Email is Mandatory")
	@NotEmpty(message = "Email is Mandatory")
	private String email;
	
	@NotNull(message = "Age is Mandatory")
	private Integer citizenAge;
	
	
	@NotEmpty
	@Size(min = 4,max = 16,message = "Password size between 8 to 16")
	private String password;
	
	@OneToMany(cascade = CascadeType.ALL)
	private List<CitizenComplaintBean> citizencomplaint=new ArrayList<CitizenComplaintBean>();
	
	@NotEmpty(message = "Mobile Number should be 10 Digit")
	private String mobile;
	
	public List<CitizenComplaintBean> getCitizencomplaint() {
		return citizencomplaint;
	}



	public void setCitizencomplaint(List<CitizenComplaintBean> citizencomplaint) {
		this.citizencomplaint = citizencomplaint;
	}
	
	



	public String getMobile() {
		return mobile;
	}



	public void setMobile(String mobile) {
		this.mobile = mobile;
	}



	public CitizenBean() {
		// TODO Auto-generated constructor stub
	}



	public Integer getCitizenId() {
		return citizenId;
	}



	public void setCitizenId(Integer citizenId) {
		this.citizenId = citizenId;
	}



	public String getCitizenName() {
		return citizenName;
	}



	public void setCitizenName(String citizenName) {
		this.citizenName = citizenName;
	}



	public String getEmail() {
		return email;
	}



	public void setEmail(String email) {
		this.email = email;
	}



	public Integer getCitizenAge() {
		return citizenAge;
	}



	public void setCitizenAge(Integer citizenAge) {
		this.citizenAge = citizenAge;
	}



	public String getPassword() {
		return password;
	}



	public void setPassword(String password) {
		this.password = password;
	}



	
	

}
