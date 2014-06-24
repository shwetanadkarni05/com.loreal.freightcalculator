

<%@ page import="com.loreal.freightcalculator.Distributor" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'distributor.label', default: 'Distributor')}" />
        <title>List Distributor Conditions</title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><g:link class="create" controller="user" action="menu">Menu</g:link></span>            
        </div>
        <div class="body">
            <h1>List Distributor Conditions</h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <g:hasErrors bean="${distributorInstance}">
            <div class="errors">
                <g:renderErrors bean="${distributorInstance}" as="list" />
            </div>
            </g:hasErrors>
            <g:form method="post" >
                <!-- <g:hiddenField name="id" value="${distributorInstance?.id}" /> -->
                <!-- <g:hiddenField name="version" value="${distributorInstance?.version}" /> -->
                <div class="dialog">
                    <table>
                        <tbody>
                        	<tr>
                        		<td>
                        			<g:select name="cfa" from="${cfaList}" value="${cfaSelected}"  />
                        		</td>
                        		<td>
                        			<g:select name="distributor" from="${cfaDistributorMap.get(cfaSelected.id)}" multiple="true" optionKey="id" optionValue="customerName"/>
                        		</td>
								<td>
									<span class="button"><g:actionSubmit class="save" action="listDistributorConditions" value="Show" /></span>
								</td>
                        	</tr>                        
                                                   
                        
                        </tbody>
                    </table>
                </div>                
            </g:form>
        </div>
    </body>
</html>
