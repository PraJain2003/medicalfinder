package org.apache.jsp.medical;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;

public final class profile_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\r\n");
      out.write("<h1>Medical profile</h1>\r\n");

    Class.forName("com.mysql.jdbc.Driver");
    
    //Create conection
    String dbpath="jdbc:mysql://localhost:3306/medicalfinder";
    String dbuser="root";
    String dbpass="";
    //load driver for mysql-connectivity with java

    Connection cn=DriverManager.getConnection(dbpath, dbuser, dbpass);
    
    //Create sql command
    String sql="select * from medicinedata";
    
    //create statement
    PreparedStatement p1=cn.prepareStatement(sql);
    
    //Fetch data
    
    ResultSet r1=p1.executeQuery();
    
    while(r1.next())
    {
        String a,b,c,d,e,f;
        a=r1.getString("med_name");
        b=r1.getString("med_type");
        c=r1.getString("company");
        d=r1.getString("licno");
        e=r1.getString("unit_price");
        f=r1.getString("med_id");
        
        
        
      out.write("\r\n");
      out.write("       \r\n");
      out.write("        <h3>");
      out.print( f );
      out.write("</h3>\r\n");
      out.write("        <p>\r\n");
      out.write("           med_name: ");
      out.print( a);
      out.write("<br/>\r\n");
      out.write("            \r\n");
      out.write("           med_type: ");
      out.print( b );
      out.write("<br/>\r\n");
      out.write("            company :");
      out.print( c );
      out.write("<br/>\r\n");
      out.write("            licno: ");
      out.print( d );
      out.write("<br/>\r\n");
      out.write("            unit_price: ");
      out.print( e );
      out.write("<br/>\r\n");
      out.write("            \r\n");
      out.write("            \r\n");
      out.write("            \r\n");
      out.write("        </p>\r\n");
      out.write("        \r\n");
      out.write("        ");

    }
    

    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
