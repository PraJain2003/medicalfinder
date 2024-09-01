package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;

public final class search_005fmed_jsp extends org.apache.jasper.runtime.HttpJspBase
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

      out.write('\n');

    
    Class.forName("com.mysql.jdbc.Driver");
    String dbpath="jdbc:mysql://localhost:3306/medicalfinder";
    String dbuser="root";
    String dbpass="";
    Connection cn=DriverManager.getConnection(dbpath, dbuser, dbpass);
              
    String med_name=request.getParameter("q");
    
    if(med_name!=null)
    {
        
        String s2="select * from medicine_with_medical where med_name LIKE '%"+med_name+"%'";
        PreparedStatement p2=cn.prepareStatement(s2);
        
        ResultSet r2=p2.executeQuery();

        while(r2.next())
        {
            String a,b,c,e,f,h,j,k;
            a=r2.getString("med_name");
            j=r2.getString("name");
            k=r2.getString("ownername");
            e=r2.getString("address");
            f=r2.getString("contact");
            h=r2.getString("med_type");
            b=r2.getString("unit_price");
            c=r2.getString("email_medical");



            
      out.write("\n");
      out.write("            <center>\n");
      out.write("                <p>\n");
      out.write("                \n");
      out.write("                <div class=\"j1\">Med_name:");
      out.print( a);
      out.write("</br></div>\n");
      out.write("                <div class=\"j1\">unit_price:");
      out.print( b );
      out.write("<br/></div>\n");
      out.write("                <div class=\"j1\">Email_medical:");
      out.print( c );
      out.write("<br/></div>\n");
      out.write("                <div class=\"j1\">Name:");
      out.print( j );
      out.write("<br/></div>\n");
      out.write("                <div class=\"t1\"> Ownername:");
      out.print( k );
      out.write("<br/></div>\n");
      out.write("                <div class=\"t1\">Address:");
      out.print( e );
      out.write("<br/></div>\n");
      out.write("                <div class=\"t1\">Contact:");
      out.print( f );
      out.write("<br/></div>\n");
      out.write("                <div class=\"t1\">med_type:");
      out.print( h );
      out.write("<br/></div>\n");
      out.write("                \n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("            </p>\n");
      out.write("            </center>\n");
      out.write("                <hr/>\n");
      out.write("            ");


            }//end of whilr
            
            
        }//end of if

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
