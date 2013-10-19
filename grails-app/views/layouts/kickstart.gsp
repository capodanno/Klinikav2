<!DOCTYPE html>
<%-- <html lang="${org.springframework.web.servlet.support.RequestContextUtils.getLocale(request).toString().replace('_', '-')}"> --%>
<html lang="${session.'org.springframework.web.servlet.i18n.SessionLocaleResolver.LOCALE'}">

<head>
	<title><g:layoutTitle default="${meta(name:'app.name')}" /></title>
	
    <meta charset="utf-8">
    <meta name="viewport"		content="width=device-width, initial-scale=1.0">
    <meta name="description"	content="Clinic Management System">
    <meta name="author"			content="Ingenium Technologies">
    
	<link rel="shortcut icon"		href="${resource(plugin: 'kickstart-with-bootstrap', dir:'images',file:'favicon.ico')}" type="image/x-icon" />
	
	<link rel="apple-touch-icon"	href="assets/ico/apple-touch-icon.png">
    <link rel="apple-touch-icon"	href="assets/ico/apple-touch-icon-72x72.png"	sizes="72x72">
    <link rel="apple-touch-icon"	href="assets/ico/apple-touch-icon-114x114.png"	sizes="114x114">
	
	<%-- Manual switch for the skin can be found in /view/_menu/_config.gsp --%>
	<link rel="stylesheet" href="${resource(dir: 'css', file: 'bootstrap.min.css')}" type="text/css">
	<link rel="stylesheet" href="${resource(dir: 'css', file: 'bootstrap-responsive.min.css')}" type="text/css">
	<link rel="stylesheet" href="${resource(dir: 'css', file: 'font-awesome.css')}" type="text/css">
	<link rel="stylesheet" href="${resource(dir: 'css', file: 'font-awesome-ie7.css')}" type="text/css">
	<link rel="stylesheet" href="${resource(dir: 'css', file: 'boot-business.css')}" type="text/css">
	<link rel="stylesheet" href="${resource(dir: 'css', file: 'famfamfam.css')}" type="text/css">
	<link rel="stylesheet" href="${resource(dir: 'css', file: 'datepicker.css')}" type="text/css">
	<link rel="stylesheet" href="${resource(dir: 'css', file: 'bootstrap-timepicker.min.css')}" type="text/css">
	<link rel="stylesheet" href="${resource(dir: 'css', file: 'bootstrap-overrides.css')}" type="text/css">
	<link rel="stylesheet" href="${resource(dir: 'css', file: 'jquery-ui-1.8.7.custom.css')}" type="text/css">
	
	<style type="text/css">
		.top
		{
			padding-top: 15px;
		}
		.modalLeft
		{
			padding-left: 45px;
		}
		.topSlider
		{
			padding-top: 30px;
		}
		.alignCenter
		{
			padding-left: 340px;
		}
	</style>
<%--	<r:require modules="jquery"/>--%>
<%--	<r:require modules="bootstrap"/>--%>
<%--	<r:require modules="bootstrap_utils"/>--%>

	<r:layoutResources />
	<g:layoutHead />

	<!-- Le HTML5 shim, for IE6-8 support of HTML elements -->
	<!--[if lt IE 9]>
		<script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
	<![endif]-->

	<%-- For Javascript see end of body --%>
</head>

<body>
<%--	<g:render template="/_menu/navbar"/>														--%>

	<!-- Enable to overwrite Header by individual page -->
<%--	<g:if test="${ pageProperty(name:'page.header') }">--%>
<%--   		<g:pageProperty name="page.header" />--%>
<%--	</g:if>--%>
<%--	<g:else>--%>
<%--		<g:render template="/layouts/header"/>														--%>
<%--	</g:else>--%>

	<!-- Enable to overwrite Header according to user role -->
	<g:render template="/layouts/header"/>	


	<g:render template="/layouts/content"/>														

	<!-- Enable to overwrite Footer by individual page -->
	<g:if test="${ pageProperty(name:'page.footer') }">
	    <g:pageProperty name="page.footer" />
	</g:if>
	<g:else>
		<g:render template="/layouts/footer"/>														
	</g:else>

	<!-- Enable to insert additional components (e.g., modals, javascript, etc.) by any individual page -->
	<g:if test="${ pageProperty(name:'page.include.bottom') }">
   		<g:pageProperty name="page.include.bottom" />
	</g:if>
	<g:else>
		<!-- Insert a modal dialog for registering (for an open site registering is possible on any page) -->
		<g:render template="/_common/modals/registerDialog" model="[item: item]"/>
	</g:else>
	
	<!-- Included Javascript files and other resources -->
	<script type="text/javascript" src="js/jquery.min.js"></script>
    <script type="text/javascript" src="js/bootstrap.min.js"></script>
    <script type="text/javascript" src="js/boot-business.js"></script>	
	<script type="text/javascript" src="js/bootstrap-datepicker.js"></script>
	<script type="text/javascript" src="js/bootstrap-timepicker.min.js"></script>
	<script type="text/javascript" src="js/jquery.js"></script>
	<script type="text/javascript" src="js/jquery.dataTables.js"></script>
	<script type="text/javascript" src="js/TableTools.js"></script>
	<script type="text/javascript" src="js/ZeroClipboard.js"></script>
	<script type="text/javascript" src="js/dataTables.bootstrap.js"></script>
	<script src="js/globalize.js" type="text/javascript"></script>
    <script src="js/globalize.culture.en-US.js" type="text/javascript"></script>
	<script src="js/jquery-1.5.1.min.js" type="text/javascript"></script>
    <script src="js/jquery-ui-1.8.17.min.js" type="text/javascript"></script>
	<script src="js/modernizr-2.0.6-development-only.js" type="text/javascript"></script>
	<script type="text/javascript">
	Globalize.culture("en-US");
    </script>
		
	<r:layoutResources />
</body>

</html>