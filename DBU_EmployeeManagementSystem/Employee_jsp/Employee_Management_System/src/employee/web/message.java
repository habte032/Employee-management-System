import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
@WebServlet("/insertMessage")
public class InsertMessageServlet extends HttpServlet {
private static final long serialVersionUID = 1L;

protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
String name = request.getParameter("uname");
String message = request.getParameter("message");

String url = "jdbc:mysql://localhost:3306/emp_management_sys";
String username = "root";
String password = "";

String sql = "INSERT INTO message (usrername, message) VALUES ( ?, ?)";
try (Connection conn = DriverManager.getConnection(url, username, password);
PreparedStatement stmt = conn.prepareStatement(sql)) {

stmt.setString(1, username);
stmt.setString(2, message);

int rowsAffected = stmt.executeUpdate();

if (rowsAffected > 0) {
response.sendRedirect("contact.jsp");
}

} catch (SQLException e) {
e.printStackTrace();
}
}

}