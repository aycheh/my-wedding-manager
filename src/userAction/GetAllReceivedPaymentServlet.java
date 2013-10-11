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

import dataManagers.ExpensesDBManager;

import system.Expenses;
import system.User;
import system.UserAction;

/**
 * Servlet implementation class GetAllReceivedPaymentServlet
 */
@WebServlet("/GetAllReceivedPayment")
public class GetAllReceivedPaymentServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public GetAllReceivedPaymentServlet() {
        super();
        // TODO Auto-generated constructor stub
        System.out.println("------ GetAllReceivedPaymentServlet()");
    }
    
    //public static final String USER_EMAIL_PARAM = "email";
    //public static final String USER_PASSWORD_PARAM = "password";
    public static final String ERROR_MWSSAGE = "errorMessage";
    public static final String USER_EMAIL_PARAM = "email";
    public static final String USER_PARAM = "user";
    public static final String USER_NAME_PARAM = "userName";
    public static final String RP_PARAM = "ReceivedPayment";
    
  
   
    public void service(HttpServletRequest request, HttpServletResponse response) throws ServletException , IOException{
    	HttpSession session = request.getSession(false);
    	
    	System.out.println("GetAllReceivedPaymentServlet");
    	
    	if (session.getAttribute("user") == null){
 
        		request.setAttribute(ERROR_MWSSAGE, "Invalid email/password combination, try again");
        
       		this.getServletConfig().getServletContext().getRequestDispatcher("/LogIng.jsp").forward(request, response);
        	return;	
        	}
    	
    	
    	User ur = new User((String)(session.getAttribute(USER_EMAIL_PARAM)));
    	UserAction uac = new UserAction(ur);
    	ur = uac.getUser(ur.getEmail());
    	User user = new User(ur.getId(), ur.getFirstName(), ur.getLastName(), ur.getPassword(), ur.getEmail());
    	
    	List<Expenses> allExpenses = new ArrayList<Expenses>();
		allExpenses  = uac.getAllReceivedPayment(user.getId());
    	
    	

    	
    	session.setAttribute("welcaomeMsg" ,"Wellcome");
    	session.setAttribute(RP_PARAM,allExpenses);
    	session.setAttribute(USER_NAME_PARAM ,user.getFirstName());

    	
    	System.out.println("the getAllReceivedPayment is --------------> " + uac.getAllReceivedPayment(user.getId()));
    	System.out.println("the user is --------------> " + user);
	
    	this.getServletConfig().getServletContext().getRequestDispatcher("/getAllReceivedPayment.jsp").forward(request, response);
    	return;
    	

    }

}
