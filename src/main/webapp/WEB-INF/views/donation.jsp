<%@include file="./header_meta.jsp" %>
<title><spring:message code="text-donate"/></title>
<%@include file="./header.jsp" %>
<style>
    .donate{
        background-color: whitesmoke;
    }
    .donate-content{
        margin-left:20%;
        margin-right:20%;
        height: 400px;
    }
    .virement{
        text-align: center;
    }
</style>
<section class="donate panel panel-body">
    <div class="donate-content">
        <h1 style="padding: 150px 150px;color:grey;"><center><spring:message code="text-available"/></center></h1>
    </div>
</section>
<%@include file="./footer.jsp" %>