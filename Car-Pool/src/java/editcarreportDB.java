import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Harsh
 */
public class editcarreportDB extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     * @throws java.lang.ClassNotFoundException
     * @throws java.sql.SQLException
     * @throws java.lang.InstantiationException
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, ClassNotFoundException, SQLException, InstantiationException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        String admses = request.getParameter("ul");
        String c = request.getParameter("company");
        String d = request.getParameter("name");
        String e = request.getParameter("number");
        String f = request.getParameter("seats");
        String g = request.getParameter("price");
        String SrNo = "select SrNo from carreport where Name='"+d+"'";
        try {
             Connection conn = DAO.DBCon.getConnection();
            Statement st=conn.createStatement();
            String s1="UPDATE carreport SET `Company`='"+c+"',`Name`='"+d+"',`Number`='"+e+"',`Seats`='"+f+"',`Price`='"+g+"' WHERE `SrNo`='"+SrNo+"'"; 
            if((st.executeUpdate(s1))>0)
            {
                if(admses == null)
                {
                    out.println("<script type=\"text/javascript\">");
                    out.println("alert('Records Updated Successfully!!');");
                    out.println("location='CarReport.jsp';");
                    out.println("</script>");
                }
                else
                {
                    out.println("<script type=\"text/javascript\">");
                    out.println("alert('Records Updated Successfully!!');");
                    out.println("location='CarReportAdmin.jsp';");
                    out.println("</script>");
                }
            }
        }
        catch(SQLException ex){
                out.println("<script type=\"text/javascript\">");
                out.println("alert('"+ex+"');");
                out.println("</script>"); }
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
            processRequest(request, response);
        } catch (ClassNotFoundException | SQLException | InstantiationException ex) {
            Logger.getLogger(editcarreportDB.class.getName()).log(Level.SEVERE, null, ex);
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
        } catch (ClassNotFoundException | SQLException | InstantiationException ex) {
            Logger.getLogger(editcarreportDB.class.getName()).log(Level.SEVERE, null, ex);
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
