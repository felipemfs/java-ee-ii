<%!

    HttpServletRequest httpServletRequest;
    String requisita(String valor){
        return (httpServletRequest.getParameter(valor) == null)? "" : httpServletRequest.getParameter(valor);
    }

%>

<% httpServletRequest = request; %>