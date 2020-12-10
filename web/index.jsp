<%-- 
    Document   : index
    Created on : Dec 10, 2020, 10:14:50 AM
    Author     : George.Pasparakis
--%>

<%--<%@page import="models.Product"%>--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <jsp:useBean id="customer" class="models.Customer" scope="application"/>
        <jsp:setProperty name="customer" property="email" value="paspa@hotmail.com" />
        
        
        
        <%! models.Product product = new models.Product(); %>
        <% product.setName("WWWW");%>
        Product getName = <%= product.getName() %>
        Customer: ${customer.email} <br />
        Customer Email: ${customer.email != null} <br />
        
        After jsp:useBean name = AAA <% product.setName("AAA"); out.print(product); %><br/>
        <%--<jsp:useBean id="product" class="models.Product" scope="request" />--%>
        After new Product: <%= product %><br/>
        <%--<jsp:setProperty name="product" property="name" value="LLL"/>--%>
        After jsp:set Product: <%= product %>
        
        
        
        
        
  
        <% //product.setName("AAA"); %>
        
        
    </body>
</html>
