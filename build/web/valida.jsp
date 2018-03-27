<%
try {
	if(acesso == null){
		acesso = "0";
		%>
			<jsp:forward page="login.jsp" /> 
		<%
	}
}catch(Exception e){
	System.out.println("ERRO AO VALIDAR A SESSÃO : " + e);
}

%>