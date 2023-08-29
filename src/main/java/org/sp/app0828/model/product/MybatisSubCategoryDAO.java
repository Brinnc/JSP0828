package org.sp.app0828.model.product;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.sp.app0828.mybatis.MybatisConfig;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class MybatisSubCategoryDAO implements SubCategoryDAO{
	@Autowired
	private MybatisConfig mybatisConfig;
	
	@Override
	public List selectAll() {
		
		return null;
	}

	@Override
	public List selectAll(int topCategory_idx) {
		SqlSession sqlSession=mybatisConfig.getSqlSession();
		List list=sqlSession.selectList("SubCategory.selectAllByFkey", topCategory_idx);
		mybatisConfig.release(sqlSession);
		
		return list;
	}

}
