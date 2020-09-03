package servlet;

import java.io.IOException;
import java.sql.Date;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.AdminModel;
import model.StudentFeeModel;
import model.StudentModel;
import service.AdminService;
import service.StudentService;

@WebServlet("/School")
public class StudentServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String action=request.getParameter("action");
		RequestDispatcher dispach=null;
		if(action==null || action.equals("")){
			dispach=request.getRequestDispatcher("Login.jsp");
			dispach.forward(request, response);
		}
		StudentService sserv=new StudentService();
		if(action.equals("lists")){
			List<StudentModel> list=sserv.read();
			request.setAttribute("studentslist", list);
			RequestDispatcher rd=request.getRequestDispatcher("studentlist.jsp");
			rd.forward(request, response);
		}
		if(action.equals("detail")){
			List<StudentModel> list=sserv.read();
			request.setAttribute("smd", list);
			RequestDispatcher rd=request.getRequestDispatcher("studentdetails.jsp");
			rd.forward(request, response);
		}
		if(action.equals("details")){
			if(request.getParameter("roll")==null){
				response.getWriter().println("Bad Request");
			}else{
				int roll=Integer.parseInt(request.getParameter("roll")) ;
				StudentModel sm=sserv.readByRoll(roll);
				//response.getWriter().println(roll);
				if(sm==null){
					response.getWriter().println("Data not Found");
				}else{
					request.setAttribute("obj", sm);
					RequestDispatcher rd2 = request.getRequestDispatcher("studentdetails.jsp");
					rd2.forward(request, response);
				}
			}
		}
		
		if(action.equals("Get Data")){
			if(request.getParameter("roll")==null){
				response.getWriter().println("Bad Request");
			}if(request.getParameter("name")==null){
				response.getWriter().println("Bad Request");
			}
			else{
				int roll=Integer.parseInt(request.getParameter("roll")) ;
				String name=request.getParameter("name");
				StudentModel sm=sserv.readByRoll(roll);
				if(sm==null){
					response.getWriter().println("Data not Found");
				}else{
					if(sm.getName().equalsIgnoreCase(request.getParameter("name"))){
						System.out.println(sm);
						int fee=0;
						if(sm.getProgram().equalsIgnoreCase("bca")){
							fee=6000;
						}
						if(sm.getProgram().equalsIgnoreCase("mca")){
							fee=12000;
						}
						if(sm.getProgram().equalsIgnoreCase("b-tech")){
							fee=9000;
						}
						if(sm.getProgram().equalsIgnoreCase("m-tech")){
							fee=16000;
						}
						if(sm.getProgram().equalsIgnoreCase("diploma")){
							fee=10000;
						}
						if(sm.getProgram().equalsIgnoreCase("polytechnic")){
							fee=13000;
						}
						String adminaccount="38423802753";
						String adminifsc="SBIN0012571";
						request.setAttribute("acc", adminaccount);
						request.setAttribute("ifsc", adminifsc);
						request.setAttribute("fee", fee);
						request.setAttribute("obj", sm);
						RequestDispatcher rd2 = request.getRequestDispatcher("studentsfee.jsp");
						rd2.forward(request, response);
					}else{
						response.sendRedirect("studentsfee.jsp");
					}
				}
			}
		}
		if(action.equals("Search Record")){
			if(request.getParameter("roll")==null){
				response.getWriter().println("Bad Request");
			}if(request.getParameter("name")==null){
				response.getWriter().println("Bad Request");
			}
			else{
				int roll=Integer.parseInt(request.getParameter("roll")) ;
				String name=request.getParameter("name");
				StudentModel sm=sserv.readByRoll(roll);
				if(sm==null){
					response.getWriter().println("Data not Found");
				}else{
					if(sm.getName().equalsIgnoreCase(request.getParameter("name"))){
						System.out.println(sm);
						request.setAttribute("obj", sm);
						RequestDispatcher rd2 = request.getRequestDispatcher("updatestudent.jsp");
						rd2.forward(request, response);
					}else{
						response.sendRedirect("studentsfee.jsp");
					}
				}
			}
		}
		if(action.equals("dlist")){
			List<StudentModel> list=sserv.read();
			request.setAttribute("studentslist", list);
			RequestDispatcher rd=request.getRequestDispatcher("deletestudent.jsp");
			rd.forward(request, response);
		}
		if(action.equals("Search")){
			String searchkey = request.getParameter("searchkey");
			String type = request.getParameter("type");
			StudentService serv=new StudentService();
			List<StudentModel> slist=new ArrayList<StudentModel>();
			RequestDispatcher rd=request.getRequestDispatcher("studentlist.jsp");
			if(searchkey == null || searchkey.length() == 0 || type == null || type.length() == 0) {
//				rd.forward(request, response);
				return;
			}
			
			switch(type){
			case "all":
				slist.addAll(serv.getListByName(searchkey));
				slist.addAll(serv.getListByProgramme(searchkey));
				slist=serv.getListByCollege(searchkey);
				break;
			case "name":
				System.out.println("Search By Name");
				slist = serv.getListByName(searchkey);
				break;
			case "programe":
				System.out.println("Search By Programme");
				slist = serv.getListByProgramme(searchkey);
				break;
			case "collage":
				System.out.println("Search By College");
				slist = serv.getListByCollege(searchkey);
				break;
			default:
//				rd.forward(request, response);
				return;
			}
			System.out.println(slist);
			System.out.println("Search Done");
			request.setAttribute("searchkey", searchkey);
			request.setAttribute("studentslist", slist);
			rd=request.getRequestDispatcher("studentlist.jsp");
			rd.forward(request, response);
		}
		
		if(action.equals("delete")){
			if(request.getParameter("roll")==null){
				response.getWriter().println("Bad Request");
			}else{
				int roll=Integer.parseInt(request.getParameter("roll")) ;
				int x=sserv.deleteByRoll(roll);
				if(x==0){
					response.getWriter().println("Data not Found");
				}else{
					response.sendRedirect("School?action=dlist");
				}
			}
		}
		
		if(action.equals("Paid")){
			long roll=Long.parseLong(request.getParameter("roll"));
			String name=request.getParameter("name");
			String programe=request.getParameter("programe");
			long ad_account=Long.parseLong(request.getParameter("ad_account"));
			String ad_ifsc=request.getParameter("ad_ifsc");
			long st_account=Long.parseLong(request.getParameter("st_account"));
			String st_ifsc=request.getParameter("st_ifsc");
			long ammount=Long.parseLong(request.getParameter("ammount"));
			StudentService serv=new StudentService();
			StudentFeeModel sfm=new StudentFeeModel();
			sfm.setRoll(roll);
			sfm.setName(name);
			sfm.setPrograme(programe);
			sfm.setAd_account(ad_account);
			sfm.setAd_ifsc(ad_ifsc);
			sfm.setSt_account(st_account);
			sfm.setSt_ifsc(st_ifsc);
			sfm.setAmmount(ammount);
			if(serv.paid(sfm)>0){
				response.getWriter().println("Fee Paid Sucessfully");
			}else{
				response.getWriter().println("Data not Inserted");
			}
			AdminService aserv=new AdminService();
			AdminModel am=aserv.readByAccount(ad_account);
			long balance=am.getBalance()+ammount;
			System.out.println(balance);
			AdminModel mod=new AdminModel();
			mod.setBalance(balance);
			mod.setAccount(ad_account);
			if(aserv.update(mod)>0){
				System.out.println("Fee Sucessfull go to Admin Account");
			}else{
				System.out.println("Fee not go to Admin Account");
			}
		}
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		StudentService sserv=new StudentService();
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
		String program=request.getParameter("program");
		String collage=request.getParameter("collage");
		String address=request.getParameter("address");
		
		if(action.equals("insert")){
		StudentModel sm=new StudentModel(name, mname, fname, vill, cat, quli, program, collage, address, email, addhar, no, dob);

		if(sserv.insert(sm)>0){
			response.getWriter().println("Data Inserted Sucessfully");
		}else{
			response.getWriter().println("Data not Inserted");
		}
		}

		int roll=Integer.parseInt(request.getParameter("roll"));
		if(action.equals("Update")){
			
			StudentModel sm= new StudentModel();
			sm.setRoll(roll);
			sm.setName(name);
			sm.setMname(mname);
			sm.setFname(fname);
			sm.setVill(vill);
			sm.setCat(cat);
			sm.setQuli(quli);
			sm.setProgram(program);
			sm.setCollage(collage);
			sm.setAddress(address);
			sm.setEmail(email);
			sm.setAddhar(addhar);
			sm.setNo(no);
			sm.setDob(dob);
			if(sserv.update(sm)>0){
				response.getWriter().println("Data Updated Sucessfully");
			}else{
				response.getWriter().println("Data not Updated");
			}
		}
	}

}
