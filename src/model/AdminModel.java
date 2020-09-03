package model;

public class AdminModel {
	private String name,id,password,ifsc;
	private long no,account,balance;
	public AdminModel(String name, String id, String password, String ifsc,
			long no, long account, long balance) {
		super();
		this.name = name;
		this.id = id;
		this.password = password;
		this.ifsc = ifsc;
		this.no = no;
		this.account = account;
		this.balance = balance;
	}
	@Override
	public String toString() {
		return "AdminModel [name=" + name + ", id=" + id + ", password="
				+ password + ", ifsc=" + ifsc + ", no=" + no + ", account="
				+ account + ", balance=" + balance + "]";
	}
	public AdminModel() {
		super();
		// TODO Auto-generated constructor stub
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getIfsc() {
		return ifsc;
	}
	public void setIfsc(String ifsc) {
		this.ifsc = ifsc;
	}
	public long getNo() {
		return no;
	}
	public void setNo(long no) {
		this.no = no;
	}
	public long getAccount() {
		return account;
	}
	public void setAccount(long account) {
		this.account = account;
	}
	public long getBalance() {
		return balance;
	}
	public void setBalance(long balance) {
		this.balance = balance;
	}
	public AdminModel(long account, long balance) {
		super();
		this.account = account;
		this.balance = balance;
	}
	public AdminModel(String id, String password) {
		super();
		this.id = id;
		this.password = password;
	}
	public AdminModel(String name, String id, String password, String ifsc,
			long no, long account) {
		super();
		this.name = name;
		this.id = id;
		this.password = password;
		this.ifsc = ifsc;
		this.no = no;
		this.account = account;
	}
}
