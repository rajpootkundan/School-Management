package model;

import java.sql.Date;

public class StudentFeeModel {
	private long roll,ad_account,st_account,ammount;
	private String name,programe,ad_ifsc,st_ifsc;
	private Date pay_date;
	@Override
	public String toString() {
		return "StudentFeeModel [roll=" + roll + ", ad_account=" + ad_account
				+ ", st_account=" + st_account + ", ammount=" + ammount
				+ ", name=" + name + ", programe=" + programe + ", ad_ifsc="
				+ ad_ifsc + ", st_ifsc=" + st_ifsc + ", pay_date=" + pay_date
				+ "]";
	}
	public long getRoll() {
		return roll;
	}
	public void setRoll(long roll) {
		this.roll = roll;
	}
	public long getAd_account() {
		return ad_account;
	}
	public void setAd_account(long ad_account) {
		this.ad_account = ad_account;
	}
	public long getSt_account() {
		return st_account;
	}
	public void setSt_account(long st_account) {
		this.st_account = st_account;
	}
	public long getAmmount() {
		return ammount;
	}
	public void setAmmount(long ammount) {
		this.ammount = ammount;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPrograme() {
		return programe;
	}
	public void setPrograme(String programe) {
		this.programe = programe;
	}
	public String getAd_ifsc() {
		return ad_ifsc;
	}
	public void setAd_ifsc(String ad_ifsc) {
		this.ad_ifsc = ad_ifsc;
	}
	public String getSt_ifsc() {
		return st_ifsc;
	}
	public void setSt_ifsc(String st_ifsc) {
		this.st_ifsc = st_ifsc;
	}
	public Date getPay_date() {
		return pay_date;
	}
	public void setPay_date(Date pay_date) {
		this.pay_date = pay_date;
	}
	public StudentFeeModel(long roll, long ad_account, long st_account,
			long ammount, String name, String programe, String ad_ifsc,
			String st_ifsc) {
		super();
		this.roll = roll;
		this.ad_account = ad_account;
		this.st_account = st_account;
		this.ammount = ammount;
		this.name = name;
		this.programe = programe;
		this.ad_ifsc = ad_ifsc;
		this.st_ifsc = st_ifsc;
	}
	public StudentFeeModel(long roll, long ad_account, long st_account,
			long ammount, String name, String programe, String ad_ifsc,
			String st_ifsc, Date pay_date) {
		super();
		this.roll = roll;
		this.ad_account = ad_account;
		this.st_account = st_account;
		this.ammount = ammount;
		this.name = name;
		this.programe = programe;
		this.ad_ifsc = ad_ifsc;
		this.st_ifsc = st_ifsc;
		this.pay_date = pay_date;
	}
	public StudentFeeModel() {
		// TODO Auto-generated constructor stub
	}

}
