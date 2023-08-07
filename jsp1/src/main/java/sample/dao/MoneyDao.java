package sample.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import jdbc.util.OracleUtility;
import sample.dto.MoneyDto;

public class MoneyDao {
	
	//라. 회원매출조회
	public List<MoneyDto> memberSales(String custno) throws SQLException{
		Connection conn = OracleUtility.getConnection();
		String sql = "select custno, custname, grade, sum(total) as sumtotal\r\n"
				+ "from salechart\r\n"
				+ "group by custno, custname, grade\r\n"
				+ "order by sumtotal desc";
		PreparedStatement ps = conn.prepareStatement(sql);
		ResultSet rs = ps.executeQuery();
		
		List<MoneyDto> list = new ArrayList<>();
		while(rs.next()) {
			list.add(new MoneyDto(rs.getInt(1),
								rs.getString(2),
								rs.getString(3),
								rs.getInt(4)));
			
		}			
		return list;
				
		
	}

}
