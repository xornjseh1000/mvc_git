package member;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import global.DispatcherServlet;
import global.Seperator;

@WebServlet("/member.do")
public class MemberController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("=== member 컨트롤러 진입===");
		HttpSession session = request.getSession();
		Seperator.init(request,response);
		MemberService service = MemberServiceImpl.getInstance();
		MemberBean member = new MemberBean();
		System.out.println("액션?" + Seperator.command.getAction());
		switch (Seperator.command.getAction()) {
		/*case "move":
			DispatcherServlet.send(request, response, Seperator.command);
			break;*/
		case "login":
			session = request.getSession();
			member.setId(request.getParameter("id"));
			member.setPw(request.getParameter("pw"));
			member = service.login(member);
			if (member.getId().equals("fail")) {
				System.out.println("컨트롤러 : 로그인실패");
				Seperator.command.setPage("login");
				Seperator.command.setView();
				
			} else {
				System.out.println("컨트롤러 : 로그인성공");
				request.setAttribute("name", member);
				session.setAttribute("user", member);
				Seperator.command.setDirectory("global");
				Seperator.command.setView();
				/*Seperator.command.setDirectory(request.getParameter("directory"));
				DispatcherServlet.send(request, response, Seperator.command);
				*/
			}
			
			break;
		case "regist":
			member.setId(request.getParameter("id"));
			member.setPw(request.getParameter("pw"));
			member.setName(request.getParameter("name"));
			member.setSsn(request.getParameter("ssn"));
			member.setRegDate();
			member.setEmail(request.getParameter("email"));
			member.setPhone(request.getParameter("phone"));
			String reg = service.regist(member);
			if (reg.equals("fail")) {
				System.out.println("컨트롤러 : 회원가입실패");
				Seperator.command.setPage("regist");
				Seperator.command.setView();
			} else {
				System.out.println("컨트롤러 : 회원가입성공");
				Seperator.command.setPage("login");
				Seperator.command.setView();
				/*Seperator.command.setDirectory(reg);*/
			}
			break;
		case "update":
			member = (MemberBean) session.getAttribute("user");
			member.setEmail(request.getParameter("email"));
			member.setPw(request.getParameter("pw"));
			
			
			service.update(member);
			DispatcherServlet.send(request, response, Seperator.command);
			break;
		case "delete":
			member = (MemberBean) session.getAttribute("user");
			session.invalidate();
			service.delete(member);
			Seperator.command.setDirectory("home");
			Seperator.command.setDirectory("main");
			Seperator.command.setView();
			DispatcherServlet.send(request, response, Seperator.command);
			break;
		case "list":break;// 오늘 ㄴㄴ
		case "logout":
			session.invalidate();
			Seperator.command.setDirectory("home");
			Seperator.command.setDirectory("main");
			Seperator.command.setView();
			DispatcherServlet.send(request, response, Seperator.command);
			break;
		case "count":
			request.setAttribute("count", service.count());
			Seperator.command.setPage("count");
			Seperator.command.setView();
			DispatcherServlet.send(request, response, Seperator.command);
			break;
		case "find_by_id":
			request.setAttribute("member",service.findById(request.getParameter("keyword")));
			DispatcherServlet.send(request, response, Seperator.command);
			break; // 오늘 ㄴㄴ
		case "find_by_name":
			service.findBy(request.getParameter("keyword"));
			DispatcherServlet.send(request, response, Seperator.command);
			break;
		default:
			break;
		}
	DispatcherServlet.send(request, response, Seperator.command);
	}
	
}
