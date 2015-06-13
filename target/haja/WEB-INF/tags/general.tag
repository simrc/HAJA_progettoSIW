<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!doctype html>
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

    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css" rel="stylesheet">

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
                        <a href="#">Home</a>
                    </li>
                    <li>
                        <a href="../pages/productViews/index.jsp">Prodotti</a>
                    </li>
                    <li>
                        <a href="#">Fornitori</a>
                    </li>
                    <li>
                        <a href="#">Chi siamo</a>
                    </li>
                    <li>
                        <a href="/signup">Registrati</a>
                    </li>
                    <li>
                        <sec:authorize access="isAnonymous()">
                            <a href="/login">Login</a>
                        </sec:authorize>
                    </li>
                </ul>
            </div>
    <dl>


        <sec:authorize access="hasRole('ROLE_USER')">

            <dt><a href="/cart"> Carrello </a></dt>
        </sec:authorize>

    </dl>
</div>
            </div>
    </nav>
    </nav>



<nav id="seconday-nav">
    <dl>

        <sec:authorize access="isAuthenticated()">
            <dt><a href="/j_spring_security_logout">logout</a> </dt>
        </sec:authorize>
    </dl>
</nav>
<div class="container">

    <div class="row">
        <div class="box">
            <div class="col-lg-12 text-center">
                <div id="carousel-example-generic" class="carousel slide">
                    <!-- Indicators -->
                    <ol class="carousel-indicators hidden-xs">
                        <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
                        <li data-target="#carousel-example-generic" data-slide-to="1"></li>
                        <li data-target="#carousel-example-generic" data-slide-to="2"></li>
                        <li data-target="#carousel-example-generic" data-slide-to="3"></li>
                    </ol>

                    <!-- Wrapper for slides -->
                    <div class="carousel-inner">
                        <div class="item active">
                            <img class="img-responsive img-full" src="../../bootstrap/img/slide-1.jpg" alt="">
                        </div>
                        <div class="item">
                            <img class="img-responsive img-full" src="../../bootstrap/img/slide-2.jpg" alt="">
                        </div>
                        <div class="item">
                            <img class="img-responsive img-full" src="../../bootstrap/img/slide-3.jpg" alt="">
                        </div>

                        <div class="item">
                            <img class="img-responsive img-full" src="../../bootstrap/img/slide-5.jpg" alt="">
                        </div>
                    </div>

                    <!-- Controls -->
                    <a class="left carousel-control" href="#carousel-example-generic" data-slide="prev">
                        <span class="icon-prev"></span>
                    </a>
                    <a class="right carousel-control" href="#carousel-example-generic" data-slide="next">
                        <span class="icon-next"></span>
                    </a>
                </div>
                <h2 class="brand-before">
                    <small>Welcome to</small>
                </h2>
                <h1 class="brand-name">Haja</h1>
                <hr class="tagline-divider">
                <h2>
                    <small>By
                        <strong>Alessio&Simone </strong>
                        <I><small>(al loro primo Bootstrap)</small></I>
                    </small>
                </h2>
            </div>
        </div>
    </div>

    <div class="row">
        <div class="box">
            <div class="col-lg-12">
                <hr>
                <h2 class="intro-text text-center"><small>Hai sonno? Vuoi restare sveglio tutta la notte? Sei un professore amante del caffe'?</small>
                    <strong>Prenditi un caffe' con noi!</strong>
                </h2>
                <hr>
                <img class="img-responsive img-border img-left" src="../../bootstrap/img/intro-pic.jpg" alt="">
                <hr class="visible-xs">
                <p>Haja e' il piu' grande e il primo venditore di ogni tipo di caffe',Fornitori da tutto il mondo(<I>vedi sez."Fornitori"</I>),prodotti fantastici,manufatturieri, e delle piu' grandi case produttrici di caffe'!
                    Registrati al nostro sito, e potrai accedere alle meravigliose arome che ti offriamo,ti accetteremo anche se ami piu' del caffe' la camomilla FiorFiore..BUONA NAVIGAZIONE!

            </div>
        </div>
    </div>



</div>
<!-- /.container -->

  <!-- jQuery -->
  <script src="../../bootstrap/js/jquery.js"></script>

  <!-- Bootstrap Core JavaScript -->
  <script src="../../bootstrap/js/bootstrap.min.js"></script>

  <!-- Script to Activate the Carousel -->
  <script>
      $('.carousel').carousel({
          interval: 3000 //changes the speed
      })
  </script>
<jsp:invoke fragment="yield"/>
<jsp:invoke fragment="footer"/>
</body>
</html>