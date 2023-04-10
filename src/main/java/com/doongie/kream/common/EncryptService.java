package com.doongie.kream.common;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

public class EncryptService {
	
	public static String md5(String message) {
		
		String resultString = "";
		
		try {
			MessageDigest md = MessageDigest.getInstance("md5");
			
			byte[] bytes= message.getBytes();
			md.update(bytes);
			
			byte[] digest = md.digest();
			
			// 16진수 형태의 문자열로 변환			
			for(int i = 0; i < digest.length; i++) {
				
				resultString += Integer.toHexString(digest[i] & 0xff);
			}
			
		} catch (NoSuchAlgorithmException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return resultString;
	}

}
