package com.bloodbank.dao;

import java.util.Collections;
import java.util.List;
import java.util.Objects;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.bloodbank.dto.DonorRegistrationDTO;

@Repository
public class DefaultDonorRegistrationDAO implements DonorRegistrationDAO {
	
	@Autowired
	private JdbcTemplate jdbcTemplate;

	@Override
	public void createDonorRegistration(DonorRegistrationDTO donorRegistrationDTO) {
		
		String sql_insert_query = "insert into campusregistration values(?,?,?,?,?,?,?,?,?,?)";
		jdbcTemplate.update(sql_insert_query, donorRegistrationDTO.getUsername(), donorRegistrationDTO.getFullname(), donorRegistrationDTO.getGender(),
				donorRegistrationDTO.getDob(), donorRegistrationDTO.getBloodGroup(),donorRegistrationDTO.getContact(), 
				donorRegistrationDTO.getEmail(), donorRegistrationDTO.getState(),donorRegistrationDTO.getDistrict(), 
				donorRegistrationDTO.getCity());
		
	}

	@Override
	public List<DonorRegistrationDTO> getDonorRegistration() {
		String sql_get_query = "select * from donorregistration";
		List<DonorRegistrationDTO> donorRegistrationList = jdbcTemplate.query(sql_get_query, new BeanPropertyRowMapper<>(DonorRegistrationDTO.class));
		return Objects.nonNull(donorRegistrationList)? donorRegistrationList : Collections.emptyList();
	}

}
