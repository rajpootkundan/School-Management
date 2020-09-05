package servlet;

import java.io.IOException;
import java.sql.Date;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.AdminModel;
import model.TeacherPaymentModel;
import model.TeachersModel;
import service.AdminService;
import service.TeacherService;

@WebServlet("/Teacher")
public class TeachersServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String action=request.getParameter("action");
		RequestDispatcher dispach=null;
		if(action==null || action.equals("")){
			dispach=request.getRequestDispatcher("index.html");
			dispach.forward(request, response);
		}
		TeacherService tserv=new TeacherService();
		if(action.equals("lists")){
			List<TeachersModel> list=tserv.read();
			request.setAttribute("teacherslist", list);
			RequestDispatcher rd=request.getRequestDispatcher("teacherslist.jsp");
			rd.forward(request, response);
		}
		if(action.equals("details")){
			long addhar=Long.parseLong(request.getParameter("addhar"));
			TeachersModel tm=tserv.readByAddhar(addhar);
			request.setAttribute("obj", tm);
			RequestDispatcher rd=request.getRequestDispatcher("teachersdetails.jsp");
			rd.forward(request, response);
		}
		if(action.equals("delete")){
			if(request.getParameter("addhar")==null){
				response.getWriter().println("Bad Request");
			}else{
				long addhar=Long.parseLong(request.getParameter("addhar")) ;
				long x=tserv.deleteByAddhar(addhar);
				if(x==0){
					response.getWriter().println("Data not Found");
				}else{
					response.sendRedirect("Teacher?action=dlist");
				}
			}
		}
		if(action.equals("dlist")){
			List<TeachersModel> list=tserv.read();
			request.setAttribute("teacherslist", list);
			RequestDispatcher rd=request.getRequestDispatcher("deleteteacher.jsp");
			rd.forward(request, response);
		}
		if(action.equals("Get Data")){
			if(request.getParameter("addhar")==null){
				response.getWriter().println("Bad Request");
			}if(request.getParameter("name")==null){
				response.getWriter().println("Bad Request");
			}
			else{
				long addhar=Long.parseLong(request.getParameter("addhar")) ;
				TeachersModel tm=tserv.readByAddhar(addhar);
				if(tm==null){
					response.getWriter().println("Data not Found");
				}else{
					if(tm.getName().equalsIgnoreCase(request.getParameter("name"))){
						System.out.println(tm);
						int sal=0;
						if(tm.getSub().equalsIgnoreCase("math")){
							sal=15000;
						}
						if(tm.getSub().equalsIgnoreCase("english")){
							sal=8000;
						}
						if(tm.getSub().equalsIgnoreCase("java")){
							sal=16000;
						}
						if(tm.getSub().equalsIgnoreCase("c")){
							sal=12000;
						}
						if(tm.getSub().equalsIgnoreCase("c++")){
							sal=14000;
						}
						if(tm.getSub().equalsIgnoreCase("database")){
							sal=13000;
						}
						if(tm.getSub().equalsIgnoreCase("web programming")){
							sal=15000;
						}
						if(tm.getSub().equalsIgnoreCase("assembly")){
							sal=16000;
						}
						if(tm.getSub().equalsIgnoreCase("software engineering")){
							sal=13000;
						}
						if(tm.getSub().equalsIgnoreCase("networking")){
							sal=12000;
						}
						String adminaccount="38423802753";
						String adminifsc="SBIN0012571";
						request.setAttribute("acc", adminaccount);
						request.setAttribute("ifsc", adminifsc);
						request.setAttribute("sal", sal);
						request.setAttribute("obj", tm);
						RequestDispatcher rd2 = request.getRequestDispatcher("teacherpayment.jsp");
						rd2.forward(request, response);
					}else{
						response.sendRedirect("teacherpayment.jsp");
					}
				}
			}
		}
		if(action.equals("Paid")){
			long addhar=Long.parseLong(request.getParameter("addhar"));
			String name=request.getParameter("name");
			String sub=request.getParameter("sub");
			long ad_account=Long.parseLong(request.getParameter("ad_account"));
			String ad_ifsc=request.getParameter("ad_ifsc");
			long t_account=Long.parseLong(request.getParameter("t_account"));
			String t_ifsc=request.getParameter("t_ifsc");
			long ammount=Long.parseLong(request.getParameter("ammount"));
			TeacherService serv=new TeacherService();
			TeacherPaymentModel tfm=new TeacherPaymentModel();
			tfm.setAddhar(addhar);
			tfm.setName(name);
			tfm.setSub(sub);
			tfm.setAd_account(ad_account);
			tfm.setAd_ifsc(ad_ifsc);
			tfm.setT_account(t_account);
			tfm.setT_ifsc(t_ifsc);
			tfm.setAmmount(ammount);
			if(serv.paid(tfm)>0){
				response.getWriter().println("Selary Paid Sucessfully");
			}else{
				response.getWriter().println("Salary not Paid");
			}
			AdminService aserv=new AdminService();
			AdminModel am=aserv.readByAccount(ad_account);
			long balance=am.getBalance()-ammount;
			System.out.println(balance);
			AdminModel mod=new AdminModel();
			mod.setBalance(balance);
			mod.setAccount(ad_account);
			if(aserv.update(mod)>0){
				System.out.println("Ammount Sucessfull Transfer from Admin to Teacher");
			}else{
				System.out.println("Selary not Get");
			}
		}
		if(action.equals("Search Record")){
			if(request.getParameter("addhar")==null){
				response.getWriter().println("Bad Request");
			}if(request.getParameter("name")==null){
				response.getWriter().println("Bad Request");
			}
			else{
				long addhar=Long.parseLong(request.getParameter("addhar")) ;
				TeachersModel tm=tserv.readByAddhar(addhar);
				if(tm==null){
					response.getWriter().println("Data not Found");
				}else{
					if(tm.getName().equalsIgnoreCase(request.getParameter("name"))){
						System.out.println(tm);
						request.setAttribute("obj", tm);
						RequestDispatcher rd2 = request.getRequestDispatcher("updateteacher.jsp");
						rd2.forward(request, response);
					}else{
						response.sendRedirect("updateteacher.jsp");
					}
				}
			}
		}
		
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		TeacherService tserv=new TeacherService();
		String action=request.getParameter("action");
		
		String name=request.getParameter("name");
		String fname=request.getParameter("fname");
		String mname=request.getParameter("mname");
		String vill=request.getParameter("vill");
		Date dob=Date.valueOf(request.getParameter("dob"));
		long addhar=Long.parseLong(request.getParameter("addhar"));
		long no=Long.parseLong(request.getParameter("no"));
		String email=request.getParameter("email");
		String cat=request.getParameter("cat");
		String quli=request.getParameter("quli");
		String sub=request.getParameter("sub");
		String collage=request.getParameter("collage");
		String address=request.getParameter("address");
		
		if(action.equals("insert")){
		TeachersModel tm=new TeachersModel(name, mname, fname, vill, cat, quli, sub, collage, address, email, addhar, no, dob);
		if(tserv.insert(tm)>0){
			response.getWriter().println("Data Inserted Sucessfully");
		}else{
			response.getWriter().println("Data not Inserted");
		}
	}
		if(action.equals("Update")){
			TeachersModel tm=new TeachersModel();
			tm.setName(name);
			tm.setFname(fname);
			tm.setMname(mname);
			tm.setVill(vill);
			tm.setDob(dob);
			tm.setAddhar(addhar);
			tm.setNo(no);
			tm.setEmail(email);
			tm.setCat(cat);
			tm.setQuli(quli);
			tm.setSub(sub);
			tm.setCollage(collage);
			tm.setAddress(address);
			if(tserv.update(tm)>0){
				response.getWriter().println("Data Updated Sucessfully");
			}else{
				response.getWriter().println("Data not Updated");
			}
		}
}

}
