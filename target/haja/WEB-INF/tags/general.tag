<!Doctype html>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@attribute name="title" fragment="true" required="true" %>
<%@attribute name="head" fragment="true" %>
<%@attribute name="yield" fragment="true" required="true" %>
<%@attribute name="footer" fragment="true" %>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">


<html>
<head>
    <title>Welcome to your HAJA!</title>

    <!-- Bootstrap Core CSS -->
    <link href="../../bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css">

    <!-- Custom CSS -->
    <link href="../../bootstrap/css/business-casual.css" rel="stylesheet" type="text/css">

    <!-- Fonts -->
    <link href="http://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800" rel="stylesheet" type="text/css">
    <link href="http://fonts.googleapis.com/css?family=Josefin+Slab:100,300,400,600,700,100italic,300italic,400italic,600italic,700italic" rel="stylesheet" type="text/css">



    <meta charset="utf-8">
    <title><jsp:invoke fragment="title"/></title>

    <meta content="IE=edge,chrome=1" http-equiv="X-UA-Compatible">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <jsp:invoke fragment="head"/>
</head>

<body>
  <div style="background-image: url(../../bootstrap/img/bg.jpg)"> </div>
  <div class="brand">Haja</div>
  <div class="address-bar">3481 VascaNavale Place | Roma3 Hills, CA 90210 | 123.456.7890</div>
  <nav id="main-nav">
    <nav class="navbar navbar-default" role="navigation">
        <div class="container">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                </div>
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav">
                    <li>
                        <a href="/">Home</a>
                    </li>
                    <sec:authorize access="hasRole('ROLE_ADMIN')">
                    <li><a title="utenti" href="/administrator/user">Clienti</a></li>
                    </sec:authorize>

                    <li>
                        <a href="/administrator/product">Prodotti</a>
                    </li>

                    <li>
                        <a href="/administrator/supplier">Fornitori</a>
                    </li>


                    <sec:authorize access="isAnonymous()">
                    <li><a title="registrati" href="/signup">Registrati</a></li>

                        <li><a title="login" href="/login">Login</a></li>
                    </sec:authorize>
                    <sec:authorize access="isAuthenticated()">
                        <!--<li><a href="/admin/order">Ordini</a> </li>-->
                        <li><a href="/j_spring_security_logout">Logout</a></li>

                    </sec:authorize>
                </ul>

            </div>
        </div>




        </nav>
      </nav>

<!-- /.container -->



         <!--

         -->


          <!-- /.container -->



          <!-- jQuery -->
          <script src="js/jquery.js"></script>

          <!-- Bootstrap Core JavaScript -->
          <script src="js/bootstrap.min.js"></script>




<jsp:invoke fragment="yield"/>
<jsp:invoke fragment="footer"/>
</body>
</html>