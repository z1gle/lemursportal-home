<%@page contentType="text/html;charset=UTF-8" language="java"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%-- <%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %> --%>
<c:url value="/resources" var="resourcesPath" />
<c:url value="/" var="path" />
<!DOCTYPE html>
<!--[if lt IE 7]>      <html lang="en" class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html lang="en" class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html lang="en" class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!-->
<html lang="en" class="no-js">
    <!--<![endif]-->
    <head>
        <meta charset="utf-8">
        <link rel="icon" href="${resourcesPath}/img/favicon.ico" type="image/x-icon">
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <title><spring:message code="home.pageTitle" /></title>
        <meta name="description" content="">
        <meta name="keywords"
              content="Madagascar lemursportal, portail des l&eacute;muriens">

        <meta name="viewport" content="width=device-width, initial-scale=1">

        <link
            href='https://fonts.googleapis.com/css?family=Open+Sans:400,300,700'
            rel='stylesheet' type='text/css'>

        <link rel="stylesheet" href="${resourcesPath}/css/font-awesome.min.css">

        <link rel="stylesheet" href="${resourcesPath}/css/jquery.fancybox.css">

        <link rel="stylesheet" href="${resourcesPath}/css/bootstrap.min.css">

        <link rel="stylesheet" href="${resourcesPath}/css/owl.carousel.css">

        <link rel="stylesheet" href="${resourcesPath}/css/owl.theme.css">

        <link rel="stylesheet" href="${resourcesPath}/css/slit-slider.css">

        <link rel="stylesheet" href="${resourcesPath}/css/animate.css">

        <link rel="stylesheet" href="${resourcesPath}/css/main.css">

        <link rel="stylesheet" href="${resourcesPath}/css/li-scroller.css">

        <script src="https://cdn.jsdelivr.net/npm/tail.select@0.5.11/js/tail.select-full.js"></script>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/tail.select@0.5.11/css/tail.select-default.css">
        <script src="${resourcesPath}/js/modernizr-2.6.2.min.js"></script>
        <style type="text/css">
            a.read-more {
                color: black /*#74ac00*/;
            }
            a.read-more:hover {
                text-decoration: underline;
                color: #000;
            }
            .show-read-more .more-text, .home-bio p .more-text {
                display: none;
            }
        </style>
    </head>

    <body id="body">
        <!-- Navigation -->
        <header id="navigation"
                class="navbar-inverse animated-header navbar-fixed-top">
            <div class="container">

                <!-- TOPBAR -->
                <div class="topbar">
                    <ul>
                        <c:set value="${pageContext.request.userPrincipal.name != null}" var="isLoggedInUser"/>
                        <c:choose>
                            <c:when test="${isLoggedInUser}">
                                <c:url var="viewProfilUrl" value="/user/profil"></c:url>
                                <c:url var="imgProfilUrl" value="/forum"></c:url>
                                    <li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button"
                                                            aria-haspopup="true" aria-expanded="false"> 
                                            <img src="https://www.lemursportal.org/forum/resources${currentUser.photoProfil}" class="img-circle"/> 
                                        <%--                     		<spring:message code="login.signup"/> --%>
                                        Welcome, ${currentUser.prenom} <i class="fa fa-caret-down"></i></a>

                                    <ul class="dropdown-menu">
                                        <li><a href="https://www.lemursportal.org/forum/user/profil"> 
                                                <i class="fa fa-edit fa-fw"></i> My account</a></li>
                                        <li class="divider"></li>
                                        <li><a href="https://www.lemursportal.org/species/modification-observations"> 
                                                <i class="fa fa-align-left"></i> My data</a></li>
                                        <li class="divider"></li>
                                        <li>
                                            <span style="display:none;">
                                                <c:url value="/logout" var="logoutUrl" />
                                                <form action="${logoutUrl}" method="post" id="logoutForm">
                                                    <input type="hidden" name="${_csrf.parameterName}"
                                                           value="${_csrf.token}" />
                                                </form>
                                                <!--                                 verification dev mode -->
                                                <c:set var="port" value="" />
                                                <c:if test="${req.getServerPort() != '80' || req.getServerPort() != '443'}">
                                                    <c:set var="port" value=":${req.getServerPort()}" />
                                                </c:if>
                                                <script>
                                                    function formSubmit() {
                                                        //logout also species databases
                                                        $.post("https://www.lemursportal.org/species/logout", function () {
                                                            $.post("https://www.lemursportal.org/forum/logout", function () {
                                                                document.getElementById("logoutForm").submit();
                                                            });
                                                        }).fail(function () {
                                                            alert('Error!');
                                                        });
                                                    }
                                                </script>
                                            </span>
                                            <a href="javascript:formSubmit();"><i
                                                    class="fa fa-power-off fa-fw"></i><spring:message code="home.logout"/></a>
                                        </li>
                                    </ul>
                                </li>
                            </c:when>
                            <c:otherwise>
                                <c:url value="/forum/signup" var="signupUrl"/>
                                <li class=""><a href="${signupUrl}"><i
                                            class="fa fa-user fa-fw"></i> <spring:message code="login.signup"/></a></li>
                                        <%--                             <c:url value="/login" var="loginUrl"/> --%>
                                        <c:url value="/login" var="loginUrl"/>
                                <li class=""><a href="${loginUrl}"><i
                                            class="fa fa-sign-in fa-fw"></i> <spring:message code="home.login"/></a></li>
                                    </c:otherwise>
                                </c:choose>
                        <li class="dropdown language" id="lang-select"><a
                                href="#"
                                class="dropdown-toggle" data-toggle="dropdown" role="button"
                                aria-haspopup="true" aria-expanded="false"> <i
                                    class="fa fa-globe"></i><span>EN </span><i class="fa fa-caret-down"></i>
                            </a>
                            <ul class="dropdown-menu">
                                <li class="active" id="en"><a
                                        href="#">English</a>
                                </li>
                                <li  id="fr"><a href="#">Français</a></li>
                                <li  id="mg"><a href="#">Malagasy</a></li>
                            </ul></li>
                    </ul>
                </div>
                <div class="navbar-header">
                    <!-- responsive nav button -->
                    <button type="button" class="navbar-toggle" data-toggle="collapse"
                            data-target=".navbar-collapse">
                        <span class="sr-only">Toggle navigation</span> <span
                            class="icon-bar"></span> <span class="icon-bar"></span> <span
                            class="icon-bar"></span>
                    </button>
                    <!-- /responsive nav button -->
                    <!-- logo -->
                    <h1 class="navbar-brand">
                        <a href="/"><img
                                src="${resourcesPath}/img/Logo_LemursPortal_Final.png" alt="<spring:message code="home.pageTitle" />" /></a>
                    </h1>
                    <!-- /logo -->
                </div>
                <!-- main nav -->
                <nav class="collapse navbar-collapse navbar-right" role="navigation">
                    <ul id="nav" class="nav navbar-nav">
                        <li class="act"><a href="#"><spring:message code="menu.home" /></a></li>
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                Forum <b class="caret"></b>
                            </a>
                            <ul class="dropdown-menu" role="menu">
                                <li><a href="https://www.lemursportal.org/forum" onclick="window.location = 'https://www.lemursportal.org/forum'"><spring:message code="text.post" /></a></li>
                                <li class="divider"></li>
                                <li><a href="https://www.lemursportal.org/forum/documents" onclick="window.location = 'https://www.lemursportal.org/forum/documents'"><spring:message code="home.document" /></a></li>
                                <li class="divider"></li>
                                <li>
                                    <a href="https://www.lemursportal.org/forum/experts"  onclick="window.location = 'https://www.lemursportal.org/forum/experts'">
                                        <spring:message code="menu.experts" />
                                    </a>
                                </li>
                                <li class="divider"></li>
                                <li><a href="https://www.lemursportal.org/forum/formation/" onclick="window.location = 'https://www.lemursportal.org/forum/formation/'"><spring:message code="text.opportunities" /></a></li>
                            </ul>
                        </li>
                        <li><a href="https://www.lemursportal.org/species/taxonomi" onclick="window.location = 'https://www.lemursportal.org/species/taxonomi'"><spring:message code="menu.species" /></a></li>
                        <li><a href="https://www.lemursportal.org/species/darwinportal" onclick="window.location = 'https://www.lemursportal.org/species/darwinportal'"><spring:message code="home.header.observations" /></a></li>
                        <li><a href="https://www.lemursportal.org/species/visualisation" onclick="window.location = 'https://www.lemursportal.org/species/visualisation'"><spring:message code="home.header.map" /></a></li>
                            <c:url var="graphics" value="/graphics"></c:url>
                        <li><a href="${graphics}" onclick="window.location = '${graphics}'">Graphiques</a></li>
                            <c:if test="${isLoggedInUser}">
                            <li class="dropdown">
                                <a href="#" class="dropdown-toggle"
                                   data-toggle="dropdown" role="button"
                                   aria-haspopup="true" aria-expanded="false"> 
                                    <span><spring:message code="home.header.contribute" /></span>
                                    <i class="fa fa-caret-down"></i>
                                </a>
                                <ul class="dropdown-menu">
                                    <li class="">
                                        <a href="#" data-toggle='modal' data-target='#modal-upload-darwincore'><spring:message code="home.header.addObservations" /></a>
                                    </li>
                                    <li>
                                        <a href="#" data-toggle='modal' data-target='#modal-ajout-document' ><spring:message code="home.header.addDocument" /></a>
                                    </li>
                                    <li>
                                        <a data-toggle="modal" href="#actu_form" class="btn btnprimary"><span class="fa fa-plus-circle" style="color:red;"></span></a>
                                    </li>
                                </ul>
                            </li>
                        </c:if>
                    </ul>
                </nav>
                <!-- /main nav -->
            </div>
            <ul id="alert-list">
                <li id="alert-text"></li>
            </ul>
        </header>
        <main class="site-content" role="main" id="main"> <!-- Slider -->
            <section id="">
                <style>
                    .banniere {
                        height: 50vh;
                        background-image: url(https://www.lemursportal.org/resources/img/slider/cinelli.jpeg);
                        margin-top: -70px;
                    }
                    #searchs {
                        margin-top: -50px;
                    }
                </style>
                <div class="banniere">
                    <div class="bg-img bg-img-5"></div>
                    <div class="slide-caption" style="min-height: 60vh; height: 60vh;">
                        <div class="caption-content">
                            <h2><spring:message code="slider.lemursportal" /></h2>
                            <span><spring:message code="slider.lemursportal.txt" /></span> 
                            <a style="background-color: #642f1dc4;" 
                               href="https://www.lemursportal.org/forum/signup?lang=${pageContext.response.locale.language}"
                               class="btn btn-blue btn-effect">
                                <spring:message code="slider.join_us" />
                            </a>
                        </div>
                    </div>
                </div>
            </section>
            <style>
                .home__searchFilters a {
                    -webkit-box-flex: 1;
                    -ms-flex: 1 0 auto;
                    flex: 1 0 auto;
                    padding: 7px 7px 3px;
                    border-bottom: 2px solid transparent;
                    text-align: center;
                    font-size: 12px;
                    text-transform: uppercase;
                    color: white;
                }
                .home__searchFilters a:hover {
                    -webkit-box-flex: 1;
                    -ms-flex: 1 0 auto;
                    flex: 1 0 auto;
                    padding: 7px 7px 3px;
                    border-bottom: 2px solid transparent;
                    text-align: center;
                    font-size: 12px;
                    text-transform: uppercase;
                    color: #A18029;
                }
                .number-table{
                    margin-top:20px;
                    background-color: #A18029;
                    margin-bottom:20px;
                }
                *, :after, :before {
                    -webkit-box-sizing: border-box;
                    -moz-box-sizing: border-box;
                    box-sizing: border-box;
                }
                .home__searchFilters {
                    background: #d8b03f;
                    display: -webkit-box;
                    display: -ms-flexbox;
                    display: flex;
                    overflow: auto;
                    max-width: 700px;
                    color: #fff;
                }
                .home__header {
                    background-color: #71b171;
                    background-size: cover;
                    background-position: center;
                    color: #fff;
                    position: relative;
                }
                .noUnderline, .noUnderline:focus, .noUnderline:hover, a.inherit.noUnderline, a.inherit.noUnderline:focus, a.inherit.noUnderline:hover {
                    text-decoration: none;
                }
                .home .search-box {
                    max-width: 700px;
                }
                button, input, select, textarea {
                    font-family: inherit;
                    font-size: inherit;
                    line-height: inherit;
                }
                button, input {
                    color: inherit;
                    font: inherit;
                    margin: 0;
                }
                button, input {
                    font-size: 100%;
                }
                button, input{
                    vertical-align: baseline;
                }
                button, html, input, md-bottom-sheet .md-subheader{
                    font-family: Roboto,"Helvetica Neue",sans-serif;
                }
                .search-box input {
                    border: none;
                    padding-right: 1.42857142857rem;
                    width: 100%;
                    overflow: hidden;
                    text-overflow: ellipsis;
                }
                .search-box .search-box__submit {
                    position: absolute;
                    right: 0;
                    margin: 15px 22px;
                    top: 0;
                    font-size: 1.60714285714125rem;
                    border: none;
                    cursor: pointer;
                }
                .search-box{
                    background: #fff;
                    color: #444;
                    padding: 12px 20px;
                    max-width: 700px;
                    position: relative;
                    -webkit-transition: box-shadow .2s ease;
                    transition: box-shadow .2s ease;
                    box-shadow: 0 2px 2px 0 rgba(0,0,0,.16);
                }
                *, :after, :before {
                    -webkit-box-sizing: border-box;
                    -moz-box-sizing: border-box;
                    box-sizing: border-box;
                }
                div {
                    display: block;
                }
                .home__header__hero-text {
                    padding-bottom: 2rem;
                }
                .form {
                    height: 30px;
                }
                .w{
                    display: -webkit-box;
                    display: -ms-flexbox;
                    display: flex;
                    max-width: 700px;
                    color:grey;
                    padding-right: 1.42857142857rem;
                    margin: 0px 15px 10px 15px;
                    text-align: justify;
                    line-height: 30px;
                }
                html {
                    font-size: 12px;
                }
                html {
                    font-family: sans-serif;
                    -ms-text-size-adjust: 100%;
                    -webkit-text-size-adjust: 100%;
                }
                body.md-default-theme, body, html.md-default-theme, html {
                    color: rgba(0,0,0,0.87);
                    background-color: rgb(250,250,250);
                }
            </style>
            <!-- search section -->
            <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.9/angular.min.js"></script>
            <div id="searchs" class="no-padding-bottom-section">
                <div class="container">
                    <div class="row">
                        <h4 class="w">
                            <spring:message code="home.description" />
                        </h4>

                        <div class="home__header__hero-text">
                            <div ng-app="">
                                <div class="home__searchFilters">
                                    <c:url var="documentslist" value="https://www.lemursportal.org/forum/documents?search=${keyword}"></c:url>
                                    <a href="${documentslist}{{s}}"><spring:message code="home.header.documents" /></a>
                                    <c:url var="specieslist" value="/results/specieslist?keyword=${keyword}"></c:url>
                                    <a href="${specieslist}{{s}}"><spring:message code="menu.species" /></a>
                                    <c:url var="occurrenceList" value="/results/occurrenceList?keyword=${keyword}"></c:url>
                                    <a href="${occurrenceList}{{s}}"><spring:message code="home.header.observations" /></a>
                                    <c:url var="expertslist" value="/results/expertslist?keyword=${keyword}"></c:url>
                                    <a href="${expertslist}{{s}}"><spring:message code="menu.experts" /></a> 
                                </div>
                                <div class="home__header__search-bar search-box">
                                    <c:url var="result" value="/results${keyword}"></c:url>
                                    <form method="get" class="form" action="${result}">
                                        <input type="text" name="keyword" ng-model="s"/> &nbsp;
                                        <button type="submit" class="search-box__submit fa fa-search btn-default"/>
                                    </form>
                                </div>
                            </div>

                        </div>
                    </div> 
                </div>
                <!-- end -->
                <!-- number section -->
                <div id="number" style="background-color: lightgray;">
                    <div class="container">
                        <div class="row">
                            <div class="text-center white animated fadeInDown">
                                <h2> <spring:message code="menu.number" /></h2>
                                <div class="fb-page" 
                                     data-href="https://www.facebook.com/facebook"
                                     data-width="380" 
                                     data-hide-cover="false"
                                     data-show-facepile="false"></div>
                            </div>
                            <div class="col-md-3 animated fadeInUp">
                                <div class="number-table text-center">
                                    <span><spring:message code="text.users" /></span>
                                    <div class="value">
                                        <span></span> <span>${nbrUtilisateur}</span><br> <span><spring:message code="text.users.detail" /></span>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-3 animated fadeInUp" data-wow-delay="0.4s">
                                <div class="number-table text-center">
                                    <span><spring:message code="text.species" /></span>
                                    <div class="value">
                                        <span></span> <span>${nbrTaxonomi}</span><br> <span><spring:message code="text.species.detail" /></span>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-3 animated fadeInUp" data-wow-delay="0.8s">
                                <div class="number-table text-center">
                                    <span><spring:message code="text.obsercations" /></span>
                                    <div class="value">
                                        <span></span> <span>${nbrOccurrence}</span><br> <span><spring:message code="text.obsercations.detail" /></span>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-3 animated fadeInUp" data-wow-delay="0.8s">
                                <div class="number-table text-center">
                                    <span><spring:message code="home.document" /></span>
                                    <div class="value">
                                        <span></span> <span>${nbrDocument}</span><br> <span><spring:message code="home.available.document" /></span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- end --> 
                <style>
                    .resized-img {
                        width: unset;
                        height: unset;
                        max-width: 12vw;
                        max-height: unset;
                    }
                    @media (max-width: 979px) and (min-width: 768px) {
                        .species-item {
                            width: unset;
                        }
                        .species-item figcaption {
                            display: none;
                        }
                        .species-item ul {
                            display: none;
                        }
                    }
                    .service-clickable:hover {
                        border: solid;
                        border-width: 3px;
                        border-radius: 5px;
                        border-color: #d3d3d34f;
                    }
                    .service-desc {
                        color: #818181 !important; 
                        display: none;
                    }
                    /*                .service-desc:hover {
                                        display: block;
                                    }*/
                    .new-second {
                        height: 22vh; 
                        overflow: hidden;
                        margin-top: 5px;
                        max-height: 150px;
                    }
                    *{
                        box-sizing: border-box;
                    }

                    img {
                        vertical-align: middle;
                    }

                    /* Position the image container (needed to position the left and right arrows) */
                    .container {
                        position: relative;
                    }

                    /* Hide the images by default */
                    .mySlides {
                        display: none;
                    }

                    /* Add a pointer when hovering over the thumbnail images */
                    .cursor {
                        cursor: pointer;
                    }

                    /* Next & previous buttons */
                    .prev,
                    .next {
                        cursor: pointer;
                        position: absolute;
                        top: 40%;
                        width: auto;
                        padding: 16px;
                        margin-top: -50px;
                        color: Black;
                        font-weight: bold;
                        font-size: 20px;
                        border-radius: 0 3px 3px 0;
                        user-select: none;
                        -webkit-user-select: none;
                    }

                    /* Position the "next button" to the right */
                    .next {
                        right: 0;
                        border-radius: 3px 0 0 3px;
                    }

                    /* On hover, add a black background color with a little bit see-through */
                    .prev:hover,
                    .next:hover {
                        background-color: rgba(0, 0, 0, 0.8);
                    }

                    /* Number text (1/3 etc) */
                    .numbertext {
                        color: #f2f2f2;
                        font-size: 12px;
                        padding: 8px 12px;
                        position: absolute;
                        top: 0;
                    }

                    /* Container for image text */
                    .caption-container {
                        text-align: center;
                        background-color: #222;
                        padding: 2px 16px;
                        color: white;
                    }

                    .row:after {
                        content: "";
                        display: table;
                        clear: both;
                    }

                    /* Six columns side by side */
                    .column {
                        float: left;
                        width: 16.66%;
                    }
                    .active{
                        opacity: 1;
                    }
                    .actu-sidebar {
                        padding: 0px;
                        background: #f7f5f5 none repeat scroll 0 0;
                        border: 0px solid #d7d7d7;
                        margin: 20px 20px;
                        background-color: #fff;
                        border-radius: 2px;
                        box-shadow: 0 1px 3px #9e9e9e;
                        display: inline-block;
                        flex-grow: 1;
                        position: relative;
                        overflow: hidden;
                        vertical-align: top;
                        padding: 20px 20px 20px 20px;
                    }
                    .actu-comment{
                        text-align: justify;
                        line-height: 5px;
                    }
                </style>
                <section id="actualite">
                    <div class="container" >
                        <div class="block">
                            <div class="block">
                                <div class="block-heading">
                                    <h2><spring:message code="text.actualite" /></h2>
                                </div>
                            </div>
                        </div>
                        <c:forEach items="${listeactu}" var="a">
                            <div class="mySlides">
                                <div class="row">
                                    <a class="new-a" href="${a.urlSourceActu}">
                                        <div class="col-sm-6 col-md-6 col-lg-6">
                                            <center><img src="https://www.lemursportal.org/${a.urlPhoto}" style="height: 250px; width: 250px; 
                                                         margin: 0px 50px 10px 50px;"></center>
                                        </div>
                                        <div class="col-sm-5 col-md-5 col-lg-5">
                                            <div class="actu-comment">
                                                <h4 style="margin-top: 0px;">${a.titreActu}</h4></br>
                                                <h6 class="comment" style="line-height:20px;">${a.commentaireActu}</h6></br>
                                                <span>le: ${a.dateActu}</span>
                                            </div>
                                        </div>  
                                    </a>
                                    <div class="col-sm-1 col-md-1 col-lg-1">
                                        <c:if test="${isLoggedInUser}">
                                            <sec:autorize access="hasRole('ADMIN')">
                                                <div>
                                                    <a data-toggle="modal" href="#actu_form" class="btn btnprimary"><span class="fa fa-plus-circle" style="color:red;"></span></a>
                                                </div>
                                                <div><a data-toggle="modal" href="#actu_inform" class="btn btn-default"><span class="fa fa-close" style="color:red;"></span></a></div>
                                                <div id='actu_inform' class='modal' >
                                                    <div class='modal-dialog'>
                                                        <div class='modal-content'>
                                                            <div class="modal-header" style="background-color:#d8b03f">
                                                                <button data-dismiss='modal' class='close' type='button'>x</button>
                                                                <h4 class="modal-title"><center><spring:message code="text.inform" /></center></h4>
                                                            </div>
                                                            <div class='modal-body row'>      
                                                                <h6 class="modal-title"><center><span class="fa fa-warning" style="color:#d8b03f;"></span><spring:message code="text.info" /></center></h6>
                                                            </div>
                                                            <div class='modal-footer'>
                                                                <c:url value="/delete?id=${a.idActu}" var="del"></c:url>
                                                                <a href="${del}" class="btn btn-success"><spring:message code="text.yes" /></a>
                                                                <button type='button' class='btn btn-default btn-sm' data-dismiss='modal'><spring:message code="text.no" /></button>                    
                                                            </div> 
                                                            </form>
                                                        </div>
                                                    </div>
                                                </div>  
                                            </sec:autorize>
                                        </c:if>
                                    </div>

                                </div>
                            </div>
                        </c:forEach>
                        <a class="prev" onclick="plusSlides(-1)">❮</a>
                        <a class="next" onclick="plusSlides(1)">❯</a>
                    </div>
                    <script>
                        var slideIndex = 1;
                        showSlides(slideIndex);

                        function plusSlides(n) {
                            showSlides(slideIndex += n);
                        }

                        function currentSlide(n) {
                            showSlides(slideIndex = n);
                        }

                        function showSlides(n) {
                            var i;
                            var slides = document.getElementsByClassName("mySlides");
                            if (n > slides.length) {
                                slideIndex = 1
                            }
                            if (n < 1) {
                                slideIndex = slides.length
                            }
                            for (i = 0; i < slides.length; i++) {
                                slides[i].style.display = "none";
                            }
                            slides[slideIndex - 1].style.display = "block";
                        }
                        var i;
                        var divs = document.getElementsByTagName('h6');
                        for (i = 0; i < divs.length; i++) {
                            if (divs[i].className == 'comment') {
                                divs[i].innerHTML = divs[i].innerHTML.substring(0, 400) + "...";
                            }
                        }
                    </script>
                </section>
                <!-- experts section -->
                <section id="experts" class="parallax">
                    <div class="overlay">
                        <div class="container">
                            <div class="row">
                                <div class="sec-title text-center white animated fadeInDown">
                                    <h2><a style="color: white;" href="https://www.lemursportal.org/forum/experts/"><spring:message code="menu.experts" /></a></h2>
                                </div>
                                <div id="expert" class=" animated fadeInUp">
                                    <c:forEach var="user" items="${experts}">
                                        <div class="expert-item text-center">
                                            <a href="https://www.lemursportal.org/forum/experts/${user.id}">
                                                <c:choose>
                                                    <c:when test="${empty user.photoProfil}">
                                                        <img src="https://www.lemursportal.org/forum/resources/profil/default.png" alt="Experts"></a>
                                                    </c:when>    
                                                    <c:otherwise>
                                                    <img src="https://www.lemursportal.org/forum/resources/profil/blanc.png" style="background-image: url('https://www.lemursportal.org/forum/resources/${user.photoProfil}');" alt="Experts"></a> 
                                                    <br />
                                                </c:otherwise>
                                            </c:choose>
                                            <!-- 							<div class="clearfix home-bio"> -->
                                            <div class="clearfix">
                                                <span>${user.nom} ${user.prenom}</span>
                                                <!-- p class="show-read-more">Biography: user.biographie</p-->
                                                <div class="show-read-more">${user.biographie}</div>
                                            </div>
                                        </div>
                                    </c:forEach>
                                </div>
                            </div>

                        </div>
                    </div>
            </div>
        </section>
        <!-- end --> 
        <style>
            .comment-feedback {
                color: white;
            }
        </style>
        <!--inaturalist section-->
        <section id="">
            <div class="">
                <div class="row">
                    <div class="row text-center pad-top-20" style="background: #f8f8f8;">
                        <div class="sec-title text-center animated fadeInDown" style="margin-bottom: 0px !important">
                            <style type="text/css" media="screen">
                                .inat-widget { font-family: Georgia, serif; line-height: 1;}
                                .inat-widget td {vertical-align: top; padding-bottom: 10px;}
                                .inat-label { color: #888; }
                                .inat-meta { font-size: smaller; margin-top: 3px; line-height: 1.2;}
                                .inat-observation-body, .inat-user-body { padding-left: 10px; }
                                .inat-observation-image {text-align: center;}
                                .inat-observation-image, .inat-user-image { width: 100px; display: inline-block; }
                                .inat-observation-image img, .inat-user-image img { max-width: 100px; }
                                .inat-observation-image img { vertical-align: middle; }
                                .inat-widget-small .inat-observation-image { display:block; float: left; margin: 0 3px 3px 0; height:48px;}
                                .inat-label, .inat-value, .inat-user { font-family: "Trebuchet MS", Arial, sans-serif; }
                                .inat-user-body {vertical-align: middle;}
                                .inat-widget td.inat-user-body {vertical-align: middle;}
                                .inat-widget .inat-footer td.inat-value {vertical-align: middle; padding-left: 10px;}
                                #inaturalist{
                                    margin-left:100px;
                                    margin-right:100px;
                                }
                                #img-inaturalist{
                                    margin: 40px;
                                }
                                #mobileapp{
                                    margin-top: 90px;
                                }
                                #mobileapp-img{
                                    margin: 10px; 
                                }
                            </style>
                            <div class="col-sm-7">
                                <div class="inat-widget">
                                    <div class="inat-widget-header">
                                        <a target="_blank" rel="noopener noreferrer" href="https://www.inaturalist.org"><img
                                                alt="iNaturalist.org"
                                                src="https://static.inaturalist.org/sites/1-logo.svg?1573071870" style="width:150px;height: 150px;"/></a>
                                    </div>
                                    <div id="inaturalist">
                                        <script type="text/javascript" charset="utf-8"
                                        src="https://www.inaturalist.org/observations/project/23226.widget?layout=small&limit=6&order=desc&order_by=observed_on"></script>
                                    </div>
                                    <div id="img-inaturalist">
                                        <span>
                                            <a target="_blank" rel="noopener noreferrer" href="https://www.inaturalist.org/observations/project/23226">
                                                <spring:message code="view.observation.inaturalist.txt" /> <br><nobr>iNaturalist.org»</nobr>
                                            </a>
                                        </span>
                                    </div>
                                </div>
                            </div>
                            <div class="col-sm-3">
                                <div class="inat-widget">
                                    <div id="mobileapp">
                                        <div id="">                                       
                                            <span><spring:message code="text.mobileapp" /></span>
                                        </div>
                                        <div>
                                            <a class="btn btn-success" href="download/lemursportal_app.apk" style="margin-top:50px;"><spring:message code="download_mobile_app" /> <span><i class=""></i>
                                                </span></a>
                                        </div>
                                        <div class="">
                                            <a target="_blank" href="download/Manuel-d'utilisation-AP-MLP.pdf" style="margin-top:100px;">
                                                <h4 style="font-size:12px;color:#A18029;"><spring:message code="manuel_ap_mlp" /><span><img src="${resourcesPath}/img/icons/pdf.png"/></span></h4>
                                            </a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-sm-2">
                                <div class="inat-widget">
                                    <div id="mobileapp-img">
                                        <div id="">                                       
                                            <span>
                                                <img src="${resourcesPath}/img/icons/icon_apk2.png" alt="<spring:message code="home.pageTitle" />" style="max-width:300px;max-height: 300px;"/>
                                            </span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section
        <!--Fin inaturalist section-->
        <!-- Social section -->
        <section id="social" class="parallax">
            <div class="overlay">
                <div class="container">
                    <div class="row">
                        <div class="sec-title text-center white animated fadeInDown">
                            <h2><spring:message code="text.follow_us" /></h2>
                            <p><img src="${path}visit" alt="Nombre de visite"></p>
                            <p><h4 style="color:white;font-weight: bold;"><spring:message code="number.visit" /></h4></p>
                        </div>
                        <ul class="social-button">
                            <li class="animated zoomIn" data-wow-delay="0.3s"><a href="https://twitter.com/lemursportal"><i
                                        class="fa fa-twitter fa-2x"></i></a></li>
                            <li class="animated zoomIn" data-wow-delay="0.6s"><a href="https://web.facebook.com/lemursportal"><i
                                        class="fa fa-facebook-square fa-2x"></i></a></li>
                            <li class="animated zoomIn" data-wow-delay="0.6s"><a href="https://www.youtube.com/channel/UCNN2Zq7Ny8tGehZkcKpkjHg"><i
                                        class="fa fa-youtube fa-2x"></i></a></li>
                            <li class="animated zoomIn" data-wow-delay="0.6s"><a href="https://www.instagram.com/lemursportal/"><i
                                        class="fa fa-instagram fa-2x"></i></a></li                                        
                        </ul>

                    </div>
                </div>
            </div>
        </section>
        <!-- end --> <!-- Contact section -->
        <section id="contact" style="background-color: lightgray;">
            <div class="container">
                <div class="row">

                    <div class="sec-title text-center animated fadeInDown">
                        <h2><spring:message code="menu.contact_us" /></h2>
                        <p></p>
                    </div>

                    <div style="text-align: center" class="animated fadeInRight">
                        <address class="contact-details">
                            <p>
                                <i class="fa fa-pencil"></i>Madagascar Lemurs Portal<span>Lot
                                    II K 44 Ankadivato</span> <span>Antananarivo 101</span><span>Madagascar</span>
                            </p>
                            <br>
                            <p>
                                <i class="fa fa-phone"></i>Phone: (+261 20) 22 605 13
                            </p>
                            <p>
                                <i class="fa fa-phone"></i>Fax : (+261 20) 22 621 44
                            </p>
                            <p>
                                <i class="fa fa-envelope"></i>lemursportal@gmail.com
                            </p>

                        </address>
                    </div>

                </div>
            </div>
        </section>
        <!-- end -->
        <section id="partner-area" style="padding: 10px 0 30px">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <div class="block">
                            <div class="block-heading">
                                <h2><spring:message code="our.partners" /></h2>
                            </div>
                        </div>	<!-- End of /.block -->
                        <div id="owl-example" class="owl-carousel">

                            <div> <a href="http://www.ecologie.gov.mg/" target="_blank"><img
                                        src="${resourcesPath}/logos/MEEF_logo.png"></a>
                            </div>
                            <div> <a href="http://www.tourisme.gov.mg/" target="_blank"><img
                                        src="${resourcesPath}/logos/05_2016-Logo-300x297.png"></a>
                            </div>
                            <div> <a href="#" target="_blank"><img
                                        src="${resourcesPath}/logos/logo_ADD.jpg"></a>
                            </div>
                            <div> <a href="https://www.aspinallfoundation.org/the-aspinall-foundation/working-around-the-world/madagascar/" target="_blank"><img
                                        src="${resourcesPath}/logos/logo_Aspinall.jpg"></a>
                            </div>
                            <div> <a href="https://www.dpz.eu/en/unit/sociobiology-homepage/study-sites/madagascar.html" target="_blank"><img
                                        src="${resourcesPath}/logos/logo_DPZ.jpg"></a>
                            </div>
                            <div> <a href="#" target="_blank"><img
                                        src="${resourcesPath}/logos/logo_DREEF-Atsinanana.jpg"></a>
                            </div>
                            <div> <a href="http://www.issedd-univ.mg/" target="_blank"><img
                                        src="${resourcesPath}/logos/logo_ISSEDD.png"></a>
                            </div>
                            <div> <a href="https://www.stonybrook.edu/commcms/centre-valbio/" target="_blank"><img
                                        src="${resourcesPath}/logos/logo_Valbio.jpg"></a>
                            </div>
                            <div> <a href="https://www.madagasikara-voakajy.org/" target="_blank"><img
                                        src="${resourcesPath}/logos/MV_logo.png"></a>
                            </div>
                            <div> <a href="https://www.peregrinefund.org/projects/madagascar-project" target="_blank"><img
                                        src="${resourcesPath}/logos/PGF_logo.png"></a>
                            </div>
                            <div> <a href="https://www.conservation.org/global/madagascar/Pages/default.aspx" target="_blank"><img
                                        src="${resourcesPath}/logos/CI_logo.png"></a>
                            </div>
                            <div> <a href="http://www.parcs-madagascar.com/" target="_blank"><img
                                        src="${resourcesPath}/logos/mnp.png"></a>
                            </div>
                        </div>	<!-- End of /.Owl-Slider -->
                    </div>	<!-- End of /.col-md-12 -->
                </div> <!-- End Of /.Row -->
            </div> <!-- End Of /.Container -->
        </section>	<!-- End of Section -->
        <section id="google-map">

            <div id="map-canvas" class="animated fadeInUp"></div>
        </section>
    </main>
    <div id="supWrapperToPreventFeedbackFlickering">
        <section id="supDonateWrapper">
            <div id="supColumnWrapper" class="x-hidden-focus">
                <div id="supDonateContainer">
                    <section id="supDT" class="ocDT">
                        <div id="supFBCont">
                            <form class="supStickyDonateMarginBottom" 
                                  data-support-available="true">
                                <div class="ocSmartDonateBegin x-hidden-focus" role="region">
                                    <div id="beginDonateHeader">
                                        Don't let lemurs disappear from the wild on our watch.</h2>
                                    </div>
                                    <div class="donateButtons">
                                        <c:url value="/donate" var="donate" />
                                        <a href="${donate}"
                                           class="ocDonateButton"
                                           name="" type="button" data-bi-mto="">Donate</a>
                                    </div>
                                </div>
                            </form>
                            <div
                                class="ocDonateThxMessage ocHidden">
                                <h2>Thank you for your donation!</h2>
                            </div>
                        </div>
                    </section>
                </div>
                <a href="javascript:removeStickyDonate();" id="supDisableStickyFeedbackButton" class="">×</a>
            </div>
        </section>
    </div>
    <%@include file="./footer.jsp" %>
    <script type="text/javascript">
                        $(function () {
                        $.ajax({
                        url: "https://www.lemursportal.org/forum/alerts?alert=1",
                                success: function (json) {
                                if (json != null && json.length != 0) {
                                $("ul#alert-list").show();
                                        $("ul#alert-list").liScroll(0.07, json);
                                } else {
                                $("ul#alert-list").hide();
                                }
                                }, error: function () {
                        $("ul#alert-list").hide();
                        }
                        });
    </script>