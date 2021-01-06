import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Harsh
 */
public class EmpValid extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     * @throws java.security.NoSuchAlgorithmException
     * @throws java.sql.SQLException
     * @throws java.lang.ClassNotFoundException
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, NoSuchAlgorithmException, SQLException, ClassNotFoundException {
        response.setContentType("text/html;charset=UTF-8");
            PrintWriter out = response.getWriter();
            HttpSession session = request.getSession();
            String s1=request.getParameter("uname");
            String plainText = request.getParameter("pws");
             MessageDigest mdAlgorithm = MessageDigest.getInstance("MD5");
             mdAlgorithm.update(plainText.getBytes());

             byte[] digest = mdAlgorithm.digest();
             StringBuilder hexString = new StringBuilder();

            for (int i = 0; i < digest.length; i++) {
                 plainText = Integer.toHexString(0xFF & digest[i]);
            
            if (plainText.length() < 2) {
                plainText = "0" + plainText;
              }

             hexString.append(plainText);
        }
        try
        {       Class.forName("com.mysql.jdbc.Driver");
                Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/carpooling","root","");
            Statement st=conn.createStatement();
            ResultSet rs=st.executeQuery("select firstname,username,password from edetails where username='"+s1+"' and password='"+hexString+"'");
            if(rs.next())
            {
                 session.setAttribute("username",s1);
                 response.sendRedirect("empindex.jsp");
            }
            else
            {
                response.sendRedirect("employee.jsp");
            }
        }
            catch(IOException | SQLException e)
            {
            out.print(e);
            }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            request.getSession().setAttribute("Check_Session", true);
            processRequest(request, response);
        } catch (NoSuchAlgorithmException | SQLException | ClassNotFoundException ex) {
            Logger.getLogger(EmpValid.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (NoSuchAlgorithmException | SQLException | ClassNotFoundException ex) {
            Logger.getLogger(EmpValid.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
