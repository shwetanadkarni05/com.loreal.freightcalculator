<!DOCTYPE html>
<html>
    <head>
        <title><g:layoutTitle default="Freight Calculator" /></title>
        <link rel="stylesheet" href="${resource(dir:'css',file:'main.css')}" />
        <link rel="shortcut icon" href="${resource(dir:'images',file:'favicon.ico')}" type="image/x-icon" />
        <g:layoutHead />
        <g:javascript library="application" />
    </head>
    <body>
        <div id="spinner" class="spinner" style="display:none;">
            <img src="${resource(dir:'images',file:'spinner.gif')}" alt="${message(code:'spinner.alt',default:'Loading...')}" />
        </div>
        <div id="grailsLogo"><g:link controller="user" action="menu"><img src="${resource(dir:'images',file:'loreal_logo.png')}" alt="Loreal" border="0" /></g:link></div>
        <g:layoutBody />
    </body>
</html>