<%@include file="./header_meta.jsp" %>
<title>Results</title>
<%@include file="./header.jsp" %>
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
        width: 65%;
        float: left;
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
<%@include file="./footer.jsp" %>