/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/7.0.47
 * Generated at: 2016-09-09 00:48:30 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class calculoIMC_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  private javax.el.ExpressionFactory _el_expressionfactory;
  private org.apache.tomcat.InstanceManager _jsp_instancemanager;

  public java.util.Map<java.lang.String,java.lang.Long> getDependants() {
    return _jspx_dependants;
  }

  public void _jspInit() {
    _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
    _jsp_instancemanager = org.apache.jasper.runtime.InstanceManagerFactory.getInstanceManager(getServletConfig());
  }

  public void _jspDestroy() {
  }

  public void _jspService(final javax.servlet.http.HttpServletRequest request, final javax.servlet.http.HttpServletResponse response)
        throws java.io.IOException, javax.servlet.ServletException {

    final javax.servlet.jsp.PageContext pageContext;
    javax.servlet.http.HttpSession session = null;
    final javax.servlet.ServletContext application;
    final javax.servlet.ServletConfig config;
    javax.servlet.jsp.JspWriter out = null;
    final java.lang.Object page = this;
    javax.servlet.jsp.JspWriter _jspx_out = null;
    javax.servlet.jsp.PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html; charset=ISO-8859-1");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("\r\n");
      out.write("<!DOCTYPE html PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\" \"http://www.w3.org/TR/html4/loose.dtd\">\r\n");
      out.write("<html>\r\n");
      out.write("\t<head>\r\n");
      out.write("\t\t<meta http-equiv=\"Content-Type\" content=\"text/html; charset=ISO-8859-1\">\r\n");
      out.write("\t\t<title>Cálculo de IMC</title>\r\n");
      out.write("\t</head>\r\n");
      out.write("\t<body>\r\n");
      out.write("\t\t<h1>Cálculo de IMC</h1>\r\n");
      out.write("\t\t<label for=\"peso\">Peso</label>\r\n");
      out.write("\t\t<input type=\"text\" id=\"peso\" name=\"peso\"><br>\r\n");
      out.write("\t\t<label for=\"altura\">Altura</label>\r\n");
      out.write("\t\t<input type=\"text\" id=\"altura\" name=\"altura\"><br>\r\n");
      out.write("\t\t<p>Qual o sexo?</p><br>\r\n");
      out.write("\t\t<label>Masculino</label>\r\n");
      out.write("\t\t<input type=\"radio\" name=\"sexo\" value=\"masculino\"><br>\r\n");
      out.write("\t\t<label>Feminino</label>\r\n");
      out.write("\t\t<input type=\"radio\" name=\"sexo\" value=\"feminino\"><br>\r\n");
      out.write("\t\t<button>Calcular</button>\r\n");
      out.write("\t\t");

			String pesoStr = request.getParameter("peso");
			String alturaStr = request.getParameter("altura");
			String sexoStr = request.getParameter("sexo");
				
			double peso = double.parseDouble(pesoStr);
			double altura = double.parseDouble(alturaStr);
			
			double imc = peso / (altura * altura);
			
			if(sexoStr.equals("masculino")){
				if(imc < 20.7){
					
      out.write("<b>Abaixo do peso</b>");

				} else if(imc >= 20.7 && imc < 26.4){
					
      out.write("<b>No peso normal</b>");

				} else if(imc >= 26.4 && imc < 27.8){
					
      out.write("<b>Marginalmente acima do peso</b>");

				} else if(imc >= 27.8 && imc < 31.1){
					
      out.write("<b>Acima do peso ideal</b>");

				} else if(imc >= 31.1){
					
      out.write("<b>Obeso</b>");

				}
			} else {
				if(imc < 19.1){
					
      out.write("<b>Abaixo do peso</b>");

				} else if(imc >= 19.1 && imc < 25.8){
					
      out.write("<b>No peso normal</b>");

				} else if(imc >= 25.8 && imc < 27.3){
					
      out.write("<b>Marginalmente acima do peso</b>");

				} else if(imc >= 27.3 && imc < 32.3){
					
      out.write("<b>Acima do peso ideal</b>");

				} else if(imc >= 32.3){
					
      out.write("<b>Obeso</b>");

				}
			}
			
      out.write("\r\n");
      out.write("\t</body>\r\n");
      out.write("</html>");
    } catch (java.lang.Throwable t) {
      if (!(t instanceof javax.servlet.jsp.SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try { out.clearBuffer(); } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
