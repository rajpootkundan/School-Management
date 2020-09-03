package service;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import jdbc.MySQLConnection;
import model.TeacherPaymentModel;
import model.TeachersModel;

public class TeacherService extends MySQLConnection{

	public int insert(TeachersModel tm){
		try(Connection con=this.getCon();
			PreparedStatement pst=con.prepareStatement("insert into teacher"
					+ "(name,father_name,mother_name,village,category,qualification,sub,collage,address,addhar,no,email,dob ) values"
					+ "(?,?,?,?,?,?,?,?,?,?,?,?,?)")){
			pst.setString(1, tm.getName().toUpperCase());
			pst.setString(2, tm.getFname().toUpperCase());
			pst.setString(3, tm.getMname().toUpperCase());
			pst.setString(4, tm.getVill().toUpperCase());
			pst.setString(5, tm.getCat().toUpperCase());
			pst.setString(6, tm.getQuli().toUpperCase());
			pst.setString(7, tm.getSub().toUpperCase());
			pst.setString(8, tm.getCollage().toUpperCase());
			pst.setString(9, tm.getAddress().toUpperCase());
			pst.setLong(10, tm.getAddhar());
			pst.setLong(11, tm.getNo());
			pst.setString(12, tm.getEmail());
			pst.setDate(13, tm.getDob());
			int x=pst.executeUpdate();
			return x;
		}catch (Exception e) {
			e.printStackTrace();
		}
		return 0;
	}
	public int update(TeachersModel tm){
		try(Connection con=this.getCon();
			PreparedStatement pst=con.prepareStatement("update teacher set name=?,father_name=?,mother_name=?,village=?,category=?,qualification=?,sub=?,collage=?,address=?,addhar=?,no=?,dob=? where email=?")){
			pst.setString(1, tm.getName().toUpperCase());
			pst.setString(2, tm.getFname().toUpperCase());
			pst.setString(3, tm.getMname().toUpperCase());
			pst.setString(4, tm.getVill().toUpperCase());
			pst.setString(5, tm.getCat().toUpperCase());
			pst.setString(6, tm.getQuli().toUpperCase());
			pst.setString(7, tm.getSub().toUpperCase());
			pst.setString(8, tm.getCollage().toUpperCase());
			pst.setString(9, tm.getAddress().toUpperCase());
			pst.setLong(10, tm.getAddhar());
			pst.setLong(11, tm.getNo());
			pst.setDate(12, tm.getDob());
			pst.setString(13, tm.getEmail());
			int x=pst.executeUpdate();
			return x;
		}catch (Exception e) {
			e.printStackTrace();
		}
		return 0;
	}
	public int paid(TeacherPaymentModel tfm){
		try(Connection con=this.getCon();
			PreparedStatement pst=con.prepareStatement("insert into teacherpayment"
					+ "(addhar,name,sub,ad_account,ad_ifsc,t_account,t_ifsc,ammount ) values"
					+ "(?,?,?,?,?,?,?,?)")){
			pst.setLong(1, tfm.getAddhar());
			pst.setString(2, tfm.getName().toUpperCase());
			pst.setString(3, tfm.getSub().toUpperCase());
			pst.setLong(4, tfm.getAd_account());
			pst.setString(5, tfm.getAd_ifsc().toUpperCase());
			pst.setLong(6, tfm.getT_account());
			pst.setString(7, tfm.getT_ifsc().toUpperCase());
			pst.setLong(8, tfm.getAmmount());
			int x=pst.executeUpdate();
			return x;
		}catch (Exception e) {
			e.printStackTrace();
		}
		return 0;
	}
	public List<TeachersModel> read(){
		List<TeachersModel> list=new ArrayList<TeachersModel>();
		TeachersModel tm=null;
		try(Connection con=this.getCon();
			PreparedStatement pst=con.prepareStatement("SELECT * FROM teacher");
			ResultSet rs=pst.executeQuery()){
			while(rs.next()){
				 tm=new TeachersModel(
						rs.getString("name").toUpperCase(),
						rs.getString("mother_name").toUpperCase(),
						rs.getString("father_name").toUpperCase(),
						rs.getString("village").toUpperCase(),
						rs.getString("category").toUpperCase(),
						rs.getString("qualification").toUpperCase(),
						rs.getString("sub").toUpperCase(),
						rs.getString("collage").toUpperCase(),
						rs.getString("address").toUpperCase(),
						rs.getString("email"),
						rs.getLong("addhar"),
						rs.getLong("no"),
						rs.getDate("dob"),
						rs.getDate("joindate"));
				list.add(tm);
				System.out.println(list);
			}
		}catch (Exception e) {
			e.printStackTrace();
		}return list;
	}
	public TeachersModel readByAddhar(long addhar){
		TeachersModel tm=null;
		try(Connection conn=this.getCon();
				PreparedStatement pst=conn.prepareStatement("SELECT * FROM teacher where addhar="+addhar);
				ResultSet rs=pst.executeQuery()){
			while(rs.next()){
				 tm=new TeachersModel(
						rs.getString("name").toUpperCase(),
						rs.getString("mother_name").toUpperCase(),
						rs.getString("father_name").toUpperCase(),
						rs.getString("village").toUpperCase(),
						rs.getString("category").toUpperCase(),
						rs.getString("qualification").toUpperCase(),
						rs.getString("sub").toUpperCase(),
						rs.getString("collage").toUpperCase(),
						rs.getString("address").toUpperCase(),
						rs.getString("email"),
						rs.getLong("addhar"),
						rs.getLong("no"),
						rs.getDate("dob"),
						rs.getDate("joindate"));
			}
		}catch(Exception e) {
			System.out.println("Exception Caught @ SelectData : ");
			e.printStackTrace();
		}
		return tm;
	}
	public long deleteByAddhar(long Addhar){
		long x=0;
		try(Connection con=this.getCon();
			PreparedStatement pst=con.prepareStatement("delete from teacher where addhar="+Addhar)){
			x=pst.executeUpdate();
		}catch(Exception e){
			e.printStackTrace();
		}return x;
	}

}
