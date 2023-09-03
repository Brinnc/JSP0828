package org.sp.app0828.domain;

import org.springframework.web.multipart.MultipartFile;

import lombok.Data;

@Data
public class Product {
	private int product_idx;
	private SubCategory subCategory; //DB관계에서의 부모DTO보유
	private String product_name;
	private String brand;
	private int price;
	private String detail;
	
	private MultipartFile photo; //html 컴포넌트의 이름과 일치해야 자동으로 받아짐
	
}
