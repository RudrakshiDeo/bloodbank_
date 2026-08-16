package com.bloodbank.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Collections;
import java.util.List;
import java.util.Objects;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import com.bloodbank.dto.AddBloodbankDTO;
import com.bloodbank.model.BloodStocks;

@Repository
public class DefaultAddBloodbankDAO implements AddBloodbankDAO {
	
	@Autowired
	private JdbcTemplate jdbcTemplate;

	@Override
	public void createAddBloodbank(AddBloodbankDTO addBloodbankDTO) {
		String sql_insert_query = "insert into addbloodbank values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
		jdbcTemplate.update(sql_insert_query, addBloodbankDTO.getState(), addBloodbankDTO.getDistrict(),
				addBloodbankDTO.getCity(), addBloodbankDTO.getBbank(), addBloodbankDTO.getHospitalName(), 
				addBloodbankDTO.getCategory(), addBloodbankDTO.getEmail(), addBloodbankDTO.getContact(),
				addBloodbankDTO.getLicence(), addBloodbankDTO.getFromDate(), addBloodbankDTO.getToDate(), 
				addBloodbankDTO.getComponent(), addBloodbankDTO.getApheresis(), addBloodbankDTO.getHelpline(),
				addBloodbankDTO.getNoOfBed(), addBloodbankDTO.getAddress1(), addBloodbankDTO.getAddress2(), 
				addBloodbankDTO.getPinCode());
		
	}

	/*@Override
	public List<AddBloodbankDTO> getAddBloodbank() {
		String sql_get_query = "select * from addBloodbank";
		List<AddBloodbankDTO> addBloodbankList = jdbcTemplate.query(sql_get_query, new BeanPropertyRowMapper<>(AddBloodbankDTO.class));
		return Objects.nonNull(addBloodbankList)? addBloodbankList : Collections.emptyList();
	}*/
	
	@Override
	public List<AddBloodbankDTO> getAddBloodbank() {
			String sql="select * from addbloodbank";
			 return jdbcTemplate.query(sql, new RowMapper()
			 {
				 public AddBloodbankDTO mapRow(ResultSet rs, int rownum) throws SQLException {
					 System.out.println(rs);
					 AddBloodbankDTO data = new AddBloodbankDTO();
					 data.setBbank(rs.getString(1));
					 data.setContact(rs.getString(2));
					 data.setEmail(rs.getString(3));
					 data.setCategory(rs.getString(4));
					 data.setAddress1(rs.getString(5));
					 data.setHelpline(rs.getString(6));
					 return data;}
			 });
	}

}
