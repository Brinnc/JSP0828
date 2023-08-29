package test;

import org.sp.app0828.domain.SubCategory;

import com.google.gson.Gson;

public class JSONTest {
	public static void main(String[] args) {
		
		SubCategory dto=new SubCategory();
		dto.setSubcategory_idx(1);
		dto.setSub_name("바지");
		
		Gson gson=new Gson(); 
		String json=gson.toJson(dto);
		
		System.out.println(json);
	}
}
