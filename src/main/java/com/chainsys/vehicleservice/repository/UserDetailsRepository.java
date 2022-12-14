package com.chainsys.vehicleservice.repository;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.chainsys.vehicleservice.model.UserDetails;

public interface UserDetailsRepository extends CrudRepository<UserDetails, Integer> {
	UserDetails findById(int id);

	UserDetails save(UserDetails userDetails);

	void deleteById(int id);

	List<UserDetails> findAll();
	
	UserDetails findByUserEmailAndUserPassword(String email, String password);
	
	UserDetails findByUserEmail(String email);

}
