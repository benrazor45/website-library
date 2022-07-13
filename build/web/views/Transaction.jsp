<%-- 
    Document   : Transcation
    Created on : Jun 27, 2022, 10:11:14 PM
    Author     : Benaya
--%>

<%@page import="Controller.TranController"%>
<%@page import="java.sql.ResultSet"%>
<%--<%@ taglib prefix="c" uri="http://java.sun/com/jstl/core" %>--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <jsp:include page='layouts/head.jsp'>
            <jsp:param name="title" value="Homepage" />
        </jsp:include>
    </head>
    <body class="d-flex flex-column h-100">
        <jsp:include page='layouts/navbar.jsp'></jsp:include>
        
        <%
            TranController pc = new TranController();
            ResultSet rs = pc.gets();
        %>
        
        <!-- Begin page content -->
        <main class="flex-shrink-0">
          <div class="container">
            <h1 class="mt-5">Peminjaman Buku Libraryum</h1>
            <p class="lead">Pin a footer to the bottom of the viewport in desktop browsers with this custom HTML and CSS. A fixed navbar has been added with <code class="small">padding-top: 60px;</code> on the <code class="small">main &gt; .container</code>.</p>
            <div class="row pt-5">
                <div class="col-12">
                    <table class="table table-striped table-hover">
                        <thead>
                            <tr>
                                <th>Books ID.</th>
                                <th>Borrower Name</th>
                                <th>Borrow Date</th>
                                <th>Return Date</th>
                                <th>Aksi</th>
                            </tr>
                        </thead>
                        <tbody>
                            <% while(rs.next()) { %>
                            <tr>
                                <td><%= rs.getString("Books_ID") %></td>
                                <td><%= rs.getString("Borrower_Name") %></td>
                                <td><%= rs.getString("Borrow_Date") %></td>
                                <td><%= rs.getString("Return_Date") %></td>
                                <td>
                                    <a href="#" class="btn btn-sm btn-info">Edit</a>
                                    <a href="#" class="btn btn-sm btn-danger">Delete</a>
                                </td>
                            </tr>
                            <% } %>
                        </tbody>
                    </table>
                </div>
            </div>
          </div>
        </main>
        
        
        <jsp:include page='layouts/footer.jsp'></jsp:include>
        <jsp:include page='layouts/scripts.jsp'></jsp:include>
    </body>
</html>