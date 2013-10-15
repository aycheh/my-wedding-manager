package userAction;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import system.User;
import system.UserAction;

/**
 * Servlet implementation class UpdateuserServlet
 */
@WebServlet("/Updateuser")
public class UpdateuserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	   
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateuserServlet() {
        super();
        // TODO Auto-generated constructor stub
    }
    
  
 
	public static final String USER_PASSWORD_PARAM = "password";
	public static final String OLD_PASSWORD_PARAM ="old_password";
    public static final String USER_EMAIL_UPDATE_PARAM = "email2";
    public static final String ERROR_MWSSAGE = "errorMessage";
    public static final String USER_PARAM = "user";
    public static final String USER_NAME_PARAM = "userName";
    public static final String USER_EMAIL_PARAM = "email";
    public static final String USER_UPDATED_MAS_PARAM = "userpadated_Msg";

    public void service(HttpServletRequest request, HttpServletResponse response) throws ServletException , IOException{
    	HttpSession session = request.getSession(false);    	
    	
    	if (session.getAttribute("user") == null){
    		request.setAttribute(ERROR_MWSSAGE, "you must login first, try again");
    		this.getServletConfig().getServletContext().getRequestDispatcher("/LogIng.jsp").forward(request, response);
        	return;	
    	}
   
    	String password = (String)request.getParameter(USER_PASSWORD_PARAM);
    	String old_password = (String)request.getParameter(OLD_PASSWORD_PARAM);
    	String email2 = (String)request.getParameter(USER_EMAIL_UPDATE_PARAM);


    	if (session.getAttribute("user") != null){
    	User ur = new User((String)(session.getAttribute(USER_EMAIL_PARAM)));
    	UserAction uac = new UserAction(ur);
    	ur = uac.getUser(ur.getEmail());
    	User user = new User(ur.getId(),ur.getFirstName(),ur.getLastName() ,password, email2);
    	
    	if (!old_password.equals(ur.getPassword()) ){ 
    		request.setAttribute(ERROR_MWSSAGE, "old password dose not match, Try again!");
   		this.getServletConfig().getServletContext().getRequestDispatcher("/Updateuser.jsp").forward(request, response);
    	return;	
    	}
    	uac.Updateuser(user);

    	

    	session.setAttribute(USER_PARAM,user);
    	session.setAttribute(USER_NAME_PARAM ,user.getFirstName());
    	session.setAttribute(USER_UPDATED_MAS_PARAM ,"פרטך עודכנו בהצלחה");
    	session.setAttribute(USER_EMAIL_PARAM,user.getEmail());
    	this.getServletConfig().getServletContext().getRequestDispatcher("/getUser.jsp").forward(request, response);
    	return;
    	
    	}else {                                                              
    		request.setAttribute(ERROR_MWSSAGE, "you must login first, try again");
    		this.getServletConfig().getServletContext().getRequestDispatcher("/LogIng.jsp").forward(request, response);
        	return;	
    	}
    	

    }
    
    

}
