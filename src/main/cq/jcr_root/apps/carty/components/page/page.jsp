<%@include file="/libs/foundation/global.jsp"%><!doctype html>
<html ng-app="cartyApp">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">

<title>Carty</title>

<cq:includeClientLib css="carty" />
<script>
  window.globalSettings = {
    apiPath: '${currentPage.path}/api',
  };
</script>
</head>

<body>
  <div id="carty-app">

    <header class="top">

      <div class="logo">
        <a href="/"><i class="icon-marketingcloud medium"></i></a>
      </div>

      <nav class="crumbs">
        <a href="/miscadmin">Tools</a> <a href="${pagePath}.html">Carty</a>
      </nav>
    </header>

    <div class="page" role="main">
      <div class="content">
        <div class="content-container">
          <div class="content-container-inner">
            <div class="alert large {{flash.class}}" ng-show="flash" id="top">
                <button class="close" ng-click="flash = null">×</button>
                <strong>{{flash.title}}</strong>
                <div>
                  {{flash.msg}}
                </div>
            </div>

            <img id="logo" src="/apps/carty/clientlibs/carty/img/logo-carty.png"/>

            <div class="section resolve-map">
              <h2>Resolve & map</h2>
              <%@include file="includes/resolve.jsp" %>
            </div>

            <div class="section">
              <h2>Mappings</h2>
              <p>Review and edit mappings</p>
              <%@include file="includes/tree.jsp" %>
            </div>

            <div class="section">
              <h2>Add new domain</h2>
              <p>Create a set of mappings necessary to handle a domain.</p>
              <%@include file="includes/template.jsp" %>
            </div>

            <div class="section">
              <h2>Settings</h2>
              <p>Change mappings settings</p>
              <%@include file="includes/settings.jsp" %>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
  <cq:includeClientLib js="carty" />
</body>
</html>