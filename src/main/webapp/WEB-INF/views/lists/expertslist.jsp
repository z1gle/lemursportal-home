<%@include file="../header_meta.jsp" %>
<title><spring:message code="menu.experts" /></title>
<%@include file="../header.jsp" %>
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
    .table {
        width: 100%;
        max-width: 100%;
        margin-bottom: 10px;
    }

    .custab {
        border: 1px solid #ccc;
        padding: 5px;
        margin: 5% 0;
        transition: 0.5s;
    }
    table {
        background-color: transparent;
    }
    table {
        border-spacing: 0;
        border-collapse: collapse;
    }
    * {
        -webkit-box-sizing: border-box;
        -moz-box-sizing: border-box;
        box-sizing: border-box;
    }
    user agent stylesheet
    table {
        display: table;
        border-collapse: separate;
        border-spacing: 2px;
        border-color: grey;
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
    .w{
        display: -webkit-box;
        display: -ms-flexbox;
        display: flex;
        max-width: 700px;
        color:grey;
        padding-right: 1.42857142857rem;
        margin: 0px 15px;
        text-align: justify;
        line-height: 30px;
    }
</style>
<div class="row">
    <div class="well ">
        <div class="container">
            <div class="search-box">
                <c:url var="results" value="/results${keyword}"></c:url>
                <form method="get" class="form" action="${results}">
                    <input type="text" name="keyword" value="${searchfield}" /> &nbsp;
                    <button type="submit" class="search-box__submit fa fa-search btn-default"/>
                </form>
            </div>
        </div>
    </div>
</div>
<div class="container">
    <div>
        <h6 style="color:grey">${counte} <spring:message code="menu.experts" /> <spring:message code="text.found" /></h6>
    </div>
    <div class="forum-container liste-expert">
        <div class="row expert">
            <div>
                <h4 ><c:out value="${noexpert}"/></h4>
            </div>
            <c:forEach items="${expertresult}" var="expert">
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
                            <!-- <div class="expert-usertitle-role">
                             </div>-->
                            <a  href="https://www.lemursportal.org/forum/experts/${expert[0]}" class="btn">voir profil</a>
                        </div>
                    </div>
                </div>
            </c:forEach>
        </div>
    </div>
</div>
<%@include file="../footer.jsp" %>