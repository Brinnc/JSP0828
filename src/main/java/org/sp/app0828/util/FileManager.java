package org.sp.app0828.util;

public class FileManager {
	
	//확장자 얻어오기
	public static String getExt(String path) {
		
		//product-12345.jpg
		return path.substring(path.lastIndexOf(".")+1, path.length()); //exclusive
	}
}
