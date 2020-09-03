package model;

import java.sql.Date;

public class TeachersModel {
	private String name,mname,fname,vill,cat,quli,sub,collage,address,email;
	private long addhar,no;
	private Date dob,joindate;
		public TeachersModel(String name, String mname, String fname, String vill,
			String cat, String quli, String sub, String collage,
			String address, String email, long addhar, long no, Date dob) {
		super();
		this.name = name;
		this.mname = mname;
		this.fname = fname;
		this.vill = vill;
		this.cat = cat;
		this.quli = quli;
		this.sub = sub;
		this.collage = collage;
		this.address = address;
		this.email = email;
		this.addhar = addhar;
		this.no = no;
		this.dob = dob;
	}
		@Override
		public String toString() {
			return "TeachersModel [name=" + name + ", mname=" + mname
					+ ", fname=" + fname + ", vill=" + vill + ", cat=" + cat
					+ ", quli=" + quli + ", sub=" + sub + ", collage="
					+ collage + ", address=" + address + ", email=" + email
					+ ", addhar=" + addhar + ", no=" + no + ", dob=" + dob
					+ ", joindate=" + joindate + "]";
		}
		public String getName() {
			return name;
		}
		public void setName(String name) {
			this.name = name;
		}
		public String getMname() {
			return mname;
		}
		public void setMname(String mname) {
			this.mname = mname;
		}
		public String getFname() {
			return fname;
		}
		public void setFname(String fname) {
			this.fname = fname;
		}
		public String getVill() {
			return vill;
		}
		public void setVill(String vill) {
			this.vill = vill;
		}
		public String getCat() {
			return cat;
		}
		public void setCat(String cat) {
			this.cat = cat;
		}
		public String getQuli() {
			return quli;
		}
		public void setQuli(String quli) {
			this.quli = quli;
		}
		public String getSub() {
			return sub;
		}
		public void setSub(String sub) {
			this.sub = sub;
		}
		public String getCollage() {
			return collage;
		}
		public void setCollage(String collage) {
			this.collage = collage;
		}
		public String getAddress() {
			return address;
		}
		public void setAddress(String address) {
			this.address = address;
		}
		public String getEmail() {
			return email;
		}
		public void setEmail(String email) {
			this.email = email;
		}
		public long getAddhar() {
			return addhar;
		}
		public void setAddhar(long addhar) {
			this.addhar = addhar;
		}
		public long getNo() {
			return no;
		}
		public void setNo(long no) {
			this.no = no;
		}
		public Date getDob() {
			return dob;
		}
		public void setDob(Date dob) {
			this.dob = dob;
		}
		public Date getJoindate() {
			return joindate;
		}
		public void setJoindate(Date joindate) {
			this.joindate = joindate;
		}
		public TeachersModel(String name, String mname, String fname, String vill,
			String cat, String quli, String sub, String collage,
			String address, String email, long addhar, long no, Date dob,
			Date joindate) {
		super();
		this.name = name;
		this.mname = mname;
		this.fname = fname;
		this.vill = vill;
		this.cat = cat;
		this.quli = quli;
		this.sub = sub;
		this.collage = collage;
		this.address = address;
		this.email = email;
		this.addhar = addhar;
		this.no = no;
		this.dob = dob;
		this.joindate = joindate;
	}
		public TeachersModel() {
		// TODO Auto-generated constructor stub
	}

}
