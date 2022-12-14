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
@Table(name = "services")
public class Services {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO, generator = "service_detail_id_ref")
	@SequenceGenerator(name = "service_detail_id_ref", sequenceName = "service_detail_id_ref", allocationSize = 1)
	@Column(name = "service_detail_id")
	private int serviceDetailId;
	@Column(name = "service_type")
	private String serviceType;
	@Column(name = "service_charge")
	private int serviceCharge;
	@Column(name = "service_description")
	private String serviceDescription;

	public int getServiceDetailId() {
		return serviceDetailId;
	}

	@OneToMany(mappedBy = "services", fetch = FetchType.LAZY)
	private List<ServiceDetails> serviceDetails;

	public void setServiceDetailId(int serviceDetailId) {
		this.serviceDetailId = serviceDetailId;
	}

	public String getServiceType() {
		return serviceType;
	}

	public void setServiceType(String serviceType) {
		this.serviceType = serviceType;
	}

	public int getServiceCharge() {
		return serviceCharge;
	}

	public void setServiceCharge(int serviceCharge) {
		this.serviceCharge = serviceCharge;
	}

	public String getServiceDescription() {
		return serviceDescription;
	}

	public void setServiceDescription(String serviceDescription) {
		this.serviceDescription = serviceDescription;
	}

}
