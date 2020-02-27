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
        <title><spring:message code="menu.species" /></title>
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


        <script src="${resourcesPath}/js/modernizr-2.6.2.min.js"></script>
        <style type="text/css">
            a.read-more {
                color: black /*#74ac00*/;
            }

            a.read-more:hover {
                text-decoration: underline;
                color: #000;
            }
            .table {
                width: 100%;
                max-width: 100%;
                margin-bottom: 10px;
            }
            * {
                -webkit-box-sizing: border-box;
                -moz-box-sizing: border-box;
                box-sizing: border-box;
            }
            .species-sidebar {
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
                padding: 20px 20px 5px 20px;
            }
            .speciespic {
                position: relative;
                margin: 20px;
            }
            .species-name {
                color: #333;
                font-size: 14px;
                font-weight: bold;
                height: 44px;
                margin-bottom: 7px;
                text-overflow: ellipsis;
                overflow: hidden;
            }
        </style>
    </head>

    <body id="body">
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
                                <li><a href="https://www.lemursportal.org/forum/documents" onclick="window.location = 'https://www.lemursportal.org/forum/documents'"><spring:message code="home.header.documents" /></a></li>
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
                <!-- /main nav -->
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
            form {
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
                        <form method="get" action="${results}">
                            <input type="text" name="keyword" value="${searchfield}" /> &nbsp;
                            <button type="submit" class="search-box__submit fa fa-search btn-default"/>
                        </form>
                    </div>

                </div>
            </div>
        </div>
        <div class="container">
            <div>
                <h6 style="color:grey">${counttax} Species found</h6>
            </div>
            <div class="col-sm-9" id="resultat">
                <div class="row">
                    <div class="forum-container">
                        <div class="row expert">
                            <c:forEach items="${tax}" var="taxo">
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

        <script src="${resourcesPath}/js/ol.js"></script>
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
                                    url: 'https://www.lemursportal.org/forum_test/secured/document/post',
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
                                    url: "https://www.lemursportal.org/forum_test/alerts?alert=1",
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
                                    url: "https://www.lemursportal.org/species_test/findByespeceTaxo",
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
                                    url: 'https://www.lemursportal.org/species_test/processExcel',
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