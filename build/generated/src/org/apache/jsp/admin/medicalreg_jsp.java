package org.apache.jsp.admin;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class medicalreg_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(2);
    _jspx_dependants.add("/admin/admin.jsp");
    _jspx_dependants.add("/admin/admin1.jsp");
  }

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

      out.write("<head>\n");
      out.write("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\" />\n");
      out.write("<title>Untitled Document</title>\n");
      out.write("</head>\n");
      out.write("<link href=\"../styles/css/bootstrap.css\" rel=\"stylesheet\" type=\"text/css\" />\n");
      out.write("<script src=\"../styles/js/bootstrap.bundle.js\" type=\"text/javascript\">\n");
      out.write("\n");
      out.write("</script>\n");
      out.write("\n");
      out.write("<style>\n");
      out.write("    .banner\n");
      out.write("    {\n");
      out.write("        height:120px;\n");
      out.write("\tpadding-top:15px;\n");
      out.write("\tfont-size:50px;\n");
      out.write("\ttext-align:center;\n");
      out.write("\tcolor: #000;\n");
      out.write("\tfont-weight:bolder;\n");
      out.write("    }\n");
      out.write("</style>\n");
      out.write("<body>\n");
      out.write("    <div class=\"banner\">\n");
      out.write("        Welcome to Admin\n");
      out.write("        \n");
      out.write("    </div>\n");
      out.write("<nav class=\"navbar navbar-expand-lg navbar-light bg-success\">\n");
      out.write("  <div class=\"container-fluid\">\n");
      out.write("    <a class=\"navbar-brand\" style=\"font-size:28px; font-family: serif; font-weight: bold;\" href=\"#\">Admin</a>\n");
      out.write("    <button class=\"navbar-toggler\" type=\"button\" data-bs-toggle=\"collapse\" data-bs-target=\"#navbarScroll\" aria-controls=\"navbarScroll\" aria-expanded=\"false\" aria-label=\"Toggle navigation\">\n");
      out.write("      <span class=\"navbar-toggler-icon\"></span>\n");
      out.write("    </button>\n");
      out.write("    <div class=\"collapse navbar-collapse\" id=\"navbarScroll\">\n");
      out.write("      <ul class=\"navbar-nav me-auto my-2 my-lg-0 navbar-nav-scroll\" style=\"--bs-scroll-height: 100px;\">\n");
      out.write("        <li class=\"nav-item\">\n");
      out.write("            <a class=\"nav-link active\" aria-current=\"page\" href=\"adminhome.jsp\">Home</a>\n");
      out.write("        </li>\n");
      out.write("        \n");
      out.write("        <li class=\"nav-item dropdown\">\n");
      out.write("          <a class=\"nav-link dropdown-toggle\" href=\"#\" id=\"navbarScrollingDropdown\" role=\"button\" data-bs-toggle=\"dropdown\" aria-expanded=\"false\">\n");
      out.write("            Admin\n");
      out.write("          </a>\n");
      out.write("          <ul class=\"dropdown-menu\" aria-labelledby=\"navbarScrollingDropdown\">\n");
      out.write("              <li><a class=\"dropdown-item\" href=\"adminreg.jsp\">Admin</a></li>\n");
      out.write("              <li><a class=\"dropdown-item\" href=\"showadmin.jsp\">Show</a></li>\n");
      out.write("        </li>\n");
      out.write("        \n");
      out.write("      </ul>\n");
      out.write("              <li class=\"nav-item dropdown\">\n");
      out.write("          <a class=\"nav-link dropdown-toggle\" href=\"#\" id=\"navbarScrollingDropdown\" role=\"button\" data-bs-toggle=\"dropdown\" aria-expanded=\"false\">\n");
      out.write("            Medical\n");
      out.write("          </a>\n");
      out.write("          <ul class=\"dropdown-menu\" aria-labelledby=\"navbarScrollingDropdown\">\n");
      out.write("              <li><a class=\"dropdown-item\" href=\"medicalreg.jsp\">Register</a></li>\n");
      out.write("              <li><a class=\"dropdown-item\" href=\"showmedical.jsp\">Manage</a></li>\n");
      out.write("              <li><a class=\"dropdown-item\" href=\"changepassword.jsp\">change password</a></li>\n");
      out.write("        </li>\n");
      out.write("        \n");
      out.write("      </ul>\n");
      out.write("\n");
      out.write("      <li class=\"nav-item\">\n");
      out.write("          <a class=\"nav-link active\" href=\"../logout.jsp\" aria-current=\"page\">Logout</a>\n");
      out.write("        </li>\n");
      out.write("    </div>\n");
      out.write("  </div>\n");
      out.write("</nav>\n");
      out.write("\n");
      out.write("\n");
      out.write("<center>\n");
      out.write("<h1>Medical Data Register</h1>\n");
      out.write("\n");
      out.write("<form method=\"post\" action=\"medicalreg1.jsp\">\n");
      out.write("    <p>name<input type=\"text\" name=\"t1\" id=\"txt1\"</p>\n");
      out.write("    <p>owner name:<input type=\"text\" name=\"t2\" id=\"txt2\"</p>\n");
      out.write("    <p>license no.<input type=\"text\" name=\"t3\" id=\"txt3\"</p>\n");
      out.write("    <p>address<input type=\"text\" name=\"t4\" id=\"txt4\"</p>\n");
      out.write("    <p>contact<input type=\"text\" name=\"t5\" id=\"txt5\"</p>\n");
      out.write("    <p>email<input type=\"text\" name=\"t6\" id=\"txt6\"</p>\n");
      out.write("    <p>password<input type=\"text\" name=\"t7\" id=\"txt7\"</p>\n");
      out.write("    <p>confirm password<input type=\"text\" name=\"t8\" id=\"txt8\"</p>\n");
      out.write("    <p><button type=\"submit\"class=\"btn1\">register</button></p>\n");
      out.write("    </form>\n");
      out.write("\n");
      out.write("</center>\n");
      out.write("\n");
      out.write("    <style>\n");
      out.write("            h1\n");
      out.write("{\n");
      out.write("    padding-top: 17px;\n");
      out.write("    font-family:serif;\n");
      out.write("    font-weight: bold;\n");
      out.write("}\n");
      out.write("p\n");
      out.write("{\n");
      out.write("    padding-top: 3px;\n");
      out.write("    font-weight: bold;\n");
      out.write("    font-family: serif;\n");
      out.write("    font-size: 20px;\n");
      out.write("}\n");
      out.write(".btn1\n");
      out.write("{\n");
      out.write("     height:60px;\n");
      out.write("    width:130px;\n");
      out.write("    color:#000;\n");
      out.write("    background:#ffffff;\n");
      out.write("    border-radius:20px;\n");
      out.write("    font-size:35px;\n");
      out.write("    cursor:pointer;\n");
      out.write("    border:2px solid #000;\n");
      out.write("}\n");
      out.write(".btn1:hover\n");
      out.write("{\n");
      out.write("    background: #009966;\n");
      out.write("}\n");
      out.write("        </style>\n");
      out.write("<div class=\"fotter\">\n");
      out.write("                <font face=\"Arial Black, Gadget, sans-serif\" size=\"5\">\n");
      out.write("                All copyrights&copy; are reserved by me.\n");
      out.write("                </font>\n");
      out.write("                </div><!--fotter end-->\n");
      out.write("</body>\n");
      out.write("<style>\n");
      out.write("    .fotter\n");
      out.write("{\n");
      out.write("        margin-top:250px; \n");
      out.write("\theight:140px;\n");
      out.write("\twidth:1349px;\n");
      out.write("\tfloat:left;\n");
      out.write("        background:#009966;\n");
      out.write("\tline-height:140px;\n");
      out.write("\ttext-align:center;\n");
      out.write("\tfont-size:25px;\n");
      out.write("}\n");
      out.write("\n");
      out.write("</style>\n");
      out.write("</html>\n");
      out.write("\n");
      out.write("        ");
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
