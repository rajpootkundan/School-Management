package service;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import jdbc.MySQLConnection;
import model.AdminModel;
import model.StudentFeeModel;
import model.StudentModel;

public class StudentService extends MySQLConnection{
	public int insert(StudentModel sm){
		try(Connection con=this.getCon();
			PreparedStatement pst=con.prepareStatement("insert into student"
					+ "(name,father_name,mother_name,village,category,qualification,programme,collage,address,addhar,no,email,dob ) values"
					+ "(?,?,?,?,?,?,?,?,?,?,?,?,?)")){
			pst.setString(1, sm.getName().toUpperCase());
			pst.setString(2, sm.getFname().toUpperCase());
			pst.setString(3, sm.getMname().toUpperCase());
			pst.setString(4, sm.getVill().toUpperCase());
			pst.setString(5, sm.getCat().toUpperCase());
			pst.setString(6, sm.getQuli().toUpperCase());
			pst.setString(7, sm.getProgram().toUpperCase());
			pst.setString(8, sm.getCollage().toUpperCase());
			pst.setString(9, sm.getAddress().toUpperCase());
			pst.setLong(10, sm.getAddhar());
			pst.setLong(11, sm.getNo());
			pst.setString(12, sm.getEmail());
			pst.setDate(13, sm.getDob());
			int x=pst.executeUpdate();
			return x;
		}catch (Exception e) {
			e.printStackTrace();
		}
		return 0;
	}
	public int update(StudentModel sm){
		try(Connection con=this.getCon();
			PreparedStatement pst=con.prepareStatement("update student set name=?,father_name=?"
					+ ",mother_name=?,village=?,category=?,qualification=?,programme=?,collage=?"
					+ ",address=?,addhar=?,no=?,email=?,dob=? where roll=?")){
			pst.setString(1, sm.getName().toUpperCase());
			pst.setString(2, sm.getFname().toUpperCase());
			pst.setString(3, sm.getMname().toUpperCase());
			pst.setString(4, sm.getVill().toUpperCase());
			pst.setString(5, sm.getCat().toUpperCase());
			pst.setString(6, sm.getQuli().toUpperCase());
			pst.setString(7, sm.getProgram().toUpperCase());
			pst.setString(8, sm.getCollage().toUpperCase());
			pst.setString(9, sm.getAddress().toUpperCase());
			pst.setLong(10, sm.getAddhar());
			pst.setLong(11, sm.getNo());
			pst.setString(12, sm.getEmail());
			pst.setDate(13, sm.getDob());
			pst.setInt(14, sm.getRoll());
			int x=pst.executeUpdate();
			return x;
		}catch (Exception e) {
			e.printStackTrace();
		}
		return 0;
	}
	public int paid(StudentFeeModel sfm){
		try(Connection con=this.getCon();
			PreparedStatement pst=con.prepareStatement("insert into studentfee"
					+ "(roll,name,programe,ad_account,ad_ifsc,st_account,st_ifsc,ammount ) values"
					+ "(?,?,?,?,?,?,?,?)")){
			pst.setLong(1, sfm.getRoll());
			pst.setString(2, sfm.getName().toUpperCase());
			pst.setString(3, sfm.getPrograme().toUpperCase());
			pst.setLong(4, sfm.getAd_account());
			pst.setString(5, sfm.getAd_ifsc().toUpperCase());
			pst.setLong(6, sfm.getSt_account());
			pst.setString(7, sfm.getSt_ifsc().toUpperCase());
			pst.setLong(8, sfm.getAmmount());
			int x=pst.executeUpdate();
			return x;
		}catch (Exception e) {
			e.printStackTrace();
		}
		return 0;
	}
	public List<StudentModel> read(){
		List<StudentModel> list=new ArrayList<StudentModel>();
		StudentModel sm=null;
		try(Connection con=this.getCon();
			PreparedStatement pst=con.prepareStatement("SELECT * FROM student");
			ResultSet rs=pst.executeQuery()){
			while(rs.next()){
				//System.out.println(sm);
				 sm=new StudentModel(rs.getInt("roll"),
						rs.getString("name").toUpperCase(),
						rs.getString("mother_name").toUpperCase(),
						rs.getString("father_name").toUpperCase(),
						rs.getString("village").toUpperCase(),
						rs.getString("category").toUpperCase(),
						rs.getString("qualification").toUpperCase(),
						rs.getString("programme").toUpperCase(),
						rs.getString("collage").toUpperCase(),
						rs.getString("address").toUpperCase(),
						rs.getString("email"),
						rs.getLong("no"),
						rs.getLong("addhar"),
						rs.getDate("dob"),
						rs.getDate("admission_date"));
				System.out.println(sm);
//				StudentModel sm=new  StudentModel(roll, name, mname, fname, vill, cat, quli, program, collage, address, email, addhar, no, dob, admissiondate)
				list.add(sm);
				System.out.println(list);
			}
		}catch (Exception e) {
			e.printStackTrace();
		}return list;
	}
	public List<StudentModel> getListByName(String searchkey){
		List<StudentModel> list=new ArrayList<StudentModel>();
		StudentModel sm=null;
		String query="SELECT * FROM student WHERE lower(name) LIKE ?";
		try(Connection con=this.getCon();
			PreparedStatement pst=con.prepareStatement(query)){
			pst.setString(1, "%"+searchkey.toLowerCase()+"%");
			
			try(ResultSet rs=pst.executeQuery()){
				while(rs.next()){
					 sm=new StudentModel(rs.getInt("roll"),
								rs.getString("name").toUpperCase(),
								rs.getString("mother_name").toUpperCase(),
								rs.getString("father_name").toUpperCase(),
								rs.getString("village").toUpperCase(),
								rs.getString("category").toUpperCase(),
								rs.getString("qualification").toUpperCase(),
								rs.getString("programme").toUpperCase(),
								rs.getString("collage").toUpperCase(),
								rs.getString("address").toUpperCase(),
								rs.getString("email"),
								rs.getLong("no"),
								rs.getLong("addhar"),
								rs.getDate("dob"),
								rs.getDate("admission_date"));
						list.add(sm);
						
				}
			}
		}
		catch (Exception e) {
			e.printStackTrace();
		}System.out.println(list);
		return list;
	}
	public List<StudentModel> getListByProgramme(String searchkey){
		List<StudentModel> list=new ArrayList<StudentModel>();
		StudentModel sm=null;
		String query="SELECT * FROM student WHERE lower(programme) LIKE ?";
		try(Connection con=this.getCon();
			PreparedStatement pst=con.prepareStatement(query)){
			pst.setString(1, "%"+searchkey.toLowerCase()+"%");
			
			try(ResultSet rs=pst.executeQuery()){
				while(rs.next()){
					 sm=new StudentModel(rs.getInt("roll"),
								rs.getString("name").toUpperCase(),
								rs.getString("mother_name").toUpperCase(),
								rs.getString("father_name").toUpperCase(),
								rs.getString("village").toUpperCase(),
								rs.getString("category").toUpperCase(),
								rs.getString("qualification").toUpperCase(),
								rs.getString("programme").toUpperCase(),
								rs.getString("collage").toUpperCase(),
								rs.getString("address").toUpperCase(),
								rs.getString("email"),
								rs.getLong("no"),
								rs.getLong("addhar"),
								rs.getDate("dob"),
								rs.getDate("admission_date"));
						list.add(sm);
						
				}
			}
		}
		catch (Exception e) {
			e.printStackTrace();
		}System.out.println(list);
		return list;
	}
	public List<StudentModel> getListByCollege(String searchkey){
		List<StudentModel> list=new ArrayList<StudentModel>();
		StudentModel sm=null;
		String query="SELECT * FROM student WHERE lower(collage) LIKE ?";
		try(Connection con=this.getCon();
			PreparedStatement pst=con.prepareStatement(query)){
			pst.setString(1, "%"+searchkey.toLowerCase()+"%");
			
			try(ResultSet rs=pst.executeQuery()){
				while(rs.next()){
					 sm=new StudentModel(rs.getInt("roll"),
								rs.getString("name").toUpperCase(),
								rs.getString("mother_name").toUpperCase(),
								rs.getString("father_name").toUpperCase(),
								rs.getString("village").toUpperCase(),
								rs.getString("category").toUpperCase(),
								rs.getString("qualification").toUpperCase(),
								rs.getString("programme").toUpperCase(),
								rs.getString("collage").toUpperCase(),
								rs.getString("address").toUpperCase(),
								rs.getString("email"),
								rs.getLong("no"),
								rs.getLong("addhar"),
								rs.getDate("dob"),
								rs.getDate("admission_date"));
						list.add(sm);
						
				}
			}
		}
		catch (Exception e) {
			e.printStackTrace();
		}System.out.println(list);
		return list;
		
	}
	public StudentModel readByRoll(int roll){
		StudentModel sm=null;
		try(Connection conn=this.getCon();
				PreparedStatement pst=conn.prepareStatement("SELECT * FROM student where roll="+roll);
				ResultSet rs=pst.executeQuery()){
			while(rs.next()){
				 sm=new StudentModel(rs.getInt("roll"),
						rs.getString("name").toUpperCase(),
						rs.getString("mother_name").toUpperCase(),
						rs.getString("father_name").toUpperCase(),
						rs.getString("village").toUpperCase(),
						rs.getString("category").toUpperCase(),
						rs.getString("qualification").toUpperCase(),
						rs.getString("programme").toUpperCase(),
						rs.getString("collage").toUpperCase(),
						rs.getString("address").toUpperCase(),
						rs.getString("email"),
						rs.getLong("addhar"),
						rs.getLong("no"),
						rs.getDate("dob"),
						rs.getDate("admission_date"));
			}
		}catch(Exception e) {
			System.out.println("Exception Caught @ SelectData : ");
			e.printStackTrace();
		}
		return sm;
	}
	public int deleteByRoll(int roll){
		int x=0;
		try(Connection con=this.getCon();
			PreparedStatement pst=con.prepareStatement("delete from student where roll="+roll)){
			x=pst.executeUpdate();
		}catch(Exception e){
			e.printStackTrace();
		}return x;
	}
}
