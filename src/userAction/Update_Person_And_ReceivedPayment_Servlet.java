package userAction;

import java.io.IOException;
import java.sql.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dataManagers.PersonDBManager;

import system.Expenses;
import system.Person;
import system.TotalExpenses;
import system.User;
import system.UserAction;

/**
 * Servlet implementation class Update_Person_And_ReceivedPayment_Servlet
 */
@WebServlet("/Update_Person_And_ReceivedPayment")
public class Update_Person_And_ReceivedPayment_Servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Update_Person_And_ReceivedPayment_Servlet() {
        super();
        // TODO Auto-generated constructor stub
    }
    
    
    public static final String USER_EMAIL_PARAM = "email";
    //------------------------------------------------------
    public static final String ERROR_MWSSAGE = "errorMessage";
    public static final String USER_PARAM = "user";
    public static final String USER_NAME_PARAM = "userName";
   // public static final String MSG_PARAM ="Msg";
    public static final String UPDATE_EXPENSES_PARAM_MSG ="UPDATE_EXPENSES_PARAM_MSG";
    
    //--------------------------------------------------------------------
    /**person params**/
    public static final String  PERSON_NAME_PARAM = "personName";
    public static final String  PERSON_LAST_NAME_PARAM = "personLastName";
    public static final String  PERSON_RELATIONSHIP_PARAM = "relationship";
    public static final String  PERSON_ADDRESS_PARAM = "pesronAddress";
    public static final String  PERSON_PHONE_PARAM = "personPhone";
    public static final String  PERSON_EMAIL_PARAM = "personEmail";
    public static final String  PERSON_COMMENT_PARAM = "pesronComment";
    public static final String  PERSON_ID_PARAM = "person_id";
    //---------------------------------------------------------------------
    /**Expenses params**/
    public static final String  EXPENSES_ID_PARAM ="expenses_id";
    public static final String  RECEVED_PAYMENT_PARAM  = "received_payment";
    public static final String  PAYBACK_PARAM  = "payback_payment";
    public static final String  PAYMENT_TYPE_PARAM  ="payment_type";
    public static final String  EVENT_PARAM   = "eventType";
    public static final String  PABACK_PAYMENT_EVENT_PARAM   ="payback_payment_eventType";
    public static final String  EVENT_ADDRESS_PARAM  ="eventAddress";
    public static final String  PAYE_COMMENT_PARAM = "payeComment";
    public static final String  DATE_PARAM ="date";
   
    
    
    
    public void service(HttpServletRequest request, HttpServletResponse response) throws ServletException , IOException{
    	HttpSession session = request.getSession(false);
System.out.println("qwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww");
    	/**user params**/
//    	String FirstName = (String)request.getParameter(FIRST_NAME_PARAM);
//    	String LastName = (String)request.getParameter(LAST_NAME_PARAM);
//    	String password = (String)request.getParameter(USER_PASSWORD_PARAM);
//    	String Re_enterPassword = (String)request.getParameter(RE_ENTER_PASSWORD_PARAM);
//    	String email = (String)request.getParameter(USER_EMAIL_PARAM);
    	//----------------------------------------------------------------------
    	/**person params**/
    	String personFirstName = (String)request.getParameter(PERSON_NAME_PARAM);
System.out.println("PERSON_NAME_PARAM ggggggggggggggggggggggg>>>    :" + personFirstName);
    	String personLastName = (String)request.getParameter(PERSON_LAST_NAME_PARAM);
    	String relationship = (String)request.getParameter(PERSON_RELATIONSHIP_PARAM);
    	String pesronAddress = (String)request.getParameter(PERSON_ADDRESS_PARAM);
    	String personPhone = (String)request.getParameter(PERSON_PHONE_PARAM);
    	String personEmail = (String)request.getParameter(PERSON_EMAIL_PARAM);
    	String pesronComment = (String)request.getParameter(PERSON_COMMENT_PARAM);
    	String person_id1 = ((String)request.getParameter(PERSON_ID_PARAM));
    	int person_id = (int)Integer.parseInt(person_id1);
    	//------------------------------------------------------------------------------
    	/**Expenses params**/	
    	Double received_payment = (Double)Double.parseDouble((String)request.getParameter(RECEVED_PAYMENT_PARAM));
    	Double payback_payment = (Double)Double.parseDouble((String)request.getParameter(PAYBACK_PARAM)); 
    	String payment_type = (String)request.getParameter(PAYMENT_TYPE_PARAM);
    	String eventType = (String)request.getParameter(EVENT_PARAM);
    	String payback_payment_eventType = (String)request.getParameter(PABACK_PAYMENT_EVENT_PARAM);
    	String eventAddress = (String)request.getParameter(EVENT_ADDRESS_PARAM);
    	String payeComment = (String)request.getParameter(PAYE_COMMENT_PARAM);
    	String expenses_id1 = (String)request.getParameter(EXPENSES_ID_PARAM);
    	int expenses_id = (int)Integer.parseInt(expenses_id1);
    	
    	//String  date = (String)request.getParameter(DATE_PARAM);
    	//1.
    	//String dateString = "2001/03/09";
    	//String dateString = (String)request.getParameter(DATE_PARAM);
    	//SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy/mm/dd");
    	//Date convertedDate = (Date) dateFormat.parse(dateString); 

    	
    	if ((session.getAttribute(USER_EMAIL_PARAM)) == null ){	
 
        		request.setAttribute(ERROR_MWSSAGE, "You have to login first");
        
       		this.getServletConfig().getServletContext().getRequestDispatcher("/LogIng.jsp").forward(request, response);
        	return;	
        	}
    	
    	
    	if ((session.getAttribute(USER_EMAIL_PARAM)) != null){
    	 long ts = System.currentTimeMillis();
    	 java.sql.Date sqlDate = new Date(ts);
   		 
    	 User ur = new User((String)(session.getAttribute(USER_EMAIL_PARAM)));
    	 
     	UserAction uac = new UserAction(ur);
     	ur = uac.getUser(ur.getEmail());
     	Person p1 = new Person(person_id);
     	
     	//System.out.println("User ur = new User =====333333=========" +ur);
     	
    	// TODO get sum how the person id 
     	
     	Person p2 = new Person(p1.getId(), p1.getFirstName(), p1.getLastName(), p1.getRelationship(), p1.getAddress(), p1.getPhone(), p1.getEmail(), p1.getComment(), ur.getId());
		Person p = new Person(p2.getId(),personFirstName,
				personLastName,relationship,pesronAddress,personPhone,personEmail,pesronComment,ur.getId());
System.out.println("USER_ID = " + ur.getId());
		
		
		Expenses exp1 = new Expenses(expenses_id);
		Expenses exp2 = new Expenses(exp1.getId(), ur.getId(), p.getFirstName(), p.getLastName(), p.getId(), exp1.getReceived_payment(),
				exp1.getPayback_payment(), payment_type, eventType, payback_payment_eventType, eventAddress, payeComment, sqlDate);
     	
		Expenses exp = new Expenses(exp2.getId(), ur.getId(),  p.getFirstName(),p.getLastName(), p.getId(), received_payment, payback_payment, 
     			payment_type, eventType, payback_payment_eventType, eventAddress, payeComment, sqlDate);
System.out.println("exp >>>>>>>>>>>>>>>>>" + exp);
    	
 
    	/***
    	 *  long ts = System.currentTimeMillis();
			java.sql.Date sqlDate = new Date(ts);
	
    	 * ***/
    	
    	try {
			
    		uac.updateReceivedPayment(exp, p);
    		///uac.updatePerson(p);
    		System.out.println("The new updated Exp & pr Are :  ///////" + exp + "++++++  " +p);
    		/**this mathos must have total_expenses (toxp) in order to update the expenses**/
    		
    		// TODO update TotalExpenses (- xxx = ?)
    		//TotalExpenses toxp = new TotalExpenses(ur.getId());
    		
    		
		} catch (Exception e) {
			// TODO Auto-generated catch block
			System.out.println("Updating person and expenses filed , pleas tray a gain");
			e.printStackTrace();
		}
    	
    	
   
    	session.setAttribute(USER_NAME_PARAM ,ur.getFirstName());
    	session.setAttribute(UPDATE_EXPENSES_PARAM_MSG, "Creating person and expenses succeeded");
//Dashboard.jsp
    	//Update_Person_And_ReceivedPayment.jsp
    	this.getServletConfig().getServletContext().getRequestDispatcher("/Update_Person_And_ReceivedPayment.jsp").forward(request, response);
    	return;
    	
    	}else {
    		request.setAttribute(ERROR_MWSSAGE, "You have to login first");
    		this.getServletConfig().getServletContext().getRequestDispatcher("/LogIng.jsp").forward(request, response);
        	return;	
    	}
    	
   	
    } 
    
    

}
