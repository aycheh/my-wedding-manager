package userAction;

import java.io.IOException;
import java.io.InputStream;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import system.MyWeddingManager;
import system.User;
import system.UserAction;
import javax.servlet.http.Part;

@WebServlet("/CreateUser")
@MultipartConfig(maxFileSize = 16177215)    // upload file's size up to 16MB
public class CreateUserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	MyWeddingManager mw = MyWeddingManager.getInstance();
	
	public CreateUserServlet() {
        super();
        // TODO Auto-generated constructor stub
        System.out.println("CreateUserServlet()");
    }

	
	
	public static final String FIRST_NAME_PARAM = "FirstName";
	public static final String LAST_NAME_PARAM = "LastName";
	public static final String USER_PASSWORD_PARAM = "password";
	public static final String RE_ENTER_PASSWORD_PARAM ="Re_enterPassword";
    public static final String USER_EMAIL_PARAM = "email";
    public static final String ERROR_MWSSAGE = "errorMessage";
    public static final String USER_PARAM = "user";
    public static final String USER_NAME_PARAM = "userName";
    public static final String MSG_PARAM ="Msg";

    public void service(HttpServletRequest request, HttpServletResponse response) throws ServletException , IOException{
    	String FirstName = (String)request.getParameter(FIRST_NAME_PARAM);
    	String LastName = (String)request.getParameter(LAST_NAME_PARAM);
    	String password = (String)request.getParameter(USER_PASSWORD_PARAM);
    	String Re_enterPassword = (String)request.getParameter(RE_ENTER_PASSWORD_PARAM);
    	String email = (String)request.getParameter(USER_EMAIL_PARAM);
    	

    	InputStream inputStream = null; // input stream of the upload file

        // obtains the upload file part in this multipart request

		Part filePart = request.getPart("photo");
        if (filePart != null) {
            // prints out some information for debugging
            System.out.println(filePart.getName());
            System.out.println(filePart.getSize());
            System.out.println(filePart.getContentType());
            // obtains input stream of the upload file
            inputStream = filePart.getInputStream();
        }   	
    	System.out.println(" Re_enterPassword: " +Re_enterPassword +" " + "LastName:  " + LastName + "  " + "FirstName: " +FirstName  + " email" + " " +email + "  " + "password : " +  password );
    	
    	if ( password == null || password.trim().isEmpty() || email == null || email.trim().isEmpty() || 
    			FirstName == null || FirstName.trim().isEmpty() || LastName == null || LastName.trim().isEmpty() ||
    			Re_enterPassword == null || Re_enterPassword.trim().isEmpty() ){
 
        		request.setAttribute(ERROR_MWSSAGE, "Invalid details, try again");
        
       		this.getServletConfig().getServletContext().getRequestDispatcher("/Sign_up.jsp").forward(request, response);
        	return;	
        	}
    	
    	
    	if (password.equals(Re_enterPassword)){
    	User user = new User(0,FirstName,LastName ,password, email);
    	mw.CreateUser(user,inputStream);
    	
    	}else {
    		request.setAttribute(ERROR_MWSSAGE, "password dose not mach, try again");
    		this.getServletConfig().getServletContext().getRequestDispatcher("/Sign_up.jsp").forward(request, response);
        	return;	
    	}
    	
    	User user = new User(email);
    	UserAction uac = new UserAction(user);
    	user = uac.getUser(email);
    	
    	HttpSession session =  request.getSession(true);
    	if (!session.isNew()){
    		session.invalidate();
    		session = request.getSession(true);
    	}
    	
    	
    	session.setAttribute("welcaomeMsg" ,"Wellcome");
    	//session.setAttribute("welcaomeMsg" ,"ברוך-הבא");
    	session.setAttribute(USER_PARAM,user);
    	session.setAttribute(USER_NAME_PARAM ,user.getFirstName());
    	session.setAttribute(MSG_PARAM, "Your registration is succeeded");
    	//session.setAttribute(USER1_NAME_PARAM ,user.getFirstName());
    	
    	System.out.println(" from WebServlet CreateUser : the user is " + user);
    	
	
    	this.getServletConfig().getServletContext().getRequestDispatcher("/Dashboard.jsp").forward(request, response);
    	return;
    	
    	
    	
    	
    	
    	
    	
    	
    }

}
