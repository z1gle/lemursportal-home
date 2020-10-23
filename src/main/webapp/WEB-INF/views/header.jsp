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
                            <li><a href="https://www.lemursportal.org/forum" onclick="window.location = 'https://www.lemursportal.org/forum'"><spring:message code="text.post" /></a></li>
                            <li class="divider"></li>
                            <li><a href="https://www.lemursportal.org/forum/documents" onclick="window.location = 'https://www.lemursportal.org/forum/documents'"><spring:message code="home.document" /></a></li>
                            <li class="divider"></li>
                            <li>
                                <a href="https://www.lemursportal.org/forum/experts"  onclick="window.location = 'https://www.lemursportal.org/forum/experts'"><spring:message code="menu.experts" /></a></li>
                            <li class="divider"></li>
                            <li><a href="https://www.lemursportal.org/forum/formation/" onclick="window.location = 'https://www.lemursportal.org/forum/formation/'"><spring:message code="text.opportunities" /></a></li>
                        </ul>
                    </li>
                    <li><a href="https://www.lemursportal.org/species/taxonomi" onclick="window.location = 'https://www.lemursportal.org/species/taxonomi'"><spring:message code="menu.species" /></a></li>
                    <li><a href="https://www.lemursportal.org/species/darwinportal" onclick="window.location = 'https://www.lemursportal.org/species/darwinportal'"><spring:message code="home.header.observations" /></a></li>
                    <li><a href="https://www.lemursportal.org/species/visualisation" onclick="window.location = 'https://www.lemursportal.org/species/visualisation'"><spring:message code="home.header.map" /></a></li>
                    <c:url var="graphics" value="/graphics"></c:url>
                    <li><a href="${graphics}" onclick="window.location = '${graphics}'"><spring:message code="text.graphics" /></a></li>
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