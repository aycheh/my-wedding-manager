package userAction;

import java.io.IOException;

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
 * Servlet implementation class UpdatePersonServlet
 */
@WebServlet("/UpdatePerson")
public class UpdatePersonServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdatePersonServlet() {
        super();
        // TODO Auto-generated constructor stub
    }
    public static final String USER_EMAIL_PARAM = "email";
    //------------------------------------------------------
    public static final String ERROR_MWSSAGE = "errorMessage";
    public static final String USER_PARAM = "user";
    public static final String USER_NAME_PARAM = "userName";
   // public static final String MSG_PARAM ="Msg";
    
    
    //--------------------------------------------------------------------
    /**person params**/
    public static final String  UPDATE_PERSON_MSG ="update_person_MSG";
    public static final String  PERSON_NAME_PARAM = "personName";
    public static final String  PERSON_LAST_NAME_PARAM = "personLastName";
    public static final String  PERSON_RELATIONSHIP_PARAM = "relationship";
    public static final String  PERSON_ADDRESS_PARAM = "pesronAddress";
    public static final String  PERSON_PHONE_PARAM = "personPhone";
    public static final String  PERSON_EMAIL_PARAM = "personEmail";
    public static final String  PERSON_COMMENT_PARAM = "pesronComment";
    public static final String  PERSON_ID_PARAM = "person_id"; 
    //---------------------------------------------------------------------

   
    
    
    
    public void service(HttpServletRequest request, HttpServletResponse response) throws ServletException , IOException{
    	HttpSession session = request.getSession(false);




    	/**person params**/
    	String personFirstName = (String)request.getParameter(PERSON_NAME_PARAM);
System.out.println("PERSON_NAME_PARAM ggggggggggggggggggggggg>>>    :" + personFirstName);
    	String personLastName = (String)request.getParameter(PERSON_LAST_NAME_PARAM);
    	String relationship = (String)request.getParameter(PERSON_RELATIONSHIP_PARAM);
    	String pesronAddress = (String)request.getParameter(PERSON_ADDRESS_PARAM);
    	String personPhone = (String)request.getParameter(PERSON_PHONE_PARAM);
    	String personEmail = (String)request.getParameter(PERSON_EMAIL_PARAM);
    	String pesronComment = (String)request.getParameter(PERSON_COMMENT_PARAM);
    	int person_id1 = ((int)Integer.parseInt(request.getParameter(PERSON_ID_PARAM)));
    	//int person_id = (int)Integer.parseInt(person_id1);
 
    	
    	
    	if ((session.getAttribute(USER_EMAIL_PARAM)) == null ){	
 
        		request.setAttribute(ERROR_MWSSAGE, "You have to login first");
        
       		this.getServletConfig().getServletContext().getRequestDispatcher("/LogIng.jsp").forward(request, response);
        	return;	
        	}
    	
    	
    	
    	
    	if ((session.getAttribute(USER_EMAIL_PARAM)) != null){
		 
        User ur = new User((String)(session.getAttribute(USER_EMAIL_PARAM))); 
     	UserAction uac = new UserAction(ur);
     	ur = uac.getUser(ur.getEmail());
     	
     	Person persontoupdate = new Person(person_id1);
     	persontoupdate = uac.getPerson(person_id1);
		Person p = new Person(0,personFirstName,
				personLastName,relationship,pesronAddress,personPhone,personEmail,pesronComment,ur.getId());

		System.out.println("USER_ID = " + ur.getId());

		
	
    	try {

    		if(persontoupdate.getId() == p.getId()){
    		uac.updatePerson(p);
    		}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			session.setAttribute(ERROR_MWSSAGE, "person dose not exist , pleas tray a gain");
			this.getServletConfig().getServletContext().getRequestDispatcher("/updatePerson.jsp").forward(request, response);
	    	return;
		}
    	

   
    	session.setAttribute(USER_NAME_PARAM ,ur.getFirstName());
    	session.setAttribute(UPDATE_PERSON_MSG, "Updating person  succeeded");

    	this.getServletConfig().getServletContext().getRequestDispatcher("/updatePerson.jsp").forward(request, response);
    	return;
    	
    	}else {

    		request.setAttribute(ERROR_MWSSAGE, "You have to login first");
    		this.getServletConfig().getServletContext().getRequestDispatcher("/LogIng.jsp").forward(request, response);
        	return;	
    	}
    	
   	
    } 

}
