package org.sp.app0828.domain;

import lombok.Data;

@Data
public class ProductImg {
	private int product_img_idx;
	private Product product;
	private String filename;
	
}
