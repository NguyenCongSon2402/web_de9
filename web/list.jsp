

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%@ taglib prefix="c"
                   uri="http://java.sun.com/jsp/jstl/core" %>
        <table border="1px solid black">
            <tr>
                <th>id</th>
                <th>name</th>
                <th>dob</th>
                <th>department</th>
                <th>select</th>

            </tr>  
            <c:forEach items="${listS}" var="o">
                <tr>
                    <td>${o.id}</td>
                    <td>${o.name}</td>
                    <td>${o.dob}</td>
                    <td>${o.department}</td>
                    <td>
                        <c:if test="${o.selected==1}">selected</c:if>
                        <c:if test="${o.selected==0}"><a href="UpdateServlet?sid=${o.id}" >select</a></c:if>
                        </td>
                    </tr>
            </c:forEach>

        </table>

    </body>
</html>
