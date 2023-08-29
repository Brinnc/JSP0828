package org.sp.app0828.model.product;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.sp.app0828.domain.TopCategory;
import org.sp.app0828.mybatis.MybatisConfig;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

//탑카테고리DAO의 자식 중, mybatis를 이용한 DAO 정의
@Repository
public class MybatisTopCategoryDAO implements TopCategoryDAO{

	//sql세션을 얻을 수 있는 mybatisconfig 객체 보유
	@Autowired
	private MybatisConfig mybatisconfig;
		
	@Override
	public void insert(TopCategory topCategory) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public List selectAll() {
		SqlSession sqlSession=mybatisconfig.getSqlSession();
		List list=sqlSession.selectList("TopCategory.selectAll");
		mybatisconfig.release(sqlSession);
		
		return list;
	}

	@Override
	public TopCategory select(int topcategory_idx) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void update(TopCategory topCategory) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void delete(int topcategory_idx) {
		// TODO Auto-generated method stub
		
	}

}
