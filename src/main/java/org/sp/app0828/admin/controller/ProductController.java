package org.sp.app0828.admin.controller;

import java.util.List;

import org.sp.app0828.domain.Product;
import org.sp.app0828.model.product.TopCategoryDAO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

//관리자 모드에서의 상품과 관련된 요청을 처리하는 하위 컨트롤러
//컴포넌트 스캔 태그의 검색 대상 중 @Controller이므로, 스프링이 자동으로 메모리에 생성
@Controller
public class ProductController {

	//DAO를 느슨하게 보유
	@Autowired
	private TopCategoryDAO topCategoryDAO;
	
	@RequestMapping(value="/admin/product/registform", method=RequestMethod.GET)
	public ModelAndView getForm() {
		//만약 ModelAndView에 저장할 데이터가 없을 경우 뷰의 이름만 넘겨주면 되므로
		//이 경우 String형만 반환
		
		//3단계) 일 시키기
		List topList=topCategoryDAO.selectAll();
		//4단계) 가져갈 것이 있다면 저장
		ModelAndView mav=new ModelAndView("/admin/product/regist");
		mav.addObject("topList", topList);
		
		return mav;
	}
	
	//상품 등록 요청 처리
	@RequestMapping(value="/admin/product/regist", method=RequestMethod.POST)
	public ModelAndView regist(Product product) {
		
		System.out.println("하위카테고리idx: "+product.getSubCategory().getSubcategory_idx());
		System.out.println("상품명: "+product.getProduct_name());
		System.out.println("브랜드: "+product.getBrand());
		System.out.println("가격: "+product.getPrice());
		System.out.println("상세내용: "+product.getDetail());
		
		return null;
	}
	
}
