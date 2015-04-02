package cu_cabshare;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class MySQLServlet
 */
@WebServlet("/MySQLServlet")
public class MySQLServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private Connection conn;

	static {
		try {
			Class.forName("com.mysql.jdbc.Driver");
		} catch (ClassNotFoundException cnfe) {
		}
	}

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public MySQLServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		PrintWriter pw = new PrintWriter(response.getOutputStream());

		try {
			if (conn == null) {
				// Edit the following to use your endpoint, database name,
				// username, and password
				conn = DriverManager
						.getConnection(
								"jdbc:mysql://cs4111.cfb0w4yecpl2.us-west-2.rds.amazonaws.com:3306/cs4111",
								"ab3750", "databases2015");
			}

			Statement stmt = conn.createStatement();
			ResultSet rset = stmt.executeQuery("SHOW TABLES");
			response.setContentType("text/html");

			pw.println("<html>");
			pw.println("<head><title>Servlet Sample</title></head>");
			pw.println("<H1>SHOW TABLES</H1>");
			pw.println("<body><BR>");

			while (rset.next()) {
				pw.println(rset.getString(1) + "<BR>");
			}

			pw.println("</body></html>");
		} catch (SQLException e) {
			pw.println(e.getMessage());
		}

		pw.close();
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}
}