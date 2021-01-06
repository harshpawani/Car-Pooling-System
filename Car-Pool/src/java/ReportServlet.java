import DAO.DBCon;
import java.sql.*;
import java.io.PrintWriter;
import javax.servlet.http.*;
public class ReportServlet extends HttpServlet 
{

    /**
     *
     * @param req
     * @param res
     */
    @Override
    public void service(HttpServletRequest req,HttpServletResponse res)
	{
	try{
		res.setContentType("text/html");
		PrintWriter pw=res.getWriter();

  Connection conn=DBCon.getConnection();
	  Statement st=conn.createStatement();
	  ResultSet rs=st.executeQuery("select email,Report from message");
	/*ResultSetMetaData rmd=rs.getMetaData();
	
	for(int i=1;i<=rmd.getColumnCount();i++)
		{
	s1[i]=rmd.getColumnName(i);
	}*/
while(rs.next())
	{
	pw.println("<html><body><table>");
	 pw.println("<th width=50 height=30>");
    pw.println("<tr>");
		pw.println("<td height=30 width=40 fixed><Strong>Email:</strong>");
	
	pw.print(rs.getObject(1).toString());
pw.println("</td>");	pw.println("</tr>");
		pw.println("<td height=30 width=40 fixed><Strong>Report:</strong>");
	pw.print(rs.getObject(2).toString());
pw.println("</td>");
		pw.println("</tr>");
   pw.println("</table>-------------------------------------------------------</body></html>");
	
	}
}catch(Exception e)
{e.printStackTrace();}

	}
}
