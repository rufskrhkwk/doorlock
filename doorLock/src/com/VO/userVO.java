package com.VO;

public class userVO {

	private String customer_id;
	private String customer_pw;
	private String customer_name;
	private String customer_r_num;
	private String customer_sex;
	private String customer_phone;
	private String customer_email;
	
	public userVO(String customer_id, String customer_pw, String customer_name, String customer_r_num, String customer_sex, String customer_phone,
			String customer_email) {
		super();
		this.customer_id = customer_id;
		this.customer_pw = customer_pw;
		this.customer_name = customer_name;
		this.customer_r_num = customer_r_num;
		this.customer_sex = customer_sex;
		this.customer_phone = customer_phone;
		this.customer_email = customer_email;
	}
	public userVO() {
		
	}
	
	public String getCustomer_id() {
		return customer_id;
	}
	
	public String getCustomer_pw() {
		return customer_pw;
	}
	
	public String getCustomer_name() {
		return customer_name;
	}
	public String getCustomer_r_num() {
		return customer_name;
	}
	public String getCustomer_sex() {
		return customer_sex;
	}
	
	public String getCustomer_phone() {
		return customer_phone;
	}
	
	public String getCustomer_email() {
		return customer_email;
	}

}


