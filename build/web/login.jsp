<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<%@include file="conexao.jsp" %>
<%@include file="httpservletrequest.jsp"%>
<%@include file="header.jsp"%>
<%@include file="nav.jsp"%>
<%
    if(requisita("acessar") != null){
        try{
            String str = "SELECT * FROM login WHERE login.log_usuario = '" + requisita("usuario") + "' AND login.log_senha = '" + requisita("senha") + "'";
            resultset = statement.executeQuery(str);
            if(resultset.next()){
                session.setAttribute("login", resultset.getString("log_usuario"));
                %>
                <jsp:forward page="index.jsp" />
                <%
            }
        }catch(Exception e ){
            System.out.println("HOUVE UM ERRO NO LOGIN : " + e);
        }
    }
%>
<h2>Acesso</h2>
<form name="login" method="get" action="login.jsp">
        <fieldset>
                <label for="usuario">Usuário</label>
                <input type="text" name="usuario" id="usuario">
                <label for="senha">Senha</label>
                <input type="password" name="senha" id="senha">
                <input type="submit" value="acessar" />
        </fieldset>

</form>
<%@include file="footer.jsp"%>