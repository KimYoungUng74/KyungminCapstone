package com.spring.banzzack.dto;

import java.util.Date;

public class UserDTO {
	 	private String USER_ID;		// 유저 아이디
	    private String USER_PW;		// 유저 비밀번호
	    private String USER_NAME;	// 유저 이름
	    private String USER_EMAIL;	// 유저 이메일
	    private String USER_PHONE; // 유저 전화번호
	    private String USER_ADDRESS1; // 유저 주소
	    private String USER_ADDRESS2; // 유저 주소
	    private String USER_ADDRESS3; // 유저 주소
	    private byte USER_GRANT;	 // 유저 권한
		public String getUSER_ID() {
			return USER_ID;
		}
		public void setUSER_ID(String uSER_ID) {
			USER_ID = uSER_ID;
		}
		public String getUSER_PW() {
			return USER_PW;
		}
		public void setUSER_PW(String uSER_PW) {
			USER_PW = uSER_PW;
		}
		public String getUSER_NAME() {
			return USER_NAME;
		}
		public void setUSER_NAME(String uSER_NAME) {
			USER_NAME = uSER_NAME;
		}
		public String getUSER_EMAIL() {
			return USER_EMAIL;
		}
		public void setUSER_EMAIL(String uSER_EMAIL) {
			USER_EMAIL = uSER_EMAIL;
		}
		public String getUSER_PHONE() {
			return USER_PHONE;
		}
		public void setUSER_PHONE(String uSER_PHONE) {
			USER_PHONE = uSER_PHONE;
		}
		public String getUSER_ADDRESS1() {
			return USER_ADDRESS1;
		}
		public void setUSER_ADDRESS1(String uSER_ADDRESS1) {
			USER_ADDRESS1 = uSER_ADDRESS1;
		}
		public String getUSER_ADDRESS2() {
			return USER_ADDRESS2;
		}
		public void setUSER_ADDRESS2(String uSER_ADDRESS2) {
			USER_ADDRESS2 = uSER_ADDRESS2;
		}
		public String getUSER_ADDRESS3() {
			return USER_ADDRESS3;
		}
		public void setUSER_ADDRESS3(String uSER_ADDRESS3) {
			USER_ADDRESS3 = uSER_ADDRESS3;
		}
		public byte getUSER_GRANT() {
			return USER_GRANT;
		}
		public void setUSER_GRANT(byte uSER_GRANT) {
			USER_GRANT = uSER_GRANT;
		}
		
		@Override
		public String toString() {
			return "UserDTO [USER_ID=" + USER_ID + ", USER_PW=" + USER_PW + ", USER_NAME=" + USER_NAME
					+ ", USER_EMAIL1=" + USER_EMAIL + ", USER_PHONE1=" + USER_PHONE + ", USER_ADDRESS1="
					+ USER_ADDRESS1 + ", USER_ADDRESS2=" + USER_ADDRESS2 + ", USER_ADDRESS3=" + USER_ADDRESS3
					+ ", USER_GRANT=" + USER_GRANT + ", getUSER_ID()=" + getUSER_ID() + ", getUSER_PW()=" + getUSER_PW()
					+ ", getUSER_NAME()=" + getUSER_NAME() + ", getUSER_EMAIL1()=" + getUSER_EMAIL()
					+ ", getUSER_PHONE1()=" + getUSER_PHONE() + ", getUSER_ADDRESS1()=" + getUSER_ADDRESS1()
					+ ", getUSER_ADDRESS2()=" + getUSER_ADDRESS2() + ", getUSER_ADDRESS3()=" + getUSER_ADDRESS3()
					+ ", getUSER_GRANT()=" + getUSER_GRANT() + ", getClass()=" + getClass() + ", hashCode()="
					+ hashCode() + ", toString()=" + super.toString() + "]";
		}
	    
		
	    
	    
}
