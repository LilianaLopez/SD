<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="Dashboard">
    <meta name="keyword" content="Dashboard, Bootstrap, Admin, Template, Theme, Responsive, Fluid, Retina">

    <title>Sistema Biblioteca - Login </title>

	  <asset:stylesheet src="assets/css/bootstrap.css"/>

	  <!-- Custom styles for this template -->
	  <asset:stylesheet href="assets/css/style.css"/>
	  <asset:stylesheet href="assets/css/style-responsive.css"/>

	  <!--external css-->

	  <asset:stylesheet src="assets/font-awesome/css/font-awesome.css"/>
	  <asset:stylesheet src="assets/css/zabuto_calendar.css"/>
	  <asset:stylesheet src="assets/js/gritter/css/jquery.gritter.css"/>
	  <asset:stylesheet src="assets/lineicons/style.css"/>


  </head>

  <body>

      <!-- **********************************************************************************************************************************************************
      MAIN CONTENT
      *********************************************************************************************************************************************************** -->

	  <div id="login-page">
	  	<div class="container">
	  	
		      <form class="form-login" action='${postUrl}' method='POST' id='loginForm' autocomplete='off'>
                  <h2 class="form-login-heading">Iniciar Sesión</h2>
		        <g:if test='${flash.message}'>
					<div class='login_message'>${flash.message = "Usuario y/o Contraseña incorrectos."}</div>
				</g:if>			
		        
		        <div class="login-wrap">
		            <input type="text" class="form-control" name='username' id='username' placeholder="Usuario" autofocus>
		            <br>
		            <input type="password" class="form-control" placeholder="Contraseña" name='password' id='password'>
		            <label class="checkbox">
		                <span class="pull-right">
		                    <a data-toggle="modal" href="login.html#myModal"> ¿Olvidaste tu contraseña?</a>
		
		                </span>
		            </label>
		            <p id="remember_me_holder">
						<input type='checkbox' class='chk' name='${rememberMeParameter}' id='remember_me' <g:if test='${hasCookie}'>checked='checked'</g:if>/>

					</p>
		            <button class="btn btn-theme btn-block" href="index.html" type="submit"><i class="fa fa-lock"></i>ACEPTAR</button>
		            <hr>
		            
		            <div class="login-social-link centered">
		            <p>o inicia sesión con tus redes sociales</p>
		                <button class="btn btn-facebook" type="submit"><i class="fa fa-facebook"></i> Facebook</button>
		                <button class="btn btn-twitter" type="submit"><i class="fa fa-twitter"></i> Twitter</button>
		            </div>
		            <div class="registration">
		                ¿No tienes una cuenta todavía?<br/>
		                <a class="" href="#">
		                    Crear una cuenta
		                </a>
		            </div>
		
		        </div>
		
		          <!-- Modal -->
		          <div aria-hidden="true" aria-labelledby="myModalLabel" role="dialog" tabindex="-1" id="myModal" class="modal fade">
		              <div class="modal-dialog">
		                  <div class="modal-content">
		                      <div class="modal-header">
		                          <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
		                          <h4 class="modal-title">¿Olvidaste tu contraseña ?</h4>
		                      </div>
		                      <div class="modal-body">
		                          <p>Ingresa tu dirección de e-mail para recuperar tu contraseña.</p>
		                          <input type="text" name="email" placeholder="Email" autocomplete="off" class="form-control placeholder-no-fix">
		
		                      </div>
		                      <div class="modal-footer">
		                          <button data-dismiss="modal" class="btn btn-default" type="button">Cancelar</button>
		                          <button class="btn btn-theme" type="button">Aceptar</button>
		                      </div>
		                  </div>
		              </div>
		          </div>
		          <!-- modal -->
		
		      </form>	  	
	  	
	  	</div>
	  </div>


  <asset:javascript src="assets/js/chart-master/Chart.js"/>
  <asset:javascript src="assets/js/jquery.js"/>
  <asset:javascript src="jquery-1.8.3.min.js"/>
  <asset:javascript src="assets/js/bootstrap.min.js"/>
  <asset:javascript src="assets/js/jquery.dcjqaccordion.2.7.js"/>
  <asset:javascript src="assets/js/jquery.scrollTo.min.js"/>
  <asset:javascript src="assets/js/jquery.nicescroll.js"/>
  <asset:javascript src="assets/js/jquery.sparkline.js"/>


  <!--common script for all pages-->
  <asset:javascript src="assets/js/common-scripts.js"/>
  <asset:javascript src="assets/js/gritter/js/jquery.gritter.js"/>
  <asset:javascript src="assets/js/gritter-conf.js"/>
  <asset:javascript src="assets/js/sparkline-chart.js"/>
  <asset:javascript src="assets/js/zabuto_calendar.js"/>



    <!-- js placed at the end of the document so the pages load faster -->
    <script src="${request.contextPath}/theme/assets/js/jquery.js"></script>
    <script src="${request.contextPath}/theme/assets/js/bootstrap.min.js"></script>

    <!--BACKSTRETCH-->
    <!-- You can use an image of whatever size. This script will stretch to fit in any screen size.-->
    <script type="text/javascript" src="assets/js/jquery.backstretch.min.js"></script>
    <script>
        $.backstretch("${request.contextPath}/theme/assets/img/login-bg.jpg", {speed: 500});
    </script>


  </body>
</html>





