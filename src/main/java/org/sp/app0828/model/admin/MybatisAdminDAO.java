package org.sp.app0828.model.admin;

import org.apache.ibatis.session.SqlSession;
import org.sp.app0828.domain.Admin;
import org.sp.app0828.mybatis.MybatisConfig;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

//이 클래스는 AdminDAO형 중 하나
//컴포넌트 스캔에의해 DAO의 인스턴스를 생성해줌(스프링이~)
@Repository
public class MybatisAdminDAO implements AdminDAO{
	
	@Autowired
	private MybatisConfig mybatisConfig;
	
	public Admin login(Admin admin) {
		//sql세션 얻어오기
		SqlSession sqlSession=mybatisConfig.getSqlSession();
		return sqlSession.selectOne("Admin.login", admin);
		
	}

	public void insert(Admin admin) {
		
		
	}
	
}
