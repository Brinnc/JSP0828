package org.sp.app0828.model.product;

import java.util.List;

public interface SubCategoryDAO {
	
	//모든 레코그 가져오기
	public List selectAll();
	
	public List selectAll(int topCategory_idx); //선택한 상위에 소속된 것만..
	
}
