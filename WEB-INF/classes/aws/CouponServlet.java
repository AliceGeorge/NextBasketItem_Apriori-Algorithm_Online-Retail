package aws;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class CouponServlet
 */
public class CouponServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CouponServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		// TODO Auto-generated method stub
		
		
		HttpSession session = request.getSession();
		String[] input = request.getParameterValues("input");
        System.out.println("Alice:"+input);
        response.setContentType("text/plain");
        response.setCharacterEncoding("UTF-8");
        
        
        String fileData = request.getParameter("fileData");
     
        //GEtting the file location:
        String fileLocation="";
        
         fileLocation = request.getParameter("output");
        
         try {
			CouponGeneration cg = new CouponGeneration();
			//String coupon1 = cg.getCoupons1(fileLocation, input);
			String coupon1 = cg.getCouponsed(fileLocation, input);
			response.getWriter().write(coupon1);
		} catch (Exception e) {
			response.getWriter().write("Excep: "+ e.getMessage());
		}
		
    
		
		
	}

}
