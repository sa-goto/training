package employee;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.List;

import javax.servlet.RequestDispatcher;
import employee.bean.EmployeeDataBean;

import javax.servlet.ServletContext;
import java.sql.Driver;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Properties;
import java.sql.Connection;
import java.sql.*;

//import dao.MeetingDao;
//import model.Meeting;

/**
 * Servlet implementation class EmployeeClass
 */
@WebServlet("/EmployeeClass")
public class DbExtractorClass extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public DbExtractorClass() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// DBÇ©ÇÁÉfÅ[É^éÊìæ
		getDB(request);

		response.setCharacterEncoding("UTF-8");

		ServletContext context = this.getServletContext();
		RequestDispatcher dispatcher = context.getRequestDispatcher("/index.jsp");
		dispatcher.forward(request, response);
	}

	private void getDB(HttpServletRequest request) {
		try (Connection db = DriverManager.getConnection("jdbc:mariadb://localhost/", "root", "sakuyaemd")) {

			try (Statement stmt = db.createStatement()) {
				String sqlStr = "select * from data;";
				ResultSet rs = stmt.executeQuery(sqlStr);

				List<EmployeeDataBean> list = new ArrayList<EmployeeDataBean>();

				while (rs.next()) {
					list.add(new EmployeeDataBean(rs.getString("id"), rs.getString("name"), rs.getString("entry")));
				}

				request.setAttribute("dbdata", list);

				rs.close();
				stmt.close();
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		}
}
