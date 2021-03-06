package userAction;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import system.Person;
import system.User;
import system.UserAction;

/**
 * Servlet implementation class GetAllPersons_and_RedirectToUpdatePersonJSPServlet
 */
@WebServlet("/GetAllPersons_and_RedirectToUpdatePersonJSP")
public class GetAllPersons_and_RedirectToUpdatePersonJSPServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public GetAllPersons_and_RedirectToUpdatePersonJSPServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	
    
    
    public static final String ERROR_MWSSAGE = "errorMessage";
    public static final String USER_EMAIL_PARAM = "email";
    public static final String PERSON_PARAM = "person";
    public static final String PERSON_MSG_PARAM = "personParamMsg";
    public static final String  PERSON_ERR_PARAM = "personERR";
    public static final String  UPDATE_PERSON_MSG ="update_person_MSG";
    
    
  
   
    public void service(HttpServletRequest request, HttpServletResponse response) throws ServletException , IOException{
    	HttpSession session = request.getSession(false);
    	

    	
    	if (session.getAttribute("user") == null){
 
        		request.setAttribute(ERROR_MWSSAGE, "Invalid email/password combination, try again");
        
       		this.getServletConfig().getServletContext().getRequestDispatcher("/LogIng.jsp").forward(request, response);
        	return;	
        	}
    	
    	
//    	User ur = new User((String)(session.getAttribute(USER_EMAIL_PARAM)));
//    	UserAction uac = new UserAction(ur);
//    	ur = uac.getUser(ur.getEmail());
    	
   	    User ur = new User((String)(session.getAttribute(USER_EMAIL_PARAM)));
    	UserAction uac = new UserAction(ur);
    	ur = uac.getUser(ur.getEmail());
    	User user = new User(ur.getId(), ur.getFirstName(), ur.getLastName(), ur.getPassword(), ur.getEmail());
    
    	List<Person> Persons = new ArrayList<Person>();
    	
    	Persons  = uac.getallPersons(user.getId());
    	
    	for(Person pr: Persons){
    		System.out.println(pr);
    	}
    	

    	
    	session.setAttribute(PERSON_MSG_PARAM ,"Your Persons List");
    	session.setAttribute(PERSON_PARAM,Persons);
    	session.setAttribute(PERSON_ERR_PARAM,"         ");
    	session.setAttribute(UPDATE_PERSON_MSG,"        ");
    	//session.setAttribute(ERROR_MWSSAGE ,"Geting All Persons Filed, Tray again");
	
    	this.getServletConfig().getServletContext().getRequestDispatcher("/updatePerson.jsp").forward(request, response);
    	return;
    }

}
