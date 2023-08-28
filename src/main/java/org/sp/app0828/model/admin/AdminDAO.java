package org.sp.app0828.model.admin;

import org.sp.app0828.domain.Admin;

//인터페이스로 정의: 이 객체를 사용하려는 객체가 AdminDAO자료형을 약하게 보유하게 만드려고, 즉 결합도를 낮추기위함.
public interface AdminDAO {
	public Admin login(Admin admin);
	
	public void insert(Admin admin);
	
}
