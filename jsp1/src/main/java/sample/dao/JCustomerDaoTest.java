package sample.dao;

import static org.junit.jupiter.api.Assertions.*;

import java.sql.SQLException;

import org.junit.jupiter.api.Test;

import sample.dto.JCustomer;

class JCustomerDaoTest {

	@Test
	void daoTest() {
		JCustomerDao dao = new JCustomerDao();
		assertNotNull(dao);
	}
	
	@Test
	void selectById() {
		JCustomerDao dao = new JCustomerDao();
		try {
			JCustomer dto = dao.selectById("mina012");
			assertNotNull(dto);
		} catch (SQLException e) {			
			e.printStackTrace();
		}
	}
	
	@Test
	void login() {
		JCustomerDao dao = new JCustomerDao();		
			JCustomer dto = dao.login("mina012", "1111");
			assertNotNull(dto);
		
	}

}
