package org.sp.app0828.admin.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

//스프링의 버전이 점점 올라갈 수록, 빈(객체)의 등록을 xml보다는 자바코드에 직접 명시하는 유지보수 방법을 이용함 
@Controller
public class BoardController {
	
	//게시판 목록 요청을 처리할 메서드
	@RequestMapping(value="/board/list", method=RequestMethod.GET)
	public ModelAndView getList() {
		//3단계) 일 시키기
		System.out.println("게시물 목록 요청 받음");
		//4단계) 저장 필요 여부
		//개발자는 스프링에서 리퀘스트 객체를 직접 다루지 않음
		//즉, 저장할 것이 있을 경우 ModelAndView 객체의 모델 영역에 데이터를 채울 수 있음
		//(내부적으로는 request 객체 이용)
		ModelAndView mav=new ModelAndView(); //request
		mav.addObject("msg", "나의 스프링 테스트");
		mav.setViewName("result");
		
		return mav;
	}
}
