package jdbc;
import java.sql.*;

public class MySQLConnection {
	private Connection conn;
	public MySQLConnection()
	{
		try {
			if(conn != null) {
				conn.close();
			} else {
				conn = null;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	public Connection getCon()
	{
		
		conn=null;
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/School","root","");
		}
		catch(Exception e)
		{
			System.out.println("Exception Caught @ MySQLConnection : ");
			e.printStackTrace();
		}
		return conn;
	}
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		MySQLConnection obj=new MySQLConnection();
		Connection conn=obj.getCon();
		if(conn==null)
			System.out.println("Faild to Connection");
		else
			System.out.println("Connection Eastablished");
	}

}
