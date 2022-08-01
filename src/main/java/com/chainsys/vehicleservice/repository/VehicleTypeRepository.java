package com.chainsys.vehicleservice.repository;

import java.util.List;
import java.util.Optional;

import org.springframework.data.repository.CrudRepository;

import com.chainsys.vehicleservice.pojo.VehicleType;

public interface VehicleTypeRepository extends CrudRepository<VehicleType, String> {

	Optional<VehicleType> findById(String string);

	VehicleType save(VehicleType vehicleType);

	void deleteById(String string);

	List<VehicleType> findAll();
}
