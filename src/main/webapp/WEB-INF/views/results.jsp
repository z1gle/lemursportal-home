<%-- 
    Document   : results
    Created on : 16 oct. 2019, 08:59:10
    Author     : OC-USER6
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
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
        <title>Results</title>
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

<!--link rel="stylesheet" href="${resourcesPath}/css/styles.css"-->

        <script src = "${resourcesPath}/js/jquery.min.js">
        </script>

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
            .map {
                height: 400px;
                width: 100%;
            }
            .forum-item, .cadre {
                margin: -6px 0 25px;
                padding: 15px 20px;
                border: 1px solid #d7d7d7;
                background: #ede9e9;
            }
            * {
                -webkit-box-sizing: border-box;
                -moz-box-sizing: border-box;
                box-sizing: border-box;
            }
            p {
                margin: 0 0 10px;
            }

            * {
                -webkit-box-sizing: border-box;
                -moz-box-sizing: border-box;
                box-sizing: border-box;
            }
            user agent stylesheet
            p {
                display: block;
                margin-block-start: 1em;
                margin-block-end: 1em;
                margin-inline-start: 0px;
                margin-inline-end: 0px;
            }
            .forum-item .forum-sub-title {
                color: #585858;
                margin-top: 10px;
                font-size: 12px;
                /* width: 75%; */
                width: 65%;
                float: left;
            }
            element.style {
                border: 1px solid #ccc;
            }
            * {
                -webkit-box-sizing: border-box;
                -moz-box-sizing: border-box;
                box-sizing: border-box;
            }
            tr {
                display: table-row;
                vertical-align: inherit;
                border-color: inherit;
            }
            .table > thead > tr > th, .table > tbody > tr > th, .table > tfoot > tr > th, .table > thead > tr > td, .table > tbody > tr > td, .table > tfoot > tr > td {
                padding: 8px;
                line-height: 1.42857143;
                vertical-align: top;
                border-top: 1px solid #ddd;
            }
            td{
                width: 100px;
                text-align: center;
                font-size: 13px;
                font-weight: bold;
            }
            .expert-sidebar {
                padding: 0px;
                background: #f7f5f5 none repeat scroll 0 0;
                border: 0px solid #d7d7d7;
                margin-bottom: 50px;
                background-color: #fff;
                border-radius: 2px;
                box-shadow: 0 1px 3px #9e9e9e;
                display: inline-block;
                flex-grow: 1;
                position: relative;
                overflow: hidden;
                vertical-align: top;
            }
            .expert-sidebar {
                padding: 20px 20px 5px 20px;
                background: #f7f5f5 none repeat scroll 0 0;
                border: 1px solid #d7d7d7;
                margin-bottom: 50px;
            }
            .expert-userpic {
                position: relative;
                margin: 20px;
            }
            .expert-userpic {
                position: relative;
            }
            .expert-usertitle {
                text-align: center;
                margin: 10px;
            }
            .expert-usertitle {
                text-align: center;
                margin-top: 20px;
            }
            .expert-usertitle-name {
                color: #333;
                font-size: 14px;
                font-weight: bold;
                /* margin-bottom: 7px; */
                height: 44px;
                text-overflow: ellipsis;
                overflow: hidden;
            }
            .expert-usertitle-name {
                color: #333;
                font-size: 14px;
                font-weight: bold;
                margin-bottom: 7px;
                height: 40px;
                text-overflow: ellipsis;
                overflow: hidden;
            }
            .expert-usertitle-role {
                font-size: 10px;
                margin-bottom: 15px;
                height: 12px;
            }
            .expert-usertitle-role {
                font-size: 10px;
                margin-bottom: 15px;
                height: 30px;
            }
            .expert-userbuttons {
                text-align: center;
                margin-top: 10px;
                border-top: 1px solid #CCC;
                color: #777777;
                /* margin: 30px 0 0; */
                padding: 10px;
                /* text-align: left; */
                background-color: #EEE;
            }
            .expert-userbuttons {
                text-align: center;
            }
            .expert-userbuttons .expert-usertitle-role {
                text-align: left;
                overflow: hidden;
                text-overflow: ellipsis;
            }
            .expert-usertitle-role {
                font-size: 10px;
                height: 12px;
            }
            .expert-usertitle-role {
                font-size: 10px;
            }
            .expert-userbuttons .btn:last-child {
                margin-right: 0px;
            }
            .expert-userbuttons a.btn {
                background: #a38000 none repeat scroll 0 0;
                border: 0 none;
                color: #ffffff;
                cursor: pointer;
                font-family: "montserratregular";
                font-size: 10px;
                outline: 0 none;
                text-transform: uppercase;
                width: auto;
                border-radius: 0;
            }
            .expert-userbuttons .btn {
                text-transform: uppercase;
                font-size: 11px;
                font-weight: 600;
                padding: 6px 15px;
                margin-right: 5px;
            }
            .species-sidebar {
                padding: 0px;
                background: #f7f5f5 none repeat scroll 0 0;
                border: 0px solid #d7d7d7;
                background-color: #fff;
                border-radius: 2px;
                box-shadow: 0 1px 3px #9e9e9e;
                display: inline-block;
                flex-grow: 1;
                position: relative;
                overflow: hidden;
                vertical-align: top;
            }
            .speciespic {
                position: relative;
                margin: 5px;
            }
            .species-name {
                color: #333;
                font-size: 12px;
                font-weight: bold;
                height: 50px;
                margin-bottom: 7px;
                text-overflow: ellipsis;
                overflow: hidden;
                margin: 5px;
            }
        </style>
    </head>

    <body id="body">

        <!-- preloader 
        <div id="preloader">
            <div class="loder-box">
                <div class="battery"></div>
            </div>
        </div>
         end -->



        <!-- Navigation -->
        <header id="navigation"
                class="navbar-inverse animated-header">
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
                                <%--                         <c:url value="/signup" var="signupUrl"/> --%>
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
                        <li class="act"><a href="https://www.lemursportal.org/" onclick="window.location = 'https://www.lemursportal.org/'"><spring:message code="menu.home" /></a></li>
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                Forum <b class="caret"></b>
                            </a>
                            <ul class="dropdown-menu" role="menu">
                                <li><a href="https://www.lemursportal.org/forum" onclick="window.location = 'https://www.lemursportal.org/forum'">Publier</a></li>
                                <li class="divider"></li>
                                <li><a href="https://www.lemursportal.org/forum/documents" onclick="window.location = 'https://www.lemursportal.org/forum/documents'"><spring:message code="home.document" /></a></li>
                                <li class="divider"></li>
                                <li>
                                    <a href="https://www.lemursportal.org/forum/experts"  onclick="window.location = 'https://www.lemursportal.org/forum/experts'">
                                        <spring:message code="menu.experts" />
                                    </a>
                                </li>
                                <li class="divider"></li>
                                <li><a href="https://www.lemursportal.org/forum/formation/" onclick="window.location = 'https://www.lemursportal.org/forum/formation/'">Opportunités</a></li>
                            </ul>
                        </li>
                        <li><a href="https://www.lemursportal.org/species/taxonomi" onclick="window.location = 'https://www.lemursportal.org/species/taxonomi'"><spring:message code="menu.species" /></a></li>
                        <li><a href="https://www.lemursportal.org/species/darwinportal" onclick="window.location = 'https://www.lemursportal.org/species/darwinportal'"><spring:message code="home.header.observations" /></a></li>
                        <li><a href="https://www.lemursportal.org/species/visualisation" onclick="window.location = 'https://www.lemursportal.org/species/visualisation'"><spring:message code="home.header.map" /></a></li>
                            <c:url var="graphics" value="/graphics"></c:url>
                        <li><a href="${graphics}" onclick="window.location = '${graphics}'">Graphiques</a></li>
                        <!--<li><a href="https://www.lemursportal.org/forum/documents#tab-item-4" onclick="window.location = 'https://www.lemursportal.org/forum/documents#tab-item-4'">Galerie</a></li>-->
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
                                </ul>
                            </li>
                        </c:if>
                    </ul>
                </nav>
            </div>
        </header>
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
            *, :after, :before {
                -webkit-box-sizing: border-box;
                -moz-box-sizing: border-box;
                box-sizing: border-box;
            }
            .home__searchFilters {
                background: #FFD700;
                display: -webkit-box;
                display: -ms-flexbox;
                display: flex;
                overflow: auto;
                max-width: 700px;
                color: #fff;
            }
            .noUnderline, .noUnderline:focus, .noUnderline:hover, a.inherit.noUnderline, a.inherit.noUnderline:focus, a.inherit.noUnderline:hover {
                text-decoration: none;
            }
            .home .search-box {
                max-width: 700px;
            }

            .form {
                display: block;
                height: 30px;
            }
            input{
                font-family: inherit;
                font-size: inherit;
                line-height: inherit;
                color: inherit;
                font: inherit;
                margin: 0;
                font-size: 100%;
                vertical-align: baseline;
            }
            html, input {
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
            .search-box {
                background: #fff;
                color: #444;
                padding: 12px 12px;
                max-width: 80%;
                position: relative;
                -webkit-transition: box-shadow .2s ease;
                transition: box-shadow .2s ease;
                box-shadow: 0 2px 2px 0 rgba(0,0,0,.16);
            }
            .nav-search
            {
                display: inline-block;
                width: 740px;
                text-align: right;
                height:50px;
            }
            .nav-search ul
            {
                list-style-type: none;
            }
            .nav-search li
            {
                display: inline-block;
                margin: 20px 10px;
            }
            .nav-search a
            {
                font-size: 1.3em;
                color: #181818;
                padding-bottom: 3px;
                text-decoration: none;
            }
            .nav-search a:hover
            {
                color: #A18029;
                border-bottom: 2px solid #A18029;
            }
            *, :after, :before {
                -webkit-box-sizing: border-box;
                -moz-box-sizing: border-box;
                box-sizing: border-box;
            }
            div {
                display: block;
            }
            html {
                font-size: 12px;
                font-family: sans-serif;
                -ms-text-size-adjust: 100%;
                -webkit-text-size-adjust: 100%;
            }
            body.md-default-theme, body, html.md-default-theme, html {
                color: rgba(0,0,0,0.87);
                background-color: rgb(250,250,250);
            }
        </style>
        <div class="row">
            <div class="well ">
                <div class="container">
                    <div class="search-box">
                        <c:url var="results" value="/results${keyword}"></c:url>
                        <form  class="form" method="get" action="${results}">
                            <input type="text" name="keyword" value="${searchfield}" /> &nbsp;
                            <button type="submit" class="search-box__submit fa fa-search btn-default"/>
                        </form>
                    </div>
                    <div class="">
                        <nav class="nav-search">
                            <ul id="" class="">
                                <li><a href="#"><spring:message code="text.all" /></a></li>
                                <li>
                                    <c:url var="occurrenceList" value="/results/occurrenceList?keyword=${searchfield}"></c:url>
                                    <a href="${occurrenceList}"><spring:message code="home.header.observations" /></a>
                                </li>
                                <li>
                                    <c:url var="specieslist" value="/results/specieslist?keyword=${searchfield}"></c:url>
                                    <a href="${specieslist}"><spring:message code="menu.species" /></a>
                                </li>
                               <!-- <li><a href="https://www.lemursportal.org/species/visualisation" onclick="window.location = 'https://www.lemursportal.org/species/visualisation'"><spring:message code="home.header.map" /></a></li>-->
                                <li>
                                    <c:url var="documentslist" value="https://www.lemursportal.org/forum/documents?search=${searchfield}"></c:url>
                                    <a href="${documentslist}"><spring:message code="home.document" /></a>
                                </li>
                                <li>
                                    <c:url var="expertslist" value="/results/expertslist?keyword=${searchfield}"></c:url>
                                    <a href="${expertslist}"><spring:message code="menu.experts" /></a>
                                </li>
                                <li> 
                                    <c:url var="discussionslist" value="/results/discussionslist?keyword=${searchfield}"></c:url>
                                    <a href="${discussionslist}"><spring:message code="text.discussion" /></a>
                                </li>
                            </ul>
                        </nav>
                    </div>
                </div>
            </div>
        </div>
        <div class="container">
            <div class="col-sm-12" id="resultat">
                <!-- Document section-->
                <section id="document-section">
                    <div class="col-sm-9">
                        <div class="row">
                            <div class="col-sm-9"><h6 style="color:grey;text-transform:uppercase;font-weight: bold;"><spring:message code="home.document" /></h6></div>
                            <div class="col-sm-3"> <c:url var="documentslist" value="https://www.lemursportal.org/forum/documents?search=${searchfield}"></c:url>
                                <a href="${documentslist}" class="btn btn-default"><h6 style="color:grey">${countdocs} <spring:message code="text.results" /></h6></a></div>
                        </div>
                        <div class="row">
                            <c:forEach items="${resdocs}" var="d">
                                <table class="table table-striped custab" style="border:0px;">
                                    <tbody>
                                        <tr style="border: 1px solid #ccc;padding: 20px;">
                                            <td>
                                                <a href="<c:out value="${d[2]}"></c:out>"><c:out value="${d[1]}"></c:out></a>
                                                </td>
                                                <td>
                                                <c:out value="${d[4]}"></c:out>
                                                </td>
                                                <td>
                                                <c:out value="${d[5]}"></c:out>
                                                </td>
                                                <td>
                                                    <a href="<c:out value="${d[2]}"></c:out>"><span class="glyphicont"><img src="https://www.lemursportal.org/forum/resources/images/icon-thema.png"/></span></a>
                                                </td>
                                            </tr>
                                        </tbody>                            
                                    </table>
                            </c:forEach>
                        </div>       
                    </div>
                </section>
                <!--end section -->
                <!-- Species results section-->
                <section id="species-section">
                    <div class="col-sm-9">
                        <div class="row">
                            <div class="col-sm-9"><h6 style="color:grey;text-transform:uppercase;font-weight: bold;"><spring:message code="menu.species" /></h6></div>
                            <div class="col-sm-3">
                                <c:url var="specieslist" value="/results/specieslist?keyword=${searchfield}"></c:url>
                                <a href="${specieslist}" class="btn btn-default"><h6 style="color:grey">${countspecies} <spring:message code="text.results" /></h6></a>
                            </div>
                        </div>
                        <div id="resultat">
                            <div class="col-sm-9">
                                <div class="forum-container">
                                    <div class="row expert">
                                        <c:forEach items="${result}" var="taxo">
                                            <div class="col-md-3">
                                                <div class="species-sidebar">
                                                    <div class="image speciespic">
                                                        <c:choose>
                                                            <c:when test="${empty taxo[2]}">
                                                                <img src="${resourcesPath}/img/images.png" alt="<c:out value="${taxo[0]}" /> " style="background-position: center; margin: auto; width: 100%; height: 150px; background-image:  url('${resourcesPath}/img/images.png'); background-repeat: no-repeat; background-size: auto 100%;" class="img-responsive"/>
                                                            </c:when>
                                                            <c:otherwise>
                                                                <img src="https://www.lemursportal.org/species/${taxo[2]}" alt="<c:out value="${taxo[0]}" /> " style="background-position: center; margin: auto; width: 100%; height: 150px; background-image:  url('https://www.lemursportal.org/species/${taxo[2]}'); background-repeat: no-repeat; background-size: auto 100%;" class="img-responsive"/>
                                                            </c:otherwise>
                                                        </c:choose>
                                                    </div>
                                                    <div class="species-name">
                                                        <a href="https://www.lemursportal.org/species/getDetailTaxo?id=${taxo[1]}">
                                                            <div class="species-name"><c:out value="${taxo[0]}" /></div>
                                                        </a>
                                                    </div>
                                                </div>
                                            </div>
                                        </c:forEach>
                                    </div>
                                </div>
                            </div>             
                        </div>
                    </div>
                </section>
                <!--End section -->
                <!--Occurrence section-->
                <section id="occurrence-section">
                    <div class="col-sm-9">
                        <div class="row">
                            <div class="col-sm-9"><h6 style="color:grey;text-transform:uppercase;font-weight: bold;"><spring:message code="home.header.observations" /></h6></div>
                            <div class="col-sm-3"> <c:url var="occurrenceList" value="/results/occurrenceList?keyword=${searchfield}"></c:url>
                                <a href="${occurrenceList}" class="btn btn-default"><h6 style="color:grey">${countocc} <spring:message code="text.results" /></h6></a>
                            </div>
                        </div>
                        <div class="row">
                            <div ><!--class="panel panel-default well-sm"-->
                                <div class="row">
                                    <c:forEach items="${occres}" var="occ">      
                                        <div class="col-sm-3"><c:out value="${occ[0]}"></c:out></div>
                                        <div class="col-sm-1">Toutes(<c:out value="${occ[1]}"></c:out>)</span></div>
                                        <div class="col-sm-2">Fiable(s)(<c:out value="${occ[2]}"></c:out>)</div>
                                        <div class="col-sm-3">En attente de validation(<c:out value="${occ[3]}"></c:out>)</div>
                                        <div class="col-sm-3">Questionnable(s)(<c:out value="${occ[4]}"></c:out>)</div>
                                    </c:forEach>

                                </div>

                            </div>
                        </div>
                    </div>
                </section>
                <!-- End section-->
                <!--Expert section-->
                <section id="experts-section">
                    <div class="col-sm-9">
                        <div class="row">
                            <div class="col-sm-9"><h6 style="color:grey;text-transform:uppercase;font-weight: bold;"><spring:message code="menu.experts" /></h6></div>
                            <div class="col-sm-3"> <c:url var="occurrenceList" value="/results/expertslist?keyword=${searchfield}"></c:url>
                                <a href="${occurrenceList}" class="btn btn-default"><h6 style="color:grey">${countexpert} <spring:message code="text.results" /></h6></a>
                            </div>
                        </div>
                        <div class="forum-container liste-expert">
                            <div class="row expert">
                                <div>
                                    <h4 ><c:out value="${noexpert}"/></h4>
                                </div>
                                <c:forEach items="${expertres}" var="expert">
                                    <div class="col-md-3">
                                        <div class="expert-sidebar">
                                            <div class="image expert-userpic">
                                                <c:choose>
                                                    <c:when test="${empty expert[1]}">
                                                        <img src="https://www.lemursportal.org/forum/resources/profil/default.png" alt="<c:out value="${expert[3]}" /> " style="background-position: center; margin: auto; width: 100%; height: 150px; background-image:  url('https://www.lemursportal.org/forum/resources/profil/default.png'); background-repeat: no-repeat; background-size: auto 100%;" class="img-responsive"/>

                                                    </c:when>
                                                    <c:otherwise>
                                                        <img src="https://www.lemursportal.org/forum/resources/${expert[1]}" alt="<c:out value="${expert[3]}" /> " style="background-position: center; margin: auto; width: 100%; height: 150px; background-image:  url('https://www.lemursportal.org/forum/resources/${expert[1]}'); background-repeat: no-repeat; background-size: auto 100%;" class="img-responsive"/>
                                                    </c:otherwise>
                                                </c:choose>
                                                <sec:authorize access="isAuthenticated()" var="isLoggedInUser"/>
                                                <c:choose>
                                                    <c:when test="${isLoggedInUser}">
                                                        <a href="#envoi-msg" class="send" role="button" class="btn btn-custom" data-toggle="modal" title="Envoyer un message">
                                                            <i class="fa fa-envelope"></i>
                                                        </a>
                                                    </c:when>
                                                    <c:otherwise></c:otherwise>
                                                </c:choose>
                                            </div>

                                            <div class="expert-usertitle">
                                                <div class="expert-usertitle-name">
                                                    <c:out value="${expert[4]}" /> <c:out value="${expert[3]}" /> <c:out
                                                        value="${expert[2]}" />

                                                </div>
                                                <div class="expert-usertitle-role">
                                                    <u>Expert</u>&nbsp;
                                                    <br />
                                                </div>
                                            </div>
                                            <div class="expert-userbuttons" align="center">
                                                <a  href="https://www.lemursportal.org/forum/experts/${expert[0]}" class="btn">voir profil</a>
                                            </div>
                                        </div>
                                    </div>
                                </c:forEach>
                            </div>
                        </div>
                    </div> 
                </section>
                <!-- end section-->
                <!-- discussion section -->
                <section id="discussions-section">
                    <div class="col-sm-9">
                        <div class="row">
                            <div class="col-sm-9"><h6 style="color:grey;text-transform:uppercase;font-weight: bold;"><spring:message code="text.discussion" /></h6></div>
                            <div class="col-sm-3"> <c:url var="discussionslist" value="/results/discussionslist?keyword=${searchfield}"></c:url>
                                <a href="${discussionslist}" class="btn btn-default"><h6 style="color:grey">${countdiscussion} <spring:message code="text.results" /></h6></a>
                            </div>
                        </div>
                        <div class="row">
                            <style>
                                a.forum-item-title {
                                    color: #000!important;
                                    display: block;
                                    font-size: 14px;
                                    font-weight: 600;
                                }
                                .img-circle {
                                    border-radius: 50%;
                                }

                                .img-circle {
                                    width: 60px!important;
                                }
                                img {
                                    margin-bottom: -4px;
                                }
                                img {
                                    vertical-align: middle;
                                }
                                img {
                                    border: 0;
                                }
                                p {
                                    margin: 0 0 10px;
                                }
                                * {
                                    -webkit-box-sizing: border-box;
                                    -moz-box-sizing: border-box;
                                    box-sizing: border-box;
                                }
                                user agent stylesheet
                                p {
                                    display: block;
                                    margin-block-start: 1em;
                                    margin-block-end: 1em;
                                    margin-inline-start: 0px;
                                    margin-inline-end: 0px;
                                }
                                .forum-item .forum-sub-title {
                                    color: #585858;
                                    margin-top: 10px;
                                    font-size: 12px;
                                    /* width: 75%; */
                                    width: 65%;
                                    float: left;
                                }
                            </style>
                            <!-- D Question/Reponse -->
                            <div class="well-sm">
                                <c:forEach items="${discussionres}" var="discussion">
                                    <div class="forum-container reponse-quest">
                                        <div class="forum-item">
                                            <div class="row">
                                                <div class="col-sm-12">
                                                    <div class="col-sm-2">
                                                        <c:choose>
                                                            <c:when test="${empty discussion[0]}">
                                                                <img src="https://www.lemursportal.org/forum/resources/profil/default.png" class="img-circle " alt="<c:out value="${discussion[0]}" /> ">

                                                            </c:when>
                                                            <c:otherwise>
                                                                <div><img src="https://www.lemursportal.org/forum/resources/${discussion[0]}" class="img-circle "/></div>
                                                                </c:otherwise>
                                                            </c:choose>
                                                    </div>
                                                    <div class="col-sm-10">
                                                        <div class="col-sm-12"><p><a class="forum-item-title" href="https://www.lemursportal.org/forum/post/show/${discussion[1]}">${discussion[2]}</a></p></div>
                                                        <div class="col-sm-12">${discussion[3]}</div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </c:forEach>
                            </div>
                        </div>
                    </div>
                </section>
            </div>
        </div>
        <footer id="footer">
            <div class="container">
                <div class="row">
                    <div class="col-md-5">
                        <div class="row">

                            <div class="col-xs-3 animated fadeInUp" data-wow-delay="0.4s">
                                <img src="${resourcesPath}/img/logo-lemurs-blanc.png" style="height: 78px; margin-left: 15px;" alt="">
                            </div>

                            <div class="col-xs-4 animated fadeInUp" data-wow-delay="0.4s">
                                <ul style="padding-left: 20px;">
                                    <!-- 						<li class="animated zoomIn"><a href="www.lemursportal.org">Home</a></li> -->
                                    <li class="animated zoomIn"><a
                                            href="https://www.lemursportal.org/forum/">Post</a></li>
                                    <li class="animated zoomIn"><a
                                            href="https://www.lemursportal.org/forum/documents">Documents</a></li>
                                    <li class="animated zoomIn"><a
                                            href="https://www.lemursportal.org/forum/experts">Experts</a></li>
                                </ul>
                            </div>
                            <div class="col-xs-4 animated fadeInUp" data-wow-delay="0.4s">
                                <ul style="padding-left: 20px;">
                                    <li class="animated zoomIn"><a
                                            href="https://www.lemursportal.org/forum/formation/">Opportunities</a></li>
                                    <li class="animated zoomIn"><a href="#">Help</a></li>
                                    <!--li class="animated zoomIn"><a href="#">Mentions légales</a></li-->
                                    <li class="animated zoomIn"><a href="#contact">Contact</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>

                    <div class="col-md-4 animated fadeInUp" data-wow-delay="0.8s">
                        <div class="row" style="padding-left: 15px !important;">
                            <div class="col-xs-2">
                                <a href="http://www.fapbm.org/" target="_blank"><img
                                        src="${resourcesPath}/img/part1.png"></a>
                            </div>
                            <div class="col-xs-2">

                                <a href="http://www.gerp.mg" target="_blank"><img
                                        src="${resourcesPath}/img/part2.png"></a>
                            </div>
                            <div class="col-xs-2">
                                <a href="http://www.primate-sg.org/" target="_blank"><img
                                        src="${resourcesPath}/img/part3.png"></a>
                            </div>
                            <div class="col-xs-2">
                                <a href="http://madagascar.wcs.org" target="_blank"><img
                                        src="${resourcesPath}/img/part4.png"></a>
                            </div>
                            <div class="col-xs-2">
                                <a href="http://data.rebioma.net/" target="_blank"><img
                                        src="${resourcesPath}/img/part5.png"></a>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3 animated fadeInUp" data-wow-delay="0.8s">
                        <a href="http://jrsbiodiversity.org/" class="donor" target="_blank"><img
                                src="http://jrsbiodiversity.org/wp-content/themes/zero/images/jrs-logo.svg"
                                style="border-radius: 4%; /*margin-top: 3%*/;padding:2%;"></a>
                    </div>
                </div>
            </div>
            <div style="background: #2E2E2E; margin-top: 35px">
                <div class="row text-center">
                    <div class="footer-content">
                        <p>Copyright &copy; - Lemurs Portal 2019</p>
                    </div>
                </div>
        </footer>

        <style>
            .tail-select {
                width: 100%!important;
            }
        </style>
        <div id="modal-ajout-document" class="modal edit-profil-form">
            <div class="modal-dialog">
                <!-- Modal content-->
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                        <h4 class="modal-title"><spring:message code="document.add_document.title"/></h4>
                    </div>
                    <form action="javascript:sendAddDocument();" autocomplete="off">
                        <div class="modal-body" style="overflow-y: auto;max-height:  500px;">
                            <div style=" font-size: 10px; color: #999;"><span style="color: red;">NB</span><spring:message code="document.add_document.nb"/></div>
                            <div id="errorMdp"></div>
                            <input type="hidden" id="id">
                            <spring:message code="metadata.topics"/><sup>*</sup>
                            <select title="<spring:message code="metadata.popup.bubble.topics"/>" required multiple="" id="id_thematique" class="form-control tailed">
                                <c:forEach items="${topics}" var="topThematique">
                                    <option value="${topThematique.id}"><spring:message code="document.thematique.id.${topThematique.id}"/></option>
                                </c:forEach>                                
                            </select><br>                            
                            <spring:message code="metadata.type"/><sup>*</sup>
                            <select required title="<spring:message code="metadata.popup.bubble.type"/>" class="form-control" id="type" style="width: 100%!important;">
                                <option disabled selected value> -- select an option -- </option>
                                <option style="background-color: #f9efc9;" value="4">Document</option>
                                <option style="background-color: #f9efc9;" value="1">Photo</option>
                                <option style="background-color: #f9efc9;" value="2">Video</option>
                                <option style="background-color: #f9efc9;" value="3">Audio</option>
                            </select>                            
                            <div class="autocomplete" style="width: 100%;">
                                <spring:message code="metadata.year"/><sup>*</sup>                        
                                <input title="<spring:message code="metadata.popup.bubble.year"/>" required type="text" class="form-control" id="year">
                            </div>
                            <div class="autocomplete" style="width: 100%;">
                                <spring:message code="metadata.title"/><sup>*</sup>
                                <input title="<spring:message code="metadata.popup.bubble.title"/>" required type="text" class="form-control" id="title">
                            </div>
                            <spring:message code="global.label.file"/>
                            <input type="file" class="form-control" id="document">
                            <div class="autocomplete" style="width: 100%;">
                                <spring:message code="metadata.url"/>
                                <input title="<spring:message code="metadata.popup.bubble.url"/>" placeholder="ex: https://www.lemursportal.org/forum/resources/upload/1530798561545Ziheng&Yoder2003.pdf" type="text" class="form-control" id="url">
                            </div>
                            <div class="" style="width: 100%;">
                                <spring:message code="metadata.species"/>
                                <select title="<spring:message code="metadata.popup.bubble.species"/>" multiple class="form-control tailed" id="modal-species" style="width: 100%!important;"></select>
                            </div>
                            <spring:message code="metadata.date"/>
                            <input title="<spring:message code="metadata.popup.bubble.date"/>" type="date" class="form-control" id="datePublication">
                            <div class="autocomplete" style="width: 100%;">
                                <spring:message code="metadata.bibliographicResource"/>
                                <select title="<spring:message code="metadata.popup.bubble.bibliographicResource"/>" class="form-control" id="bibliographic_resource" style="width: 100%!important;">
                                    <option style="background-color: #f9efc9;" value="">none</option>                                    
                                    <option style="background-color: #f9efc9;" value="<spring:message code="metadata.bibliographicResource.paper"/>"><spring:message code="metadata.bibliographicResource.paper"/></option>                                    
                                    <option style="background-color: #f9efc9;" value="<spring:message code="metadata.bibliographicResource.journal"/>"><spring:message code="metadata.bibliographicResource.journal"/></option>                                    
                                    <option style="background-color: #f9efc9;" value="<spring:message code="metadata.bibliographicResource.book"/>"><spring:message code="metadata.bibliographicResource.book"/></option>                                    
                                    <option style="background-color: #f9efc9;" value="<spring:message code="metadata.bibliographicResource.report"/>"><spring:message code="metadata.bibliographicResource.report"/></option>                                    
                                    <option style="background-color: #f9efc9;" value="<spring:message code="metadata.bibliographicResource.memory"/>"><spring:message code="metadata.bibliographicResource.memory"/></option>                                    
                                    <option style="background-color: #f9efc9;" value="<spring:message code="metadata.bibliographicResource.thesis"/>"><spring:message code="metadata.bibliographicResource.thesis"/></option>                                    
                                    <option style="background-color: #f9efc9;" value="<spring:message code="metadata.bibliographicResource.map"/>"><spring:message code="metadata.bibliographicResource.map"/></option>                                    
                                    <option style="background-color: #f9efc9;" value="<spring:message code="metadata.bibliographicResource.poster"/>"><spring:message code="metadata.bibliographicResource.poster"/></option>                                    
                                    <option style="background-color: #f9efc9;" value="<spring:message code="metadata.bibliographicResource.others"/>"><spring:message code="metadata.bibliographicResource.others"/></option>                                    
                                </select>
                            </div>                                                
                            <div class="autocomplete" style="width: 100%;">
                                <spring:message code="metadata.coverage"/>
                                <input title="<spring:message code="metadata.popup.bubble.coverage"/>" placeholder="ex: SAINTE LUCE | FORT-DAUPHIN | MADAGASCAR" type="text" class="form-control" id="coverage">
                            </div>
                            <div class="autocomplete" style="width: 100%;">
                                <spring:message code="metadata.description"/>
                                <textarea title="<spring:message code="metadata.popup.bubble.description"/>" class="form-control" id="description">

                                </textarea>
                            </div>
                            <spring:message code="metadata.language"/>
                            <select title="<spring:message code="metadata.popup.bubble.language"/>" class="form-control" id="language" style="width: 100%!important;">
                                <option style="background-color: #f9efc9;" selected="" value="MLG">MG</option>
                                <option style="background-color: #f9efc9;" value="EN">EN</option>
                                <option style="background-color: #f9efc9;" value="FR">FR</option>
                                <option style="background-color: #f9efc9;" value="FR">OTHERS</option>
                            </select>
                            <div class="autocomplete" style="width: 100%;">
                                <spring:message code="metadata.relation"/>
                                <input title="<spring:message code="metadata.popup.bubble.relation"/>" placeholder="ex: Relation" type="text" class="form-control" id="relation">
                            </div>
                            <div class="autocomplete" style="width: 100%;">
                                <spring:message code="metadata.source"/>
                                <input title="<spring:message code="metadata.popup.bubble.source"/>" placeholder="ex: Syst. Biol. 52(5):705?716, 2003" type="text" class="form-control" id="source">
                            </div>
                            <div class="autocomplete" style="width: 100%;">
                                <spring:message code="metadata.subject"/>
                                <input title="<spring:message code="metadata.popup.bubble.subject"/>" placeholder="ex: Mouse lemur Species | Bayesian Methods" type="text" class="form-control" id="subject">
                            </div>                        
                            <!--<div class="autocomplete" style="width: 100%;">-->
                            <%--<spring:message code="metadata.format"/>--%>
                            <input title="<spring:message code="metadata.popup.bubble.format"/>" placeholder="ex: text" type="hidden" class="form-control" id="format">
                            <!--</div>-->
                            <div class="autocomplete" style="width: 100%;">
                                <spring:message code="metadata.fileFormat"/>
                                <input title="<spring:message code="metadata.popup.bubble.fileFormat"/>" placeholder="ex: PDF" type="text" class="form-control" id="fileFormat">
                            </div>
                            <div class="autocomplete" style="width: 100%;">
                                <spring:message code="metadata.identifier"/>
                                <input title="<spring:message code="metadata.popup.bubble.identifier"/>" placeholder="ex :ISSN: 1063-5157 print / 1076-836X online | DOI: 10.1080/10635150390235557" type="text" class="form-control" id="identifier">
                            </div>                        
                            <div class="autocomplete" style="width: 100%;">
                                <spring:message code="metadata.contributor"/>
                                <input title="<spring:message code="metadata.popup.bubble.contributor"/>" placeholder="ex: Department of Biology, University College London | Department of Ecology and Evolutionary Biology, Yale University" type="text" class="form-control" id="contributor">
                            </div>
                            <div class="autocomplete" style="width: 100%;">
                                <spring:message code="metadata.creator"/>
                                <input title="<spring:message code="metadata.popup.bubble.creator"/>" placeholder="ex: ZIHENG YANG | ANNE D. YODER" type="text" class="form-control" id="creator">
                            </div>
                            <div class="autocomplete" style="width: 100%;">
                                <spring:message code="metadata.publisher"/>
                                <input title="<spring:message code="metadata.popup.bubble.publisher"/>" placeholder="ex: Society of Systematic Biologists" type="text" class="form-control" id="publisher">
                            </div>
                            <div class="autocomplete" style="width: 100%;">
                                <spring:message code="metadata.rights"/>
                                <input title="<spring:message code="metadata.popup.bubble.rights"/>" placeholder="ex: Syst. Biol. 52(5):705?716, 2003 | Copyright(c) Society of Systematic Biologists" type="text" class="form-control" id="rights">                        
                            </div>                            
                        </div>
                        <div class="modal-footer">
                            <button style="float: right;" type="button" class="btn btn-default" data-dismiss="modal"><spring:message code="global.btn.cancel"/></button>
                            <input type="submit" style="float: right;" class="btn btn-success" value="<spring:message code="global.btn.save"/>">
                                   <!--<button style="float: right;" type="submit" class="btn btn-default" data-dismiss="modal"><spring:message code="global.btn.save"/></button>-->
                            <div id="delete"></div>
                        </div>
                    </form>
                </div>
            </div>                        
        </div>
        <!--        <div id="modal-upload-darwincore" class="modal edit-profil-form">
                    <div class="modal-dialog">
                         Modal content
                        <div class="modal-content">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal">&times;</button>
                                <h4 class="modal-title"><spring:message code="document.add_document.title"/></h4>
                            </div>
                            <form action="javascript:sendAddDocument();" autocomplete="off">
                                <div class="modal-body" style="overflow-y: auto;max-height:  500px;">
                                                                
                                </div>
                                <div class="modal-footer">
                                    <button style="float: right;" type="button" class="btn btn-default" data-dismiss="modal"><spring:message code="global.btn.cancel"/></button>
                                    <input type="submit" style="float: right;" class="btn btn-default" value="<spring:message code="global.btn.save"/>">
                                    <button style="float: right;" type="submit" class="btn btn-default" data-dismiss="modal"><spring:message code="global.btn.save"/></button>
                                    <div id="delete"></div>
                                </div>
                            </form>
                        </div>
                    </div>                        
                </div>-->

        <div id='modal-upload_spinner' class='modal fade' role='dialog' style='display:none !important' tabindex="-1">
            <div class='modal-dialog'>
                <div class='modal-content'>
                    <div class="modal-header">
                        <button data-dismiss='modal' class='close' type='button'>x</button>
                        <h4 class="modal-title"><center>Upload</center></h4>
                    </div>
                    <div class='modal-body'>
                        <div class='row'>
                            <div class='col-md-10 col-md-offset-1'>                                                        
                                <img src="https://www.lemursportal.org/species/resources/assets/img/loaderB32.gif" class="img-responsive" style="margin: 5px auto;">
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div id='modal-alert' class='modal fade' role='dialog' style='display:none !important' tabindex="-1">
            <div class='modal-dialog'>
                <div class='modal-content'>
                    <div class="modal-header">
                        <button data-dismiss='modal' class='close' type='button'>x</button>
                        <h4 class="modal-title"><center>ERREUR</center></h4>
                    </div>
                    <div class='modal-body'>
                        <div class='row'>
                            <div class='col-md-10 col-md-offset-1'>                            
                                <div class="col-sm-12">
                                    <span id="messageAlerte">Un erreur est survenu lors du t&eacute;l&eacute;chargement. Veuiller v&eacute;rifier votre acr&eacute;ditation ou la structure des donn&eacute;es.</span>
                                </div>                                    
                            </div>
                        </div>
                    </div>
                    <div class='modal-footer'>
                        <button type='button' class='btn btn-default btn-sm' data-dismiss='modal'>OK</button>                    
                    </div>
                </div>
            </div>
        </div>

        <div id='modal-upload-darwincore' class='modal'>
            <div class='modal-dialog'>
                <div class='modal-content'>
                    <div class="modal-header">
                        <button data-dismiss='modal' class='close' type='button'>x</button>
                        <h4 class="modal-title"><center><spring:message code="observation.upload.title"/></center></h4>
                    </div>
                    <div class='modal-body row'>                       
                        <form id="uploadForm" method="POST" class="col-md-offset-1 col-md-11" enctype="multipart/form-data">
                            <label for="sep">Format file</label>
                            <select class="form-control" id="sep" style="width: 92%;height: 42px;border-radius: 5px;">
                                <option value="2"><spring:message code="observation.popup.upload_dwc.semicolon"/></option>
                                <option value="0"><spring:message code="observation.popup.upload_dwc.comma"/></option>
                                <option value="1">Excel (*.xlsx)</option>                                                        
                            </select><br>
                            <label for="csv-xl" id="buttonlabel">
                                <span role="button" aria-controls="filename" tabindex="0">
                                    File path
                                </span>
                            </label>
                            <input type="file" class="form-control" name="excelfile" ng-model="file" id="csv-xl">
                            <!--                            <label for="filename" class="hide">
                                                            uploaded file
                                                        </label>
                                                        <input type="text" id="filename" autocomplete="off" readonly placeholder="no file uploaded">  <br>-->
                            <!--<input id="publique" type="checkbox" value="1"> publique --> <br>
                            <div class="">
                                <input id="publique-modal" type="checkbox" value="1">
                                <label for="publique-modal"><spring:message code="checkbox.public"/></label>
                            </div>
                            <spring:message code="observation.popup.upload_dwc.term"/> <a href="#" onclick="window.open('resources/assets/policy.pdf', '_blank')">(<spring:message code="global.download"/>)</a>
                        </form>
                    </div>
                    <div class='modal-footer'>                        
                        <input data-toggle='modal' data-target='#modal-upload_spinner' data-dismiss='modal' class="btn btn-success btn-sm" type="submit" id="publique" onclick="upload()" value="<spring:message code="global.import"/>">                        
                        <button type='button' class='btn btn-default btn-sm' data-dismiss='modal'><spring:message code="global.btn.cancel"/></button>                    
                    </div>                    
                </div>
            </div>
        </div>

        <script src="${resourcesPath}/js/jquery-1.11.1.min.js"></script>

        <script src="${resourcesPath}/js/bootstrap.min.js"></script>

        <script src="${resourcesPath}/js/jquery.singlePageNav.min.js"></script>

        <script src="${resourcesPath}/js/jquery.fancybox.pack.js"></script>

        <script
        src="https://maps.google.com/maps/api/js?key=AIzaSyDC9ch_Ee_RiaM4H_270yzyI8n2OxdbCcY&callback=initMap"></script>

        <script src="${resourcesPath}/js/owl.carousel.min.js"></script>

        <script src="${resourcesPath}/js/jquery.easing.min.js"></script>

        <script src="${resourcesPath}/js/jquery.slitslider.js"></script>

        <script>
                            $(function () {
                                $('.sl-content-wrapper').css('height', '350px!important');
                            });
        </script>

        <script src="${resourcesPath}/js/jquery.ba-cond.min.js"></script>

        <script src="${resourcesPath}/js/wow.min.js"></script>

        <script src="${resourcesPath}/js/main.js"></script>
        <script src="${resourcesPath}/js/jquery.li-scroller.1.0.js"></script>

        <script type="text/javascript">
                            function sendAddDocument() {
                                var formData = new FormData();
                                var id = $('#id').val();
                                if (id !== 0 && id !== undefined && id !== null) {
                                    formData.append('id', id);
                                }
                                formData.append('file', $('#document').get(0).files[0]);
                                formData.append('bibliographicResource', $('#bibliographic_resource').val());
                                formData.append('date', $('#datePublication').val());
                                formData.append('idThematique', $('#id_thematique').val());
                                formData.append('coverage', $('#coverage').val());
                                formData.append('description', $('#description').val());
                                formData.append('language', $('#language').val());
                                formData.append('relation', $('#relation').val());
                                formData.append('source', $('#source').val());
                                formData.append('subject', $('#subject').val());
                                formData.append('title', $('#title').val());
                                formData.append('format', $('#format').val());
                                formData.append('fileFormat', $('#fileFormat').val());
                                formData.append('identifier', $('#identifier').val());
                                formData.append('type', $('#type').val());
                                formData.append('contributor', $('#contributor').val());
                                formData.append('creator', $('#creator').val());
                                formData.append('publisher', $('#publisher').val());
                                formData.append('rights', $('#rights').val());
                                formData.append('year', $('#year').val());
                                formData.append('url', $('#url').val());
                                formData.append('species', $('#species').val());
                                $.ajax({
                                    method: 'POST',
                                    data: formData,
                                    contentType: false,
                                    processData: false,
                                    url: 'https://www.lemursportal.org/forum/secured/document/post',
                                    success: function (json) {
                                        $('#bibliographic_resource').val('');
                                        $('#datePublication').val('');
                                        $('#id_thematique').val('');
                                        $('#coverage').val('');
                                        $('#description').val('');
                                        $('#id').val('');
                                        $('#language').val('');
                                        $('#relation').val('');
                                        $('#source').val('');
                                        $('#subject').val('');
                                        $('#title').val('');
                                        $('#format').val('');
                                        $('#fileFormat').val('');
                                        $('#identifier').val('');
                                        $('#contributor').val('');
                                        $('#creator').val('');
                                        $('#publisher').val('');
                                        $('#rights').val('');
                                        $('#year').val('');
                                        $('#url').val('');
                                        $('#species').val('');
                                        $('#errorMdp').html("<p style='color: red;'> " + "</p>");
                                        //                                        closeModal('modal-ajout-document');
                                        location.reload();
                                    },
                                    error: function (json) {
                                        $('#errorMdp').html("<p style='color: red;'> " + "Le téléchargement du document est un échec. Veuiller réessayer.</p>");
                                    }
                                });
                            }

                            function setGetParameter(paramName, paramValue) {
                                if (paramValue == '${pageContext.response.locale}')
                                    return;
                                var url = window.location.href;
                                var hash = location.hash;
                                url = url.replace(hash, '');
                                if (url.indexOf(paramName + "=") >= 0) {
                                    var prefix = url.substring(0, url.indexOf(paramName));
                                    var suffix = url.substring(url.indexOf(paramName));
                                    suffix = suffix.substring(suffix.indexOf("=") + 1);
                                    suffix = (suffix.indexOf("&") >= 0) ? suffix.substring(suffix
                                            .indexOf("&")) : "";
                                    url = prefix + paramName + "=" + paramValue + suffix;
                                } else {
                                    if (url.indexOf("?") < 0)
                                        url += "?" + paramName + "=" + paramValue;
                                    else
                                        url += "&" + paramName + "=" + paramValue;
                                }
                                window.location.href = url + hash;
                            }

                            $(document)
                                    .ready(
                                            function () {
                                                var maxLength = 310;
                                                $('.show-read-more p').contents().unwrap();
                                                $(".show-read-more")
                                                        .each(
                                                                function () {
                                                                    var myStr = $(this).text();
                                                                    if ($.trim(myStr).length > maxLength) {
                                                                        var newStr = myStr
                                                                                .substring(0,
                                                                                        maxLength);
                                                                        var removedStr = myStr
                                                                                .substring(
                                                                                        maxLength,
                                                                                        $
                                                                                        .trim(myStr).length);
                                                                        $(this).empty().html(
                                                                                newStr + "...");
                                                                        var link = $(this).parent()
                                                                                .parent().children(
                                                                                'a').attr(
                                                                                'href');
                                                                        $(this)
                                                                                .append(
                                                                                        ' <a href="' + link + '" class="read-more"> read more</a>');
                                                                        //$(this)
                                                                        // 															.append(
                                                                        // 																	'<span class="more-text">'
                                                                        // 																			+ removedStr
                                                                        // 																			+ '</span>');
                                                                    }
                                                                });
                                                //$(".read-more").click(function(){
                                                //	$(this).siblings(".more-text").contents().unwrap();
                                                //	$(this).remove();
                                                //});
                                                // 							$('#lang-select').val('${pageContext.response.locale}');
                                                // 							$('#lang-select').change(function(){
                                                // 								setGetParameter('lang', this.value);
                                                // 							});
                                                $('#lang-select span').html(
                                                        '${pageContext.response.locale} ');

                                                //activate menu of selected language
                                                if ('${pageContext.response.locale}' != null) {
                                                    $("#lang-select li").removeClass("active");
                                                    $("#${pageContext.response.locale}").addClass(
                                                            "active");
                                                }

                                                $('#lang-select li a').click(
                                                        function () {
                                                            setGetParameter('lang', $(this)
                                                                    .parents('#lang-select li')
                                                                    .attr('id'));
                                                        });
                                                //donate button
                                                if (isDonateClosed()) {
                                                    removeStickyDonate();
                                                }
                                            });

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
                                $.ajax({
                                    method: "POST",
                                    url: "https://www.lemursportal.org/species/findByespeceTaxo",
                                    success: function (json) {
                                        //                                                                if (json != null && json.length != 0) {
                                        //                                                                }
                                        var selectBody = "";
                                        for (var i = 0; i < json.length; i++) {
                                            selectBody += "<option>" + json[i].scientificname + "</option>";
                                        }
                                        $("#modal-species").html(selectBody);
                                        tail.select(".tailed");
                                    }, error: function () {
                                        $("#modal-species").html("<option>None</option>");
                                        console.log("there is a problem with species ajax");
                                        tail.select(".tailed");
                                    }
                                });
                            });

                            function upload() {
                                var formData = new FormData();
                                var file = $('#csv-xl')[0].files[0];
                                formData.append("excelfile", file);
                                console.log(document.getElementById("publique-modal").checked);
                                if (document.getElementById("publique-modal").checked) {
                                    formData.append("publique", 1);
                                } else
                                    formData.append("publique", 0);
                                if ($('#sep').val() == 0) {
                                    formData.append("sep", 0);
                                }
                                $.ajax({
                                    method: 'POST',
                                    url: 'https://www.lemursportal.org/species/processExcel',
                                    data: formData,
                                    processData: false,
                                    contentType: false,
                                    success: function (response) {
                                        if (response == null) {
                                            console.log(response);
                                            $('#messageAlerte').text(response.data[0].message);
                                            $('#modal-upload_spinner').modal('hide');
                                            $('#modal-alert').modal({backdrop: 'static'});
                                        } else {
                                            console.log(response);
                                            $('#modal-upload_spinner').modal('hide');
                                        }
                                    }, error: function (response) {
                                        $('#messageAlerte').text('Un erreur est survenu lors du téléchargement. Veuiller vérifier votre acréditation ou la structure des données.');
                                        $('#modal-alert').modal({backdrop: 'static'});
                                        $('modal-upload_spinner').modal('hide');
                                    }
                                });
                            }
        </script>
    </body>
</html>