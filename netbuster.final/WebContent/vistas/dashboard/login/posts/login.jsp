<%@page contentType="text/html" pageEncoding="UTF-8"%>

<html>
    <head>
        <%@ include file="partials/head.jsp" %>
        <title>Lista usuarios</title>
    </head>
    <body>
        <!-- Navegación -->
        <%@ include file="layouts/navegacion.jsp"%>  
        <!-- Fin de navegación -->
        
        <main>
        <form>
            <div class="form-group">
                <label for="exampleInputEmail1">Email address</label>
                <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
                <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
            </div>
            <div class="form-group">
                <label for="exampleInputPassword1">Password</label>
                <input type="password" class="form-control" id="exampleInputPassword1">
            </div>
            <div class="form-group form-check">
                <input type="checkbox" class="form-check-input" id="exampleCheck1">
                <label class="form-check-label" for="exampleCheck1">Check me out</label>
            </div>
            <button type="submit" class="btn btn-primary">Submit</button>
        </form>
        
        </main>
        <!-- Pie de página -->
        <%@ include file="partials/footer.jsp" %>
        <!-- Fin de pie de página -->
</body>
</html>
