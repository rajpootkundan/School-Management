package model;

import java.sql.Date;

public class StudentModel {
	private String name,mname,fname,vill,cat,quli,program,collage,address,email;
	private int roll;
	private long addhar,no;
	private Date dob,admissiondate;
	public StudentModel( int roll,String name, String mname, String fname, String vill,
			String cat, String quli, String program, String collage,
			String address, String email, long addhar, long no,
			Date dob, Date admissiondate) {
		super();
		this.name = name;
		this.mname = mname;
		this.fname = fname;
		this.vill = vill;
		this.cat = cat;
		this.quli = quli;
		this.program = program;
		this.collage = collage;
		this.address = address;
		this.email = email;
		this.roll = roll;
		this.addhar = addhar;
		this.no = no;
		this.dob = dob;
		this.admissiondate = admissiondate;
	}
	public StudentModel(String name, String mname, String fname, String vill,
			String cat, String quli, String program, String collage,
			String address, String email, long addhar, long no, Date dob) {
		super();
		this.name = name;
		this.mname = mname;
		this.fname = fname;
		this.vill = vill;
		this.cat = cat;
		this.quli = quli;
		this.program = program;
		this.collage = collage;
		this.address = address;
		this.email = email;
		this.addhar = addhar;
		this.no = no;
		this.dob = dob;
	}
	
	public StudentModel() {
		super();
		// TODO Auto-generated constructor stub
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
	public String getProgram() {
		return program;
	}
	public void setProgram(String program) {
		this.program = program;
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
	public int getRoll() {
		return roll;
	}
	public void setRoll(int roll) {
		this.roll = roll;
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
	public Date getAdmissiondate() {
		return admissiondate;
	}
	public void setAdmissiondate(Date admissiondate) {
		this.admissiondate = admissiondate;
	}
	@Override
	public String toString() {
		return "StudentModel [name=" + name + ", mname=" + mname + ", fname="
				+ fname + ", vill=" + vill + ", cat=" + cat + ", quli=" + quli
				+ ", program=" + program + ", collage=" + collage
				+ ", address=" + address + ", email=" + email + ", roll="
				+ roll + ", addhar=" + addhar + ", no=" + no + ", dob=" + dob
				+ ", admissiondate=" + admissiondate + "]";
	}
	
}
