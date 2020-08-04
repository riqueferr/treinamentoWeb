<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>


<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

<title>Modulos</title>
</head>
<body>

	<br>
	<div class="container">
		<h1>MODELOS RD</h1>
		<br>
		<nav class="navbar navbar-light bg-light">
		<button class="btn btn-info my-2 my-sm-0" type="submit">Novo Registro</button>
			<form class="form-inline" action = "${pageContext.request.contextPath}/modulos" method = "post" accept-charset="UTF-8" >
				<input class="form-control mr-sm-2" type="search"
					placeholder="Pesquisar" aria-label="Pesquisar" aria-describedby="btn-pesquisa" name="NOME">
				<button class="btn btn-outline-success my-2 my-sm-0" type="submit" id="btn-pesquisa">Pesquisar</button>
			</form>
		</nav>
		
		<br>
		<br>
		
		<table class="table table-striped">
			<thead class="thead-dark">
				<tr>
					<th scope="col">Nome</th>
					<th scope="col">Instrutor Titular</th>
					<th scope="col">Instrutor Auxiliar</th>
					<th scope="col">Data do Início</th>
				</tr>
			</thead>
			
			
			
			<tbody>
				<c:forEach var="modulo" items="${modulos}">
					<tr>
						<td><c:out value="${modulo.getNome()}"></c:out></td>
						<td><c:out value="${modulo.getTitular()}"></c:out></td>
						<td><c:out value="${modulo.getAuxiliar()}"></c:out></td>
						<td><fmt:formatDate value="${modulo.getDtInicio()}" pattern="dd/MM/yyyy"/> </td>
						<td><button type="button" class="btn btn-outline-secondary">Editar</button>&nbsp
                             <button id="btn-form-search" class="btn btn-outline-danger" type="submit" data-toggle="modal" data-target="#exampleModal">Excluir<i class="fas fa-times"></i></button>                                        
                        </td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>

</body>
</html>