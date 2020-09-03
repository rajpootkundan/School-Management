package model;

import java.sql.Date;

public class TeacherPaymentModel {
	private long addhar,ad_account,t_account,ammount;
	private String name,sub,ad_ifsc,t_ifsc;
	private Date pay_date;

	@Override
	public String toString() {
		return "TeacherPaymentModel [addhar=" + addhar + ", ad_account="
				+ ad_account + ", t_account=" + t_account + ", ammount="
				+ ammount + ", name=" + name + ", sub=" + sub + ", ad_ifsc="
				+ ad_ifsc + ", t_ifsc=" + t_ifsc + ", pay_date=" + pay_date
				+ "]";
	}

	public long getAddhar() {
		return addhar;
	}

	public void setAddhar(long addhar) {
		this.addhar = addhar;
	}

	public long getAd_account() {
		return ad_account;
	}

	public void setAd_account(long ad_account) {
		this.ad_account = ad_account;
	}

	public long getT_account() {
		return t_account;
	}

	public void setT_account(long t_account) {
		this.t_account = t_account;
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

	public String getSub() {
		return sub;
	}

	public void setSub(String sub) {
		this.sub = sub;
	}

	public String getAd_ifsc() {
		return ad_ifsc;
	}

	public void setAd_ifsc(String ad_ifsc) {
		this.ad_ifsc = ad_ifsc;
	}

	public String getT_ifsc() {
		return t_ifsc;
	}

	public void setT_ifsc(String t_ifsc) {
		this.t_ifsc = t_ifsc;
	}

	public Date getPay_date() {
		return pay_date;
	}

	public void setPay_date(Date pay_date) {
		this.pay_date = pay_date;
	}

	public TeacherPaymentModel(long addhar, long ad_account, long t_account,
			long ammount, String name, String sub, String ad_ifsc, String t_ifsc) {
		super();
		this.addhar = addhar;
		this.ad_account = ad_account;
		this.t_account = t_account;
		this.ammount = ammount;
		this.name = name;
		this.sub = sub;
		this.ad_ifsc = ad_ifsc;
		this.t_ifsc = t_ifsc;
	}

	public TeacherPaymentModel(long addhar, long ad_account, long t_account,
			long ammount, String name, String sub, String ad_ifsc,
			String t_ifsc, Date pay_date) {
		super();
		this.addhar = addhar;
		this.ad_account = ad_account;
		this.t_account = t_account;
		this.ammount = ammount;
		this.name = name;
		this.sub = sub;
		this.ad_ifsc = ad_ifsc;
		this.t_ifsc = t_ifsc;
		this.pay_date = pay_date;
	}

	public TeacherPaymentModel() {
		// TODO Auto-generated constructor stub
	}

}
