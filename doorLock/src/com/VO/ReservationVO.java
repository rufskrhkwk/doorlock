package com.VO;

public class ReservationVO {
	private String reservation_num;
	private String room_num;
	private String hotel_uid;
	private String customer_id;
	private String checkin_date; 
	private String checkout_date; 
	private boolean is_checkin; 
	private String reservation_key; 
	private String num_of_people; 
	private String status;
	private String customer_name;
	private String customer_phone;
	private boolean customer_sex;

	public ReservationVO(String reservation_num, String room_num, String hotel_uid, String customer_id,
			String checkin_date, String checkout_date, boolean is_checkin, String reservation_key, String num_of_people,
			String status) {
		super();
		this.reservation_num = reservation_num;
		this.room_num = room_num;
		this.hotel_uid = hotel_uid;
		this.customer_id = customer_id;
		this.checkin_date = checkin_date;
		this.checkout_date = checkout_date;
		this.is_checkin = is_checkin;
		this.reservation_key = reservation_key;
		this.num_of_people = num_of_people;
		this.status = status;
	}
	
	public ReservationVO(String reservation_num,String room_num,String customer_name, String customer_phone, String checkin_date, String checkout_date, String status,boolean customer_sex,String num_of_people, boolean is_checkin) {
		this.reservation_num = reservation_num;
		this.room_num = room_num;
		this.customer_name = customer_name;
		this.customer_phone = customer_phone;
		this.checkin_date = checkin_date;
		this.checkout_date = checkout_date;
		this.status = status;
		this.customer_sex = customer_sex;
		this.num_of_people = num_of_people;
		this.is_checkin = is_checkin;
	}

	public String getReservation_num() {
		return reservation_num;
	}

	public void setReservation_num(String reservation_num) {
		this.reservation_num = reservation_num;
	}

	public String getRoom_num() {
		return room_num;
	}

	public void setRoom_num(String room_num) {
		this.room_num = room_num;
	}

	public String getHotel_uid() {
		return hotel_uid;
	}

	public void setHotel_uid(String hotel_uid) {
		this.hotel_uid = hotel_uid;
	}

	public String getCustomer_id() {
		return customer_id;
	}

	public void setCustomer_id(String customer_id) {
		this.customer_id = customer_id;
	}

	public String getCheckin_date() {
		return checkin_date;
	}

	public void setCheckin_date(String checkin_date) {
		this.checkin_date = checkin_date;
	}

	public String getCheckout_date() {
		return checkout_date;
	}

	public void setCheckout_date(String checkout_date) {
		this.checkout_date = checkout_date;
	}

	public boolean getIs_checkin() {
		return is_checkin;
	}

	public void setIs_checkin(boolean is_checkin) {
		this.is_checkin = is_checkin;
	}

	public String getReservation_key() {
		return reservation_key;
	}

	public void setReservation_key(String reservation_key) {
		this.reservation_key = reservation_key;
	}

	public String getNum_of_people() {
		return num_of_people;
	}

	public void setNum_of_people(String num_of_people) {
		this.num_of_people = num_of_people;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public String getCustomer_name() {
		return customer_name;
	}

	public void setCustomer_name(String customer_name) {
		this.customer_name = customer_name;
	}

	public String getCustomer_phone() {
		return customer_phone;
	}

	public void setCustomer_phone(String customer_phone) {
		this.customer_phone = customer_phone;
	}

	public boolean getCustomer_sex() {
		return customer_sex;
	}

	public void setCustomer_sex(boolean customer_sex) {
		this.customer_sex = customer_sex;
	}

}
