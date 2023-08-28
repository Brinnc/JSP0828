package org.sp.app0828.admin.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

//관리자 메인과 관련된 요청을 처리하는 하위 컨트롤러
@Controller
public class AdminController {
	
	//관리자모드 메인 요청
	@RequestMapping(value="/admin/main", method=RequestMethod.GET)
	public ModelAndView getMain() {
		//3단계: 생략
		ModelAndView mav=new ModelAndView();
		//4단계: 
		mav.setViewName("/admin/index");
		
		return mav;
	}
	
}
