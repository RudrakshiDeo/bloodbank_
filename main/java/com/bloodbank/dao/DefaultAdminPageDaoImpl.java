package com.bloodbank.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import com.bloodbank.model.BloodStocks;

@Repository
public class DefaultAdminPageDaoImpl implements AdminPageDao {
	@Autowired
	 JdbcTemplate jdbcTemplate;

	@Override
	public int addBloodStocks(BloodStocks stock) {
		System.out.println(stock);
		String sql = "insert into bloodstocks values(?,?,?,?,?,?,?,?,?,?,?,?,?)";
		return jdbcTemplate.update
				(
				sql, new Object[] 
						{ 
							stock.getId(),
							stock.getState(),
							stock.getDistrict(),
							stock.getBloodcentname(),
							stock.getLastupdatedate(),
							stock.getA_positive(),
							stock.getA_negative(),
							stock.getB_positive(),
							stock.getB_negative(),
							stock.getAb_positive(),
							stock.getAb_negative(),
							stock.getO_positive(),
							stock.getO_negative(),
							
						}
				);
	}

	@Override
	public List<BloodStocks> getAllBloodStocks() {
			String sql="select * from bloodstocks";
			 return jdbcTemplate.query(sql, new RowMapper()
			 {
				 public BloodStocks mapRow(ResultSet rs, int rownum) throws SQLException{
					 System.out.println(rs);
					 BloodStocks stock = new BloodStocks();
					 stock.setId(rs.getInt(1));
					 stock.setState(rs.getString(2));
					 stock.setDistrict(rs.getString(3));
					 stock.setBloodcentname(rs.getString(4));
					 stock.setLastupdatedate(rs.getTime(5));
					 stock.setA_positive(rs.getString(6));
					 stock.setA_negative(rs.getString(7));
					 stock.setB_positive(rs.getString(8));
					 stock.setB_negative(rs.getString(9));
					 stock.setAb_positive(rs.getString(10));
					 stock.setAb_negative(rs.getString(11));
					 stock.setO_positive(rs.getString(12));
					 stock.setO_negative(rs.getString(13));
				return stock;
			}});
		// return null;
	}

	@Override
	public int deleteBloodStocks(int id) {
		String sql="delete from bloodstocks where id=?";
		return jdbcTemplate.update(sql,new Object[] {id});
	}

	

	@Override
	public int updateBloodStocks(BloodStocks p) {
		 System.out.println("p--------");
		 System.out.println(p);
		 String sql="update bloodstocks set state=?, district=?,bloodcentname=?,lastupdatedate=?, a_positive=?,a_negative=?, b_positive=?,b_negative=?,ab_positive=?,ab_negative=?,o_positive=?, o_negative=? where id=?";
		 
		 return jdbcTemplate.update(sql,new Object[] {
		  p.getState(),
		  p.getDistrict(),
		  p.getBloodcentname(),
		  p.getLastupdatedate(),
		  p.getA_positive(),
		  p.getA_negative(),
		  p.getB_positive(),
		  p.getB_negative(),
		  p.getAb_positive(),
		  p.getAb_negative(),
		  p.getO_positive(),
		  p.getO_negative(),
		  p.getId()
		 });
		 
	    }
	
	@Override
	public BloodStocks getBloodStocksById(int id) {
		String sql="select * from bloodstocks where id=?";
		return (BloodStocks) jdbcTemplate.queryForObject(sql,new Object[] {id},new RowMapper() {public BloodStocks mapRow(ResultSet rs, int rownum) throws SQLException{
			BloodStocks stock = new BloodStocks();
			 stock.setId(rs.getInt(1));
			 stock.setState(rs.getString(2));
			 stock.setDistrict(rs.getString(3));
			 stock.setBloodcentname(rs.getString(4));
			 stock.setLastupdatedate(rs.getTime(5));
			 stock.setA_positive(rs.getString(6));
			 stock.setA_negative(rs.getString(7));
			 stock.setB_positive(rs.getString(8));
			 stock.setB_negative(rs.getString(9));
			 stock.setAb_positive(rs.getString(10));
			 stock.setAb_negative(rs.getString(11));
			 stock.setO_positive(rs.getString(12));
			 stock.setO_negative(rs.getString(13));
			return stock;
		}});
	}
	
}
