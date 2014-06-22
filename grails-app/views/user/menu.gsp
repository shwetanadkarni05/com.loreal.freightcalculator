<html>
    <head>
        <title>Freight Calculator</title>
        <meta name="layout" content="main" />
        <style type="text/css" media="screen">

        #nav {
            margin-top:20px;
            margin-left:30px;
            width:228px;
            float:left;

        }
        .homePagePanel * {
            margin:0px;
        }
        .homePagePanel .panelBody ul {
            list-style-type:none;
            margin-bottom:10px;
        }
        .homePagePanel .panelBody h1 {
            text-transform:uppercase;
            font-size:1.1em;
            margin-bottom:10px;
        }
        .homePagePanel .panelBody {
            background: url(images/leftnav_midstretch.png) repeat-y top;
            margin:0px;
            padding:15px;
        }
        .homePagePanel .panelBtm {
            background: url(images/leftnav_btm.png) no-repeat top;
            height:20px;
            margin:0px;
        }

        .homePagePanel .panelTop {
            background: url(images/leftnav_top.png) no-repeat top;
            height:11px;
            margin:0px;
        }
        h2 {
            margin-top:15px;
            margin-bottom:15px;
            font-size:1.2em;
        }
        #pageBody {
            margin-left:280px;
            margin-right:20px;
        }
        </style>
    </head>
    <body>
        <div id="nav">
            <div class="homePagePanel">
                <div class="panelTop"></div>
                <div class="panelBody">                    
                </div>
                <div class="panelBtm"></div>
            </div>
        </div>
        <div id="pageBody">
            <div id="controllerList" class="dialog">
                <h2>Welcome to L'Oreal Freight Calculator</h2>
				<h2>Mr. ${session.user.userFullName} </h2>
                <ul>
					
                    <g:if test="${session.user.userRole=='RLM'}">
            			<li class="controller"><g:link controller="distributor" action="list">View/Edit Distributor Data</g:link></li>
						<li class="controller"><g:link controller="distributor" action="importDistributorData">Import New Distributor Data</g:link></li>
						<li class="controller"><g:link controller="distributor" action="viewReport">View Reports</g:link></li>
						<!-- <li class="controller"><g:link controller="distributor" action="addConditions">Add Conditions</g:link></li> -->
						<li class="controller"><g:link controller="distributor" action="addNewConditions">Add New Conditions</g:link></li>
						<li class="controller"><g:link controller="freightTransaction" action="importInvoiceData">Import Invoice Data</g:link></li>
						<li class="controller"><g:link controller="freightTransaction" action="displayCalculateFreight">Calculate Freight</g:link></li>						
            		</g:if>
					<g:if test="${session.user.userRole=='CFA'}">
						<li class="controller"><g:link controller="freightTransaction" action="importInvoiceData">Import Invoice Data</g:link></li>
						<li class="controller"><g:link controller="freightTransaction" action="displayCalculateFreight">Calculate Freight</g:link></li>
					</g:if>
					<g:if test="${session.user.userRole=='MANAGEMENT'}">
						<li class="controller"><g:link controller="user" action="list">Add/Edit User Information</g:link></li>
						<li class="controller"><g:link controller="distributor" action="viewReport">View Reports</g:link></li>
						<!-- <li class="controller"><g:link controller="distributor" action="addConditions">Add Conditions</g:link></li> -->
						<li class="controller"><g:link controller="distributor" action="addNewConditions">Add New Conditions</g:link></li>						
						<li class="controller"><g:link controller="distributor" action="list">View/Edit Distributor Data</g:link></li>
						<li class="controller"><g:link controller="distributor" action="importDistributorData">Import New Distributor Data</g:link></li>
						<li class="controller"><g:link controller="freightTransaction" action="importInvoiceData">Import Invoice Data</g:link></li>
						<li class="controller"><g:link controller="freightTransaction" action="displayCalculateFreight">Calculate Freight</g:link></li>
					</g:if>                   
                </ul>
            </div>
        </div>
    </body>
</html>
