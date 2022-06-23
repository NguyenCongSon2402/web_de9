<!DOCTYPE html>
<!--
Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Html.html to edit this template
-->
<html>
    <head>
        <title>Search Student</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <body>
        <h1>Search</h1>
        <form action="SearchServlet" method="post">
          
            Id:<input type="text" name="id" value="${sessionScope.st.id}" required="" autofocus=""></br>
            Name:<input type="text" name="name" value="${sessionScope.st.name}" required="" autofocus=""></br><!-- comment -->
            Dob:<input type="text" name="dob" value="${sessionScope.st.dob}" required="" autofocus=""></br><!-- comment -->
            Department:<input type="text" name="department" value="${sessionScope.st.department}" required="" autofocus=""></br><!-- comment -->
            <button type="submit">Search</button>
        </form>
    </body>
</html>
