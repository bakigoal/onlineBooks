<%@ page contentType="text/html; charset=UTF-8"    pageEncoding="UTF-8" language="java" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>home</title>
    <c:import url="fragments/static_files.jsp"/>
</head>
    <c:import url="fragments/header.jsp"/>
 
<div class="container">
 
  <div class="row">
    <p>
		<a class="btn btn-primary btn-lg" href="<c:url value="/createBook"/>"  role="button">Create Random Book</a>
	</p>
    <p>
		<a class="btn btn-primary btn-lg" href="<c:url value="/downloadPDF"/>"  role="button">Books in pdf</a>
	</p>
        <div class="table-responsive cart_info">
             <table class="table table-condensed">
                   <thead>
                        <tr>
                            <td>ID</td>
                            <td>Description</td>
                                    <td>Date</td>
                                </tr>
                            </thead>
                            <tbody>
                                <c:forEach items="${books}" var="i">
                                    <tr>
                                        <td>${i.id}</td>
                                        <td>${i.title}</td>
                                        <td>${i.published}</td>
                                    </tr>
                                </c:forEach>
                            </tbody>
                        </table>
  </div>
 

    <c:import url="fragments/footer.jsp"/>
</body>
</html>