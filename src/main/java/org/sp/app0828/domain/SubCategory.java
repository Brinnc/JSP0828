package org.sp.app0828.domain;

import lombok.Data;

@Data
public class SubCategory {
	private int subcategory_idx;
	
	//db분야에서는 부모의 foreign key만 있으면 부모를 참조할 수 있지만
	//자바에서는 특정 객체를 찾아가려면 반드시 주소값이 있어야함
	private TopCategory topCategory;
	private String sub_name;
}
