<%-- 
    Document   : index
    Created on : 10 Jun 2020, 19:56:02
    Author     : Anushka Chincholkar
--%>

<%@page import="com.bank.domain.DataConnection" %>
<%@page import="com.bank.domain.UserDao" %>
<%@page import="com.bank.domain.User" %>
<%@page import="com.bank.domain.Customer" %>
<%@ page import="java.util.List"%>

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<% 
    UserDao userdao=DataConnection.getUserDao();
    List<Customer> cstmList = userdao.getAllCustomers();
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Welcome</title>
    </head>
    <body>
        <h1>NoName Bank!</h1>
        <h2>List of All Users:</h2>
        <% 
            for(Customer cstm: cstmList){
        %>
                <li><%= cstm %></li>
            <%;}%>
    </body>
</html>