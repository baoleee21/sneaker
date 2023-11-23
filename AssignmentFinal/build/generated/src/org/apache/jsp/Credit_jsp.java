package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class Credit_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <title>Fashion Store A Fashion Category Flat Bootstarp Resposive Website Template | Signup :: w3layouts</title>\n");
      out.write("<link href=\"css/bootstrap.css\" rel=\"stylesheet\" type=\"text/css\" media=\"all\" />\n");
      out.write("<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->\n");
      out.write("<script src=\"js/jquery.min.js\"></script>\n");
      out.write("<!-- Custom Theme files -->\n");
      out.write("<!--theme-style-->\n");
      out.write("<link href=\"css/style.css\" rel=\"stylesheet\" type=\"text/css\" media=\"all\" />\t\n");
      out.write("<!--//theme-style-->\n");
      out.write("<meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n");
      out.write("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\" />\n");
      out.write("<meta name=\"keywords\" content=\"Fashion Store Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, \n");
      out.write("Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design\" />\n");
      out.write("<script type=\"application/x-javascript\"> addEventListener(\"load\", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>\n");
      out.write("<!--fonts-->\n");
      out.write("<link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700,800' rel='stylesheet' type='text/css'>\n");
      out.write("<link href='http://fonts.googleapis.com/css?family=Oswald:400,700,300' rel='stylesheet' type='text/css'>\n");
      out.write("<!--//fonts-->\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("          <div class=\"header\">\n");
      out.write("            <div class=\"header-top\">\n");
      out.write("                <div class=\"container\">\n");
      out.write("                    <div class=\"header-grid\">\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"header-grid-right\">\n");
      out.write("\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"clearfix\"> </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("            <div class=\"container\">\n");
      out.write("                <div class=\"header-bottom\">\t\t\t\n");
      out.write("                    <div class=\"logo\">\n");
      out.write("                        <a href=\"index.html\"><img src=\"images/logo.png\" alt=\" \" ></a>\n");
      out.write("\n");
      out.write("                        <form action=\"admin\">\n");
      out.write("                            <h2>Hello!! ");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${user}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("</h2>\n");
      out.write("                        </form>\n");
      out.write("                    </div>\n");
      out.write("\n");
      out.write("                    <div class=\"clearfix\"> </div>\n");
      out.write("\n");
      out.write("                </div>\t\n");
      out.write("                <div class=\"header-bottom-bottom\">\n");
      out.write("                    <div class=\"top-nav\">\n");
      out.write("                        <span class=\"menu\"> </span>\n");
      out.write("                        <ul>\n");
      out.write("                            \n");
      out.write("                            <li><a href=\"\" >Update Product</a></li>\n");
      out.write("\n");
      out.write("                        </ul>\t\n");
      out.write("                        <script>\n");
      out.write("                            $(\"span.menu\").click(function () {\n");
      out.write("                                $(\".top-nav ul\").slideToggle(500, function () {\n");
      out.write("                                });\n");
      out.write("                            });\n");
      out.write("                        </script>\n");
      out.write("\n");
      out.write("                        <div class=\"clearfix\"> </div>\t\t\t\t\t\n");
      out.write("                    </div>\n");
      out.write("                    \n");
      out.write("                    <div class=\"clearfix\"> </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("\t<!---->\n");
      out.write("\t<div class=\"content\">\n");
      out.write("\t\t<div class=\"container\"> \t\t\t         \n");
      out.write("\t\t<div class=\"register\">\n");
      out.write("                    <form action=\"\"> \n");
      out.write("\t\t\t\t <div class=\"  register-top-grid\">\n");
      out.write("\t\t\t\t\t<h3>Shopping Cart</h3>\n");
      out.write("\t\t\t\t\t<div class=\"mation\">\n");
      out.write("                                            \n");
      out.write("\t\t\t\t\t\t\n");
      out.write("\t\t\t\t\t\n");
      out.write("\t\t\t\t\t\t<span>Name<label>*</label></span>\n");
      out.write("                                                <input type=\"text\" name=\"name\" value=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${Name}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\"> \n");
      out.write("                                                \n");
      out.write("                                                <span>Image<label>*</label></span>\n");
      out.write("                                                <input type=\"text\" name=\"Image\" value=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${Image}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\">                                                \n");
      out.write("                                                \t\t\t\t\t \n");
      out.write("\t\t\t\t\t\t <span>Quantity<label>*</label></span>\n");
      out.write("                                                 <input type=\"text\" name=\"qtt\" value=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${quantity}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\"> \n");
      out.write("                                                 \n");
      out.write("                                                 <span>Price<label>*</label></span>\n");
      out.write("                                                 <input type=\"text\" name=\"pr\" value=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${Price}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\"> \n");
      out.write("                                                 <span>Amount<label>*</label></span>\n");
      out.write("                                                 <input type=\"text\" name=\"qtt\" value=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${quantity}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\"> \n");
      out.write("                                                  \n");
      out.write("\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t <div class=\"clearfix\"> </div>\n");
      out.write("                                         <input type=\"submit\" name=\"update\" value=\"Update\">\n");
      out.write("\t\t\t\t\t </div>\n");
      out.write("\t\t\t\t     \n");
      out.write("\t\t\t\t</form>\n");
      out.write("\t\t   </div>\n");
      out.write("\t\t </div>\n");
      out.write("\t</div>\n");
      out.write("\t<!---->\n");
      out.write("\t<div class=\"footer\">\n");
      out.write("\t\t<div class=\"container\">\n");
      out.write("\t\t\t\t<div class=\"footer-class\">\n");
      out.write("\t\t\t\t<div class=\"class-footer\">\n");
      out.write("\t\t\t\t\t\n");
      out.write("\t\t\t\t\t\n");
      out.write("\t\t\t\t</div>\t \n");
      out.write("\t\t\t\t<div class=\"footer-left\">\n");
      out.write("\t\t\t\t\t<a href=\"index.html\"><img src=\"images/logo1.png\" alt=\" \" /></a>\n");
      out.write("\t\t\t\t</div> \n");
      out.write("\t\t\t\t<div class=\"clearfix\"> </div>\n");
      out.write("\t\t\t \t</div>\n");
      out.write("\t\t </div>\n");
      out.write("\t</div>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
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
