<%--
  Created by IntelliJ IDEA.
  User: shweta
  Date: 12/28/11
  Time: 12:18 PM
  To change this template use File | Settings | File Templates.
--%>


<%@ page contentType="text/html;charset=UTF-8" %>
<html>
  <head><title>Simple GSP page</title></head>
  <body>
  Place your content here

           <ul>
      <g:each in="${quote}">
        <li> ${it.content} </li>
      </g:each>
    </ul>

  </body>



</html>

