<%@ page import="java.util.ArrayList" %>
<%@ page import="codegym.Customers" %><%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 13/5/2020
  Time: 11:56 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>List Customer</title>
  <link rel="stylesheet" type="text/css" href="css.css">
</head>
<body>
  <%
    ArrayList<Customers> listCustomers = new ArrayList<>();
    listCustomers.add(new Customers("Triệu Lệ Dĩnh","1987","Lang Phường, Trung Quốc","tld1.jpg"));
    listCustomers.add(new Customers("Trần Kiều Ân","1979","Tân Trúc, Đài Loan","tka2.jpg"));
    listCustomers.add(new Customers("Trương Hình Dư","1987","Côn Sơn, Tô Châu, Trung Quốc","thd3.jpg"));
    listCustomers.add(new Customers("Cảnh Điềm","1988","Tây An, Trung Quốc","cd4.jpg"));
    listCustomers.add(new Customers("Dương Dĩnh","1989","Thượng Hải, Trung Quốc","baby5.jpg"));
    pageContext.setAttribute("listCustomers",listCustomers);
  %>
  <form>
    <table style="color: blue" border="1px">
      <tr><th colspan="4"><h1>客戶名單 - Customer List</h1></th></tr>
      <tr>
        <td width="300px" height="60px">全名 - Fullname</td>
        <td width="300px" height="60px">生日日期 (DoB)</td>
        <td width="300px" height="60px">國家 - Country</td>
        <td width="300px" height="60px">頭像 - Avatar</td>
      </tr>
      <c:forEach var="customer" items="#{listCustomers}">
        <tr>
          <td><c:out value="${customer.name}"/></td>
          <td><c:out value="${customer.birthday}"/></td>
          <td><c:out value="${customer.address}"/></td>
          <td><img width="300px" height="150px" src="images/<c:out value="${customer.image}"/>"></td>
        </tr>
      </c:forEach>
    </table>
  </form>
</body>
</html>
