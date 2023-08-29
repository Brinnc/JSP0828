package org.sp.app0828.model.product;

import java.util.List;

import org.sp.app0828.domain.TopCategory;

//TopCategoryDAO들의 최상위 객체
public interface TopCategoryDAO {

	//CRUD
	public void insert(TopCategory topCategory); //등록(C)
	
	public List selectAll(); 
	
	public TopCategory select(int topcategory_idx);
	
	public void update(TopCategory topCategory);
	
	public void delete(int topcategory_idx);
	
}
