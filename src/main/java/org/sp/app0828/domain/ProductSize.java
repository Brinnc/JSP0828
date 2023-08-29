package org.sp.app0828.domain;

import lombok.Data;

@Data
public class ProductSize {
	private int product_size_idx;
	private Product product;
	private SizeInfo sizeInfo;
	
}
