package org.sp.app0828.admin.controller;

import java.util.List;

import org.sp.app0828.model.product.SubCategoryDAO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;

//서브카테고리와 관련된 요청을 전담하는 하위 컨트롤러
@Controller
public class SubCategoryController {
	
	@Autowired
	private SubCategoryDAO subCategoryDAO;
	
	//상위 카테고리에 소속된 하위 목록을 가져오기 위함
	@RequestMapping(value="/admin/subcategory/list", produces="application/json;charset=utf-8", method=RequestMethod.GET)
	//순수한 데이터 응답 : 접두어+접미어를 제거한 값이 반환됨
	@ResponseBody
	public String getListByTopIdx(int topcategory_idx) {
		//3간계) 일 시키기
		List subList=subCategoryDAO.selectAll(topcategory_idx);
		Gson gson=new Gson();
		String json=gson.toJson(subList);
		
		//4단계) 
		//System.out.println("넘겨받은 idx는"+topcategory_idx);
		
		return json;
	}
	
}
