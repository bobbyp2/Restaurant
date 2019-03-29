package Controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Dao.ProductDAOImpl;
import model.Product;

/**
 * Servlet implementation class EditManagerController
 */
@WebServlet("/EditProductController")
public class EditProductController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public EditProductController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int id = Integer.parseInt( request.getParameter("e1") );
		Product m = new Product();
		ProductDAOImpl dao = new ProductDAOImpl();
		m = dao.getUserById(id);
		request.setAttribute("key1", m);
		request.getRequestDispatcher("editdetails.jsp").forward(request, response);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doGet(request, response);
		int id = Integer.parseInt( request.getParameter("e1") );
		Product product = new Product();
		ProductDAOImpl dao = new ProductDAOImpl();
		product = dao.getUserById(id);
		request.setAttribute("key1", product);
		request.getRequestDispatcher("editdetails.jsp").forward(request, response);
		
		
	}

}
