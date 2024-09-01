package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class Registration_jsp extends org.apache.jasper.runtime.HttpJspBase
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

      out.write("<h1>Registration to medicine finder </h1>\n");
      out.write("<form method=\"post\" action=\"Registration1.jsp\">\n");
      out.write("    <p>Name <input type=\"text\" name=\"T1\" id=\"txt1\" /></p>\n");
      out.write("    <p> Password <input type=\"password\" name=\"T2\" id=\"txt2\" /></p>\n");
      out.write("    <p>contact<input type=\"text\" name=\"T3\" id=\"txt3\" /></p>\n");
      out.write("    <p>email <input type=\"email\" name=\"T4\" id=\"txt4\" /></p>\n");
      out.write("    <button type=\"submit\" id=\"btn\">Register </button> \n");
      out.write("</form>\n");
      out.write("<h1>If you are already registered user</h1>\n");
      out.write("<h2>go to sign in</h2>\n");
      out.write("<h3><a href=\"Login.jsp\">Sign In</a></h3>");
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
