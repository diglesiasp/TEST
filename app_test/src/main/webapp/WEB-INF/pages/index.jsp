<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
 
 <!DOCTYPE html>
 <html>
  <head>
      <meta charset="UTF-8">
      <title>Lista departamentos</title>
  </head>
  <body>
      <div align="center">
          <h1>Lista departamentos</h1>
          <table border="1">
              <tr>
                <th>Id</th>
                <th>Código</th>
                <th>Nombre</th>
                <th>Localización</th>
              </tr>
              <c:forEach var="dept" items="${departments}" varStatus="status">
              <tr>
                  <td>${status.index + 1}</td>
                  <td>${dept.deptNo}</td>
                  <td>${dept.deptName}</td>
                  <td>${dept.location}</td>                            
              </tr>
              </c:forEach>                
          </table>
      </div>
  </body>
</html>