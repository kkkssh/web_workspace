package sample.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import mybatis.SqlSessionBean;
import sample.dto.ProductDto;

public class ProductDao {
	private static ProductDao dao = new ProductDao();
	private ProductDao() {}
	public static ProductDao getProductDao() {
		return dao;
	}
	
	SqlSessionFactory factory = SqlSessionBean.getSessionFactory();
	
	public List<ProductDto> getProducts(){
		SqlSession mapper = factory.openSession();
		List<ProductDto> list = mapper.selectList("products.getProducts");
		mapper.close();
		return list;
	}
	
	public int insert(ProductDto dto) {
		SqlSession mapper = factory.openSession();
		int result = mapper.insert("products.insert", dto);
		mapper.commit();		//insert 에는 commit 필수
		mapper.close();
		return result;
	}
	
	//동일한 상품명이 여러개면 오류 생김
	public ProductDto getByPname(String pname) {
		SqlSession mapper = factory.openSession();
		ProductDto dto = mapper.selectOne("products.getByPname", pname);
		mapper.close();
		return dto;
	}

}
