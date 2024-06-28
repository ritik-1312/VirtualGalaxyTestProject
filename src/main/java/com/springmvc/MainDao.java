package com.springmvc;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowCallbackHandler;
import org.springframework.jdbc.core.RowMapper;

public class MainDao {
	private JdbcTemplate jdbctemplate;

	public JdbcTemplate getJdbctemplate() {
		return jdbctemplate;
	}

	public void setJdbctemplate(JdbcTemplate jdbctemplate) {
		this.jdbctemplate = jdbctemplate;
	}

	public int SaveData(RegModel rm) {
		// TODO Auto-generated method stub
		String sql = "insert into tb_reg(id,name,email,password,gender,course)Values(?,?,?,?,?,?)";
		return jdbctemplate.update(sql,rm.getId(),rm.getName(),rm.getEmail(),rm.getPassword(),rm.getGender(),rm.getCourse());
	}

	public int GenerateId() {
		// TODO Auto-generated method stub
		String sql = "select max(id) from tb_reg";
		Integer maxId = jdbctemplate.queryForObject(sql, Integer.class);
		if(maxId==null) {
			return 1;
		}
		return maxId+1;
	}

	public List<RegModel> dologin(LoginModule lm) {
		// TODO Auto-generated method stub
		String sql = "select * from tb_reg where email='"+lm.getEmail()+"' and password = '"+lm.getPassword()+"'";
		
		List<RegModel> list = jdbctemplate.query(sql, new RowMapper<RegModel>() {

			@Override
			public RegModel mapRow(ResultSet rs, int arg1) throws SQLException {
				// TODO Auto-generated method stub
				RegModel rm = new RegModel();
				rm.setEmail(rs.getNString("email"));
				rm.setPassword(rs.getString("password"));
				return rm;
			}
		});
		List<RegModel> list1 = list.size()>0? list:null;
		return list1;
	}

	public int SaveEmpData(EmpModel em) {
		// TODO Auto-generated method stub
		String sql = "insert into tb_emp(id,name,email,password,gender,course,city)Values(?,?,?,?,?,?,?)";
		return jdbctemplate.update(sql, em.getId(), em.getName(),em.getEmail(),em.getPassword(),em.getGender()
				,em.getCourse(),em.getCity());
	}

	public List<EmpModel> getEmpData() {
		// TODO Auto-generated method stub
		String sql = "select * from tb_emp";
		return jdbctemplate.query(sql, new RowMapper<EmpModel>() {

			@Override
			public EmpModel mapRow(ResultSet rs, int arg1) throws SQLException {
				// TODO Auto-generated method stub
				EmpModel em = new EmpModel();
				em.setId(rs.getInt("id"));
				em.setName(rs.getString("name"));
				em.setEmail(rs.getString("email"));
				em.setPassword(rs.getString("password"));
				em.setGender(rs.getString("gender"));
				em.setCity(rs.getString("city"));
				em.setCourse(rs.getString("course"));
				return em;
			}
		});
	}

	public int deleteEmp(int id) {
		// TODO Auto-generated method stub
		String sql = "delete from tb_emp where id='"+id+"'";
		return jdbctemplate.update(sql);
	}

	public List<EmpModel> getEditEmp(int id) {
		// TODO Auto-generated method stub
		String sql = "select * from tb_emp where id='"+id+"'";
		return jdbctemplate.query(sql, new RowMapper<EmpModel>() {

			@Override
			public EmpModel mapRow(ResultSet rs, int arg1) throws SQLException {
				// TODO Auto-generated method stub
				EmpModel em = new EmpModel();
				em.setId(rs.getInt("id"));
				em.setName(rs.getString("name"));
				em.setEmail(rs.getString("email"));
				em.setPassword(rs.getString("password"));
				em.setGender(rs.getString("gender"));
				em.setCity(rs.getString("city"));
				em.setCourse(rs.getString("course"));
				return em;
			}
		});
	}

	public int UpdateData(EmpModel em) {
		// TODO Auto-generated method stub
		String sql = "insert into tb_emp(id,name,email,password,gender,course,city) Values(?,?,?,?,?,?,?)";
		
		return jdbctemplate.update(sql, em.getId(),em.getName(),em.getEmail(),em.getPassword(),
				em.getGender(),em.getCourse(),em.getCity());
	}
	
	
}
