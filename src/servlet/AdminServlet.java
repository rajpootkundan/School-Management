package servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.AdminModel;
import service.AdminService;

@WebServlet("/Admin")
public class AdminServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		RequestDispatcher rd=null;
		String action=request.getParameter("action");
		if(action==null || action.equals("")){
			rd=request.getRequestDispatcher("index.jsp");
			rd.forward(request, response);
		}
		if(action.equals("details")){
			AdminService aserv=new AdminService();
			List<AdminModel> list=aserv.read();
			request.setAttribute("obj", list);
			rd=request.getRequestDispatcher("adminbalance.jsp");
			rd.forward(request, response);
		}
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		boolean error=true;
		RequestDispatcher rd=null;
		String message="Invailed";
		String adminid=request.getParameter("inputId");
		String password=request.getParameter("inputPassword");
		AdminModel am=new AdminModel();
		am.setId(adminid);
		am.setPassword(password);
		AdminService aserv=new AdminService();
		
		String action=request.getParameter("action");
		if(action.equals("login")){
		
		if(aserv.login(am)){
			error=false;
			message="Login Sucessfull";
			HttpSession session=request.getSession();
			session.setAttribute("id", adminid);
			session.setMaxInactiveInterval(1000);
			
			Cookie c1=new Cookie("id", adminid);
			Cookie c2=new Cookie("password", password);
			c1.setMaxAge(1*60*24);
			c2.setMaxAge(1*60*24);
			rd=request.getRequestDispatcher("index.jsp");
//			response.sendRedirect("index.jsp");
		}
		else{
			error=true;
			message="Login Denied";
			rd=request.getRequestDispatcher("Login.jsp");
		}
		request.setAttribute("error", error);
		request.setAttribute("message", message);
		rd.forward(request, response);
		}
		String adid=request.getParameter("adminid");
		String pass=request.getParameter("adminpass");
		if(action.equals("Change Password")){
			AdminService amserv=new AdminService();
			AdminModel ams=new AdminModel();
			ams.setId(adid);
			ams.setPassword(pass);
			if(amserv.updateById(ams)>0){
				System.out.println("Password change Sucessfully");
				rd=request.getRequestDispatcher("Login.jsp");
				rd.forward(request, response);
			}else{
				System.out.println("Password not channge");
			}
		}
		String name=request.getParameter("name");
		long no=Long.parseLong(request.getParameter("no"));
		String id=request.getParameter("newid");
		String passw=request.getParameter("newpass");
		long account=Long.parseLong(request.getParameter("newaccount"));
		String ifsc=request.getParameter("newifsc");
		Long balance=(long) 0;
		if(action.equals("signin")){
			AdminService serv=new AdminService();
			AdminModel am1=new AdminModel(name, id, passw, ifsc, no, account,balance);
			if(serv.insert(am1)>0){
				System.out.println("Signup Sucessfully");
				rd=request.getRequestDispatcher("Login.jsp");
				rd.forward(request, response);
			}else{
				System.out.println("Unsucessfull");
			}
		}
	}

}
