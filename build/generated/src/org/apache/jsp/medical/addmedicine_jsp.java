package org.apache.jsp.medical;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class addmedicine_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(2);
    _jspx_dependants.add("/medical/medical.jsp");
    _jspx_dependants.add("/medical/medical1.jsp");
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
      out.write("        Welcome to Medical  \n");
      out.write("        \n");
      out.write("    </div>\n");
      out.write("   \n");
      out.write("<nav class=\"navbar navbar-expand-lg navbar-light bg-success\">\n");
      out.write("  <div class=\"container-fluid\">\n");
      out.write("    <a class=\"navbar-brand\" style=\"font-size:28px; font-family: serif; font-weight: bold;\" href=\"#\">Medical</a>\n");
      out.write("    <button class=\"navbar-toggler\" type=\"button\" data-bs-toggle=\"collapse\" data-bs-target=\"#navbarScroll\" aria-controls=\"navbarScroll\" aria-expanded=\"false\" aria-label=\"Toggle navigation\">\n");
      out.write("      <span class=\"navbar-toggler-icon\"></span>\n");
      out.write("    </button>\n");
      out.write("    <div class=\"collapse navbar-collapse\" id=\"navbarScroll\">\n");
      out.write("      <ul class=\"navbar-nav me-auto my-2 my-lg-0 navbar-nav-scroll\" style=\"--bs-scroll-height: 100px;\">\n");
      out.write("        <li class=\"nav-item\">\n");
      out.write("            <a class=\"nav-link active\" aria-current=\"page\" href=\"medicalhome.jsp\">Home</a>\n");
      out.write("        </li>\n");
      out.write("       \n");
      out.write("        <li class=\"nav-item dropdown\">\n");
      out.write("          <a class=\"nav-link dropdown-toggle\" href=\"#\" id=\"navbarScrollingDropdown\" role=\"button\" data-bs-toggle=\"dropdown\" aria-expanded=\"false\">\n");
      out.write("            Medicine\n");
      out.write("          </a>\n");
      out.write("          <ul class=\"dropdown-menu\" aria-labelledby=\"navbarScrollingDropdown\">\n");
      out.write("              <li><a class=\"dropdown-item\" href=\"addmedicine.jsp\">Add</a></li>\n");
      out.write("              <li><a class=\"dropdown-item\" href=\"showmedicine.jsp\">Manage</a></li\n");
      out.write("              <li><a class=\"dropdown-item\" href=\"changepassword.jsp\">Change Password</a></li>\n");
      out.write("\n");
      out.write("            \n");
      out.write("        </li>\n");
      out.write("        </ul>\n");
      out.write("        <li class=\"nav-item\">\n");
      out.write("            <a class=\"nav-link active\" href=\"../logout.jsp\"  aria-current=\"page\">Logout</a>\n");
      out.write("        </li>\n");
      out.write("      \n");
      out.write("      \n");
      out.write("    </div>\n");
      out.write("  </div>\n");
      out.write("</nav>");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<center>\r\n");
      out.write("<h1>Medicine Registration</h1>\r\n");
      out.write("<form method=\"post\" action=\"addmedicine1.jsp\">\r\n");
      out.write("    <p>med_name<input type=\"text\" name=\"t1\" id=\"txt1\"</p>\r\n");
      out.write("    <p>med_type<input type=\"text\" name=\"t2\" id=\"txt2\"</p>\r\n");
      out.write("    <p>company<input type=\"text\" name=\"t3\" id=\"txt3\"</p>\r\n");
      out.write("    <p>licenseno.<input type=\"text\" name=\"t4\" id=\"txt4\"</p>\r\n");
      out.write("    <p>unit_price<input type=\"text\" name=\"t5\" id=\"txt5\"</p>\r\n");
      out.write("        <p>email_medical<input type=\"email\" name=\"t6\" id=\"txt6\"</p>\r\n");
      out.write("\r\n");
      out.write("    \r\n");
      out.write("    <p><button type=\"submit\" class=\"btn1\">register</button></p>\r\n");
      out.write("</form>\r\n");
      out.write("</center>\r\n");
      out.write("<style>\r\n");
      out.write("            h1\r\n");
      out.write("{\r\n");
      out.write("    padding-top: 17px;\r\n");
      out.write("    font-family:serif;\r\n");
      out.write("    font-weight: bold;\r\n");
      out.write("}\r\n");
      out.write("p\r\n");
      out.write("{\r\n");
      out.write("    padding-top: 3px;\r\n");
      out.write("    font-weight: bold;\r\n");
      out.write("    font-family: serif;\r\n");
      out.write("    font-size: 20px;\r\n");
      out.write("}\r\n");
      out.write(".btn1\r\n");
      out.write("{\r\n");
      out.write("     height:60px;\r\n");
      out.write("    width:130px;\r\n");
      out.write("    color:#000;\r\n");
      out.write("    background:#ffffff;\r\n");
      out.write("    border-radius:20px;\r\n");
      out.write("    font-size:35px;\r\n");
      out.write("    cursor:pointer;\r\n");
      out.write("    border:2px solid #000;\r\n");
      out.write("}\r\n");
      out.write(".btn1:hover\r\n");
      out.write("{\r\n");
      out.write("    background: #009966;\r\n");
      out.write("}\r\n");
      out.write("        </style>\r\n");
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
      out.write("        background:#006633;\n");
      out.write("\tline-height:140px;\n");
      out.write("\ttext-align:center;\n");
      out.write("\tfont-size:25px;\n");
      out.write("}\n");
      out.write("\n");
      out.write("</style>\n");
      out.write("</html>");
      out.write('\r');
      out.write('\n');
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
