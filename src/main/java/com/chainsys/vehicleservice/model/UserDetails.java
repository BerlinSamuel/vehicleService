package com.chainsys.vehicleservice.model;

import java.util.List;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;

@Entity
@Table(name = "user_details")
public class UserDetails {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO, generator = "user_id_ref")
	@SequenceGenerator(name = "user_id_ref", sequenceName = "user_id_ref", allocationSize = 1)
	@Column(name = "user_id")
	private int userId;
	@Column(name = "user_name")
	
	private String userName;
	@Column(name = "aadhar_number")
	
	private long aadharNumber;
	@Column(name = "mobile_number")
	
	private long mobileNumber;
	@Column(name = "user_email")
	
	private String userEmail;

	@Column(name = "user_password")
	private String userPassword;

	@OneToMany(mappedBy = "userDetails", fetch = FetchType.LAZY)
	private List<VehiclesType> vehicleTypeList;

	public List<VehiclesType> getVehicleTypeList() {
		return vehicleTypeList;
	}

	public void setVehicleTypeList(List<VehiclesType> vehicleTypeList) {
		this.vehicleTypeList = vehicleTypeList;
	}

	@OneToMany(mappedBy = "userdetails", fetch = FetchType.LAZY)
	private List<BookService> bookService;

	public List<BookService> getBookService() {
		return bookService;
	}

	public void setBookService(List<BookService> bookService) {
		this.bookService = bookService;
	}

	public int getUserId() {
		return userId;
	}

	public void setUserId(int userId) {
		this.userId = userId;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public long getAadharNumber() {
		return aadharNumber;
	}

	public void setAadharNumber(long aadharNumber) {
		this.aadharNumber = aadharNumber;
	}

	public long getMobileNumber() {
		return mobileNumber;
	}

	public void setMobileNumber(long mobileNumber) {
		this.mobileNumber = mobileNumber;
	}

	public String getUserEmail() {
		return userEmail;
	}

	public void setUserEmail(String userEmail) {
		this.userEmail = userEmail;
	}

	public String getUserPassword() {
		return userPassword;
	}

	public void setUserPassword(String userPassword) {
		this.userPassword = userPassword;
	}

}
