package service;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import jdbc.MySQLConnection;
import model.AdminModel;
public class AdminService extends MySQLConnection{
	public boolean login(AdminModel am){
		try(Connection con=this.getCon();
			Statement st=con.createStatement();
			ResultSet rs=st.executeQuery("SELECT * from admin WHERE id='"+am.getId()+"'AND password='"+am.getPassword()+"'")){
			if(rs.next()){
				return true;
			}
		}catch (Exception e) {
			e.printStackTrace();
		}return false;
	}
	public AdminModel readByAccount(long account){
		AdminModel am=null;
		try(Connection conn=this.getCon();
				PreparedStatement pst=conn.prepareStatement("SELECT * FROM admin where account="+account);
				ResultSet rs=pst.executeQuery()){
			while(rs.next()){
				 am=new AdminModel(rs.getLong("account"),rs.getLong("balance"));
			}
		}catch(Exception e) {
			System.out.println("Exception Caught @ SelectData : ");
			e.printStackTrace();
		}
		return am;
	}
	public List<AdminModel> read(){
		List<AdminModel>list=new ArrayList<AdminModel>();
		AdminModel am=null;
		try(Connection conn=this.getCon();
				PreparedStatement pst=conn.prepareStatement("SELECT * FROM admin");
				ResultSet rs=pst.executeQuery()){
			while(rs.next()){
				 am=new AdminModel(rs.getString("name").toUpperCase(),rs.getString("id"),rs.getString("password").toUpperCase(),rs.getString("ifsc").toUpperCase(),rs.getLong("no"),rs.getLong("account"),rs.getLong("balance"));
				 list.add(am);
			}
		}catch(Exception e) {
			System.out.println("Exception Caught @ SelectData : ");
			e.printStackTrace();
		}
		return list;
	}
	public int update(AdminModel am){
		int x=0;
		try(Connection conn=this.getCon();
			Statement st=conn.createStatement()){
			x=st.executeUpdate("UPDATE admin SET balance="+am.getBalance()+" where account="+am.getAccount());
		}
		catch (Exception e) {
			e.printStackTrace();
		}
		return x;
	}
	public int updateById(AdminModel am){
		int x=0;
		try(Connection conn=this.getCon();
			Statement st=conn.createStatement()){
			x=st.executeUpdate("UPDATE admin SET password='"+am.getPassword()+"' where id='"+am.getId()+"'");
		}
		catch (Exception e) {
			e.printStackTrace();
		}
		return x;
	}
	public int insert(AdminModel am){
		int x=0;
		try(Connection conn=this.getCon();
		PreparedStatement pst=conn.prepareStatement("insert into admin(name,no,id,password,account,ifsc,balance)values(?,?,?,?,?,?,?)")){
			pst.setString(1, am.getName());
			pst.setLong(2, am.getNo());
			pst.setString(3, am.getId());
			pst.setString(4, am.getPassword());
			pst.setLong(5, am.getAccount());
			pst.setString(6, am.getIfsc());
			pst.setLong(7, am.getBalance());
			x=pst.executeUpdate();
			return x;
		}catch (Exception e) {
			e.printStackTrace();
		}
		return 0;
	}
}
