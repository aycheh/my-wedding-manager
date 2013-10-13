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
 * Servlet implementation class UpdateuserServlet
 */
@WebServlet("/Updateuser")
public class UpdateuserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	MyWeddingManager mw = MyWeddingManager.getInstance();    
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateuserServlet() {
        super();
        // TODO Auto-generated constructor stub
    }
    
  
    public static final String FIRST_NAME_PARAM = "FirstName";
	public static final String LAST_NAME_PARAM = "LastName";
	public static final String USER_PASSWORD_PARAM = "password";
	public static final String RE_ENTER_PASSWORD_PARAM ="Re_enterPassword";
    public static final String USER_EMAIL_PARAM = "email";
    public static final String USER_EMAIL_UPDATE_PARAM = "email2";
    public static final String ERROR_MWSSAGE = "errorMessage";
    public static final String USER_PARAM = "user";
    public static final String USER_NAME_PARAM = "userName";
    public static final String MSG_PARAM ="Msg";
    
    
    
    
    
   
    public void service(HttpServletRequest request, HttpServletResponse response) throws ServletException , IOException{
    	HttpSession session = request.getSession(false);
    	
    	String FirstName = (String)request.getParameter(FIRST_NAME_PARAM);
    	String LastName = (String)request.getParameter(LAST_NAME_PARAM);
    	String password = (String)request.getParameter(USER_PASSWORD_PARAM);
    	String Re_enterPassword = (String)request.getParameter(RE_ENTER_PASSWORD_PARAM);
    	String email = (String)request.getParameter(USER_EMAIL_PARAM);
    	String email2 = (String)request.getParameter(USER_EMAIL_UPDATE_PARAM);
    	
    	
    	System.out.println(" Re_enterPassword: " +Re_enterPassword +" " + "LastName:  " + LastName + "  " + "FirstName: " +FirstName  + " email2" + " " +email + "  " + "password : " +  password );
    	
//    	if ( password == null || password.trim().isEmpty() || email == null || email.trim().isEmpty() || 
//    			FirstName == null || FirstName.trim().isEmpty() || LastName == null || LastName.trim().isEmpty() ||
//    			Re_enterPassword == null || Re_enterPassword.trim().isEmpty() || password != (Re_enterPassword) ){
// 
//        		request.setAttribute(ERROR_MWSSAGE, "Invalid details, try again");
//        
//       		this.getServletConfig().getServletContext().getRequestDispatcher("/Updateuser.jsp").forward(request, response);
//        	return;	
//        	}
    	
    	
    	//session.getAttribute("user") == null
    	if (session.getAttribute("user") != null){
    	User ur = new User((String)(session.getAttribute(USER_EMAIL_PARAM)));
    	System.out.println("User ur = new User String  session.getAttribute email  " + ur);
    	
    	UserAction uac = new UserAction(ur);
    	ur = uac.getUser(ur.getEmail());
    	User user = new User(ur.getId(),FirstName,LastName ,password, email2);
    	System.out.println("new UserAction(ur) =====>" + user);
    	uac.Updateuser(user);

    	
    	//update Users set first_name = ? , last_name = ? , password = ? , email = ?  where id = ?

    	session.setAttribute(USER_PARAM,user);
    	session.setAttribute(USER_NAME_PARAM ,user.getFirstName());
    	session.setAttribute(MSG_PARAM ,"your details are updated successfully");
    	session.setAttribute(USER_EMAIL_PARAM,user.getEmail());
    	this.getServletConfig().getServletContext().getRequestDispatcher("/Dashboard.jsp").forward(request, response);
    	return;
    	
    	}else {
    		request.setAttribute(ERROR_MWSSAGE, "you must login first, try again");
    		this.getServletConfig().getServletContext().getRequestDispatcher("/LogIng.jsp").forward(request, response);
        	return;	
    	}
    	

    }
    
    

}
