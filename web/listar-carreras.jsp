
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <body>
        <%@include file="common/header.jsp" %>
        <div class="wrapper">

            <div  class="form_container">
                <div class="data_container">
                    
                        <h2>Lista de Carreras</h2>
                        <table>
                            <thead>
                                <tr>
                                    <th>Nombre de carrera</th>
                                    <th class="acciones">Acciones</th>
                                </tr>
                            </thead>
                            <tbody>
                                <c:forEach items="${requestScope.carreras}" var="carrera" >
                                    <tr>
                                        <td>
                                            ${carrera.nombre}
                                        </td>
                                        <td class="acciones">
                                            <a href="./carrera?accion=editar&id=${carrera.id}">Editar</a>  
                                             <a href="./carrera?accion=materias&carrera=${carrera.id}">Listar Materias</a>  
                                        </td>
                                    </tr>
                                </c:forEach>
                            </tbody>
                        </table>   
                </div>        
            </div>                   
        </div>  
    </body>
</html>
