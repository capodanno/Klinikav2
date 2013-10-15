<header>
	<div class="navbar navbar-fixed-top">
        <div class="navbar-inner">
          <div class="container">
            <a href="${createLink(uri: '/')}" class="brand brand-bootbus"><img src="${resource(dir: 'images', file: 'KLINIKA LOGO.png')}"></a>
            <!-- Below button used for responsive navigation -->
            <button type="button" class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
              <span class="icon-bar"></span>
              <span class="icon-bar"></span>
              <span class="icon-bar"></span>
            </button>
            <!-- Start: Primary navigation -->
            <div class="nav-collapse collapse">
            	<g:render template="/_menu/signIn"/>
            </div>
          </div>
        </div>
      </div>
</header>
