<%@page import="com.mycompany.calculadoraweb.Operacion"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Calculadora</h1>
         <form method="GET" action="index.jsp">
            <label>Primer numero: </label>
            <input type="text" name="n1" />
            <br />
            <label>Segundo numero: </label>
            <input type="text" name="n2" />
            <br />
            <div>
                <input type="checkbox" name="suma" value="1" />Suma<br/>        
                <input type="checkbox" name="mult" value="1" />Multiplicacion<br/>
                <input type="checkbox" name="mayor" value="1" />Obtener mayor<br/> 
                <input type="checkbox" name="potencia" value="1" />Obtener potencia<br/> 
                <input type="checkbox" name="bin" value="1" />Mostrar ambos en binario<br/> 
            </div>
            <input type="submit" value="Calcular" />
        </form>
         <% if(!(request.getParameter("n1")==null)&&!(request.getParameter("n2")==null)){
                try{
                        Double num1 = Double.parseDouble(request.getParameter("n1"));
                        Double num2 = Double.parseDouble(request.getParameter("n2"));
                        Operacion operaciones = new Operacion(num1,num2);
                        %>
                       
                        <h1> Numero 1: <%=num1%> </h1>
                        <h1> Numero 2: <%=num2%> </h1>
                        <h2> Resultados: </h2>
                        <%if (request.getParameter("suma") != null) {%>
                        <h3>Suma: <%=operaciones.getSuma()%></h3>
                        <%}%>
                        <%if (request.getParameter("mult") != null) {%>
                        <h3>Multiplicacion: <%=operaciones.getMultiplicacion()%></h3>
                        <%}%>
                        <%if (request.getParameter("mayor") != null) {%>
                        <h3>Mayor: <%=operaciones.getMayor()%></h3>
                        <%}%>
                        <%if (request.getParameter("potencia") != null) {%>
                        <h3>Potencia: <%=operaciones.getPotencia()%></h3>
                        <%}%>
                        <%if (request.getParameter("bin") != null) {%>
                        <h3>Binario de numero 1: <%=operaciones.getBinario1()%></h3>
                        <h3>Binario de numero 2: <%=operaciones.getBinario2()%></h3>  
                        <%}
                    }catch (Exception e){%>
                        <h1>Error ingrese ambos numeros correctamente.</h1>
                    <%}
            }%>
    </body>
</html>
