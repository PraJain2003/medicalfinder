package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;

public final class index_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(2);
    _jspx_dependants.add("/general2.jsp");
    _jspx_dependants.add("/general1.jsp");
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

      out.write('\n');
      out.write("<head>\n");
      out.write("\n");
      out.write("<title>Untitled Document</title>\n");
      out.write("</head>\n");
      out.write("<link href=\"styles/css/bootstrap.css\" rel=\"stylesheet\" type=\"text/css\" />\n");
      out.write("<body>\n");
      out.write("    <div class=\"banner\">\n");
      out.write("        Welcome to Medicine Finder\n");
      out.write("        \n");
      out.write("    </div>\n");
      out.write("<nav class=\"navbar navbar-expand-lg navbar-light bg-success\">\n");
      out.write("  <div class=\"container-fluid\">\n");
      out.write("    <a class=\"navbar-brand\" style=\"font-size:28px; font-family: serif; font-weight: bold;\" href=\"#\">Medical Finder</a>\n");
      out.write("    <button class=\"navbar-toggler\" type=\"button\" data-bs-toggle=\"collapse\" data-bs-target=\"#navbarScroll\" aria-controls=\"navbarScroll\" aria-expanded=\"false\" aria-label=\"Toggle navigation\">\n");
      out.write("      <span class=\"navbar-toggler-icon\"></span>\n");
      out.write("    </button>\n");
      out.write("    <div class=\"collapse navbar-collapse\" id=\"navbarScroll\">\n");
      out.write("      <ul class=\"navbar-nav me-auto my-2 my-lg-0 navbar-nav-scroll\" style=\"--bs-scroll-height: 100px;\">\n");
      out.write("        <li class=\"nav-item\">\n");
      out.write("            <a class=\"nav-link active\" aria-current=\"page\" href=\"index.jsp\">Home</a>\n");
      out.write("        </li>\n");
      out.write("        <li class=\"nav-item\">\n");
      out.write("            <a class=\"nav-link active\" aria-current=\"page\" href=\"allmedical.jsp\">Medicals</a>\n");
      out.write("        </li>\n");
      out.write("        \n");
      out.write("        <li class=\"nav-item\">\n");
      out.write("            <a class=\"nav-link active\" href=\"Login.jsp\"  aria-current=\"page\">Signin</a>\n");
      out.write("        </li>\n");
      out.write("      </ul>\n");
      out.write("      <form class=\"d-flex\">\n");
      out.write("        <input class=\"form-control me-2\" type=\"search\" placeholder=\"Search\" aria-label=\"Search\">\n");
      out.write("        <button class=\"btn btn-outline-dark\" type=\"submit\">Search</button>\n");
      out.write("      </form>\n");
      out.write("    </div>\n");
      out.write("  </div>\n");
      out.write("</nav>\n");
      out.write("    <style>\n");
      out.write("    .banner\n");
      out.write("    {\n");
      out.write("        height:260px;\n");
      out.write("\tpadding-top:75px;\n");
      out.write("\tfont-size:55px;\n");
      out.write("\ttext-align:center;\n");
      out.write("\tcolor: #000;\n");
      out.write("\tfont-weight:bolder;\n");
      out.write("        background-image:url(\"images/medicine.webp\");\n");
      out.write("        background-size: 100%;\n");
      out.write("        text-shadow:#09C 0px 0px 5px;\n");
      out.write("\n");
      out.write("        \n");
      out.write("    }\n");
      out.write("    </style>");
      out.write("\n");
      out.write("\n");
      out.write("<script type=\"text/javascript\">\n");
      out.write("function find_med(str)\n");
      out.write("{\n");
      out.write("\tvar xmlhttp;\n");
      out.write("\tif (str.length==0)\n");
      out.write("\t{ \n");
      out.write("\t\tdocument.getElementById(\"s1\").innerHTML=\"\";\n");
      out.write("\t\treturn;\n");
      out.write("\t}\n");
      out.write("\tif (window.XMLHttpRequest)\n");
      out.write("\t{// code for IE7+, Firefox, Chrome, Opera, Safari\n");
      out.write("\t\txmlhttp=new XMLHttpRequest();\n");
      out.write("\t}\n");
      out.write("\telse\n");
      out.write("\t{// code for IE6, IE5\n");
      out.write("\t\txmlhttp=new ActiveXObject(\"Microsoft.XMLHTTP\");\n");
      out.write("\t}\n");
      out.write("\t\n");
      out.write("\txmlhttp.onreadystatechange=function()\n");
      out.write("\t{\n");
      out.write("\t\tif (xmlhttp.readyState==4 && xmlhttp.status==200)\n");
      out.write("\t\t{\n");
      out.write("\t\t\t\tdocument.getElementById(\"s1\").innerHTML=xmlhttp.responseText;\n");
      out.write("\t\t}\n");
      out.write("\t}\n");
      out.write("\txmlhttp.open(\"GET\",\"search_med.jsp?q=\"+str,true);\n");
      out.write("\txmlhttp.send();\n");
      out.write("}\n");
      out.write("</script>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<center><h1>Medicine Finder</h1>\n");
      out.write("\n");
      out.write("<form method=\"post\" action=\"\" style=\"font-size: large;\">\n");
      out.write("    <p>\n");
      out.write("        Medicine name:<input onkeyup=\"find_med(this.value)\" type=\"text \" placeholder=\"search\" name=\"s1\" />\n");
      out.write("        \n");
      out.write("    </p>\n");
      out.write("</form>\n");
      out.write("    \n");
      out.write("    \n");
      out.write("    \n");
      out.write("            </center>\n");
      out.write("\n");
      out.write("\n");
      out.write("<span id=\"s1\"></span>\n");
      out.write("\n");
      out.write("\n");
      out.write("<div class=\"fotter\">\n");
      out.write("                <font face=\"Arial Black, Gadget, sans-serif\" size=\"5\">\n");
      out.write("                All copyrights&copy; are reserved by me.\n");
      out.write("                </font>\n");
      out.write("                </div><!--fotter end-->\n");
      out.write("</body>\n");
      out.write("<style>\n");
      out.write("    \n");
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
      out.write("</html>");
      out.write("\n");
      out.write(" <style>\n");
      out.write("    .j1\n");
      out.write("    {\n");
      out.write("        \n");
      out.write("        font-family: serif;\n");
      out.write("        font-size: 28px;\n");
      out.write("        color: #009966;\n");
      out.write("        font-weight: bold;\n");
      out.write("    }\n");
      out.write("    \n");
      out.write("    .t1\n");
      out.write("    {\n");
      out.write("        font-family: serif;\n");
      out.write("        font-size: 22px;\n");
      out.write("        font-weight: bold;\n");
      out.write("        color: #009966;\n");
      out.write("    }\n");
      out.write("    \n");
      out.write("                \n");
      out.write("                \n");
      out.write("                p\n");
      out.write("                {\n");
      out.write("                   font-weight: bold;\n");
      out.write("                }\n");
      out.write(".k1\n");
      out.write("{\n");
      out.write("    height:50px;\n");
      out.write("    width:110px;\n");
      out.write("    color:#000;\n");
      out.write("    background:#ffffff;\n");
      out.write("    border-radius:20px;\n");
      out.write("    font-size:30px;\n");
      out.write("    cursor:pointer;\n");
      out.write("    border:2px solid #000;\n");
      out.write("\n");
      out.write("}   \n");
      out.write(".k1:hover\n");
      out.write("{\n");
      out.write("    background: #009966;\n");
      out.write("}\n");
      out.write("h3\n");
      out.write("    {\n");
      out.write("                 padding-top: 15px;\n");
      out.write("                 font-family: serif;\n");
      out.write("                 font-weight: bold;\n");
      out.write("                 font-size: 40px;\n");
      out.write("    }\n");
      out.write("    h1\n");
      out.write("    {\n");
      out.write("                 padding-top: 15px;\n");
      out.write("                 font-family: serif;\n");
      out.write("                 font-weight: bold;\n");
      out.write("                 font-size: 40px;\n");
      out.write("    }\n");
      out.write("    .m\n");
      out.write("    {\n");
      out.write("     font-size: 24px;\n");
      out.write("     font-family: serif;\n");
      out.write("    }\n");
      out.write("</style>");
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
