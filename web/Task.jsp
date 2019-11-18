<%-- 
    Document   : Task
    Created on : 18.11.2019, 18:37:28
    Author     : Ivan
--%>
<%@page import="org.json.JSONObject"%>
<%@page import="org.json.JSONArray"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Справочник штатов</h1>
        <div>
        <table border="1" cellpadding="5" cellspacing="5">
            <thead>
        <tr>
            <th>State short name</th>
            <th>State name</th>
        </tr>
            </thead>
            <tbody>
        <tbody>
        <c:forEach items="${allStates}" var="pp">
                <tr>
                    <td><c:out value="${pp.getKey()}" /></td>
                    <td><c:out value="${pp.getValue()}" /></td>
                </tr>
        </c:forEach>
            </tbody>
        </table>   
            <div id="pagination" style = "word-spacing: 6px; font-size: 20px;">
        <%
            int numOfRecords = Source.Addresses.hashMap.size();
            for (int i = 1; i<=numOfRecords; i=i+5) {
                out.print("<a href=StatesServ?offset="+i+">"+(int)Math.ceil((double)i/5) + "</a>"+"   ");
            }
            
        %>
            </div>     
        </div>    
    </body>
</html>
