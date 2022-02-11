package com.VO;

public class hostVO {
	
	private String host_id;
	private String host_pw;
	private String host_name;
	private String host_phone;
	private String host_email;
	public hostVO(String host_id, String host_pw, String host_name, String host_phone, String host_email) {
		super();
		this.host_id = host_id;
		this.host_pw = host_pw;
		this.host_name = host_name;
		this.host_phone = host_phone;
		this.host_email = host_email;
	}
	public String getHost_id() {
		return host_id;
	}
	
	public String getHost_pw() {
		return host_pw;
	}
	
	public String getHost_name() {
		return host_name;
	}
	
	public String getHost_phone() {
		return host_phone;
	}
	
	public String getHost_email() {
		return host_email;
	}
	
	

}
