package userAction;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import system.MyWeddingManager;
import system.User;
import system.UserAction;

/**
 * Servlet implementation class GetUserServlet
 */
@WebServlet("/GetUser")
public class GetUserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	MyWeddingManager mw = MyWeddingManager.getInstance();  
    /**
     * @see HttpServlet#HttpServlet()
     */
    public GetUserServlet() {
        super();
        System.out.println("GetUserServlet() -------------------------------------");
        // TODO Auto-generated constructor stub
    }
    
    public static final String USER_EMAIL_PARAM = "email";
    public static final String ERROR_MWSSAGE = "errorMessage";
    public static final String USER_PARAM = "user";
    public static final String USER_NAME_PARAM = "userName";
   // public static final String USER1_NAME_PARAM = "שםמשתש";
    
    
    
   
    public void service(HttpServletRequest request, HttpServletResponse response) throws ServletException , IOException{
    	HttpSession session = request.getSession(false);
    	
    	
    	String email = (String)(session.getAttribute("email"));
    	
    	if (session.getAttribute("user") == null){
 
        		request.setAttribute(ERROR_MWSSAGE, "You must login first");
        
       		this.getServletConfig().getServletContext().getRequestDispatcher("/LogIng.jsp").forward(request, response);
        	return;	
        	}
    	
    	
    
    	User ur = new User(email);
    	System.out.println("the user USER_PARAM  is ----11111----------> " + USER_PARAM);
    	UserAction uac = new UserAction(ur);
    	ur = uac.getUser(ur.getEmail());
    	User user = new User(ur.getId(), ur.getFirstName(), ur.getLastName(), ur.getPassword(), ur.getEmail());
    	
    	

    	
    	session.setAttribute("welcaomeMsg" ,"Wellcome");
    	session.setAttribute(USER_PARAM,user);
    	session.setAttribute(USER_NAME_PARAM ,user.getFirstName());

    	
    	
    	
	
    	this.getServletConfig().getServletContext().getRequestDispatcher("/getUser.jsp").forward(request, response);
    	return;
    	

    }
    
}
