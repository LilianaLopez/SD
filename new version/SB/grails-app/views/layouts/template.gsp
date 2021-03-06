<!DOCTYPE html>
<html lang="es">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="Dashboard">
    <meta name="keyword" content="Dashboard, Bootstrap, Admin, Template, Theme, Responsive, Fluid, Retina">
    

    <title>BIBLIOTECA</title>
   
    <!-- Bootstrap core CSS -->

     <asset:stylesheet src="assets/css/bootstrap.css"/>

      <!-- Custom styles for this template -->
      <asset:stylesheet href="assets/css/style.css"/>
      <asset:stylesheet href="assets/css/style-responsive.css"/>

      <!--external css-->

      <asset:stylesheet src="assets/font-awesome/css/font-awesome.css"/>
      <asset:stylesheet src="assets/css/zabuto_calendar.css"/>
      %{--<asset:stylesheet src="assets/js/gritter/css/jquery.gritter.css"/>--}%
      <asset:stylesheet src="assets/lineicons/style.css"/>


  </head>

  <body>

  <section id="container" >
      <!-- **********************************************************************************************************************************************************
      TOP BAR CONTENT & NOTIFICATIONS
      *********************************************************************************************************************************************************** -->
      <!--header start-->
      <header class="header black-bg">
              <div class="sidebar-toggle-box">
                  <div class="fa fa-bars tooltips" data-placement="right" data-original-title="Toggle Navigation"></div>
              </div>
            <!--logo start-->
            <a href="index.html" class="logo"><b>BIBLIOTECA - TOMCAT 1 </b></a>
            <!--logo end-->
            <div class="nav notify-row" id="top_menu">
                <!--  notification start -->
                <ul class="nav top-menu">
                    <!-- settings start -->
                    <li class="dropdown">
                        <a data-toggle="dropdown" class="dropdown-toggle" href="index.html#">
                            <i class="fa fa-tasks"></i>
                            <span class="badge bg-theme">4</span>
                        </a>
                        <ul class="dropdown-menu extended tasks-bar">
                            <div class="notify-arrow notify-arrow-green"></div>
                            <li>
                                <p class="green">You have 4 pending tasks</p>
                            </li>
                            <li>
                                <a href="index.html#">
                                    <div class="task-info">
                                        <div class="desc">DashGum Admin Panel</div>
                                        <div class="percent">40%</div>
                                    </div>
                                    <div class="progress progress-striped">
                                        <div class="progress-bar progress-bar-success" role="progressbar" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100" style="width: 40%">
                                            <span class="sr-only">40% Complete (success)</span>
                                        </div>
                                    </div>
                                </a>
                            </li>
                            <li>
                                <a href="index.html#">
                                    <div class="task-info">
                                        <div class="desc">Database Update</div>
                                        <div class="percent">60%</div>
                                    </div>
                                    <div class="progress progress-striped">
                                        <div class="progress-bar progress-bar-warning" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 60%">
                                            <span class="sr-only">60% Complete (warning)</span>
                                        </div>
                                    </div>
                                </a>
                            </li>
                            <li>
                                <a href="index.html#">
                                    <div class="task-info">
                                        <div class="desc">Product Development</div>
                                        <div class="percent">80%</div>
                                    </div>
                                    <div class="progress progress-striped">
                                        <div class="progress-bar progress-bar-info" role="progressbar" aria-valuenow="80" aria-valuemin="0" aria-valuemax="100" style="width: 80%">
                                            <span class="sr-only">80% Complete</span>
                                        </div>
                                    </div>
                                </a>
                            </li>
                            <li>
                                <a href="index.html#">
                                    <div class="task-info">
                                        <div class="desc">Payments Sent</div>
                                        <div class="percent">70%</div>
                                    </div>
                                    <div class="progress progress-striped">
                                        <div class="progress-bar progress-bar-danger" role="progressbar" aria-valuenow="70" aria-valuemin="0" aria-valuemax="100" style="width: 70%">
                                            <span class="sr-only">70% Complete (Important)</span>
                                        </div>
                                    </div>
                                </a>
                            </li>
                            <li class="external">
                                <a href="#">See All Tasks</a>
                            </li>
                        </ul>
                    </li>
                    <!-- settings end -->
                    <!-- inbox dropdown start-->
                    <li id="header_inbox_bar" class="dropdown">
                        <a data-toggle="dropdown" class="dropdown-toggle" href="index.html#">
                            <i class="fa fa-envelope-o"></i>
                            <span class="badge bg-theme">5</span>
                        </a>
                        <ul class="dropdown-menu extended inbox">
                            <div class="notify-arrow notify-arrow-green"></div>
                            <li>
                                <p class="green">You have 5 new messages</p>
                            </li>
                            <li>
                                <a href="index.html#">
                                    <span class="photo"><img alt="avatar" src="assets/img/ui-zac.jpg"></span>
                                    <span class="subject">
                                    <span class="from">Zac Snider</span>
                                    <span class="time">Just now</span>
                                    </span>
                                    <span class="message">
                                        Hi mate, how is everything?
                                    </span>
                                </a>
                            </li>
                            <li>
                                <a href="index.html#">
                                    <span class="photo"><img alt="avatar" src="assets/img/ui-divya.jpg"></span>
                                    <span class="subject">
                                    <span class="from">Divya Manian</span>
                                    <span class="time">40 mins.</span>
                                    </span>
                                    <span class="message">
                                     Hi, I need your help with this.
                                    </span>
                                </a>
                            </li>
                            <li>
                                <a href="index.html#">
                                    <span class="photo"><img alt="avatar" src="assets/img/ui-danro.jpg"></span>
                                    <span class="subject">
                                    <span class="from">Dan Rogers</span>
                                    <span class="time">2 hrs.</span>
                                    </span>
                                    <span class="message">
                                        Love your new Dashboard.
                                    </span>
                                </a>
                            </li>
                            <li>
                                <a href="index.html#">
                                    <span class="photo"><img alt="avatar" src="assets/img/ui-sherman.jpg"></span>
                                    <span class="subject">
                                    <span class="from">Dj Sherman</span>
                                    <span class="time">4 hrs.</span>
                                    </span>
                                    <span class="message">
                                        Please, answer asap.
                                    </span>
                                </a>
                            </li>
                            <li>
                                <a href="index.html#">See all messages</a>
                            </li>
                        </ul>
                    </li>
                    <!-- inbox dropdown end -->
                </ul>
                <!--  notification end -->
            </div>
            <div class="top-menu">
            	<ul class="nav pull-right top-menu">
                    %{--<li><a class="logout" href="/Sistema-Biblioteca/j_spring_security_logout">Logout</a></li>--}%
                    <li><a class="logout" href="../logoff">Logout</a></li
                </ul>
            </div>
        </header>
      <!--header end-->
      
      <!-- **********************************************************************************************************************************************************
      MAIN SIDEBAR MENU
      *********************************************************************************************************************************************************** -->
      <!--sidebar start-->
      <aside>
          <div id="sidebar"  class="nav-collapse ">
              <!-- sidebar menu start-->
              <ul class="sidebar-menu" id="nav-accordion">
              	  <p class="centered"><a href="${request.contextPath}/profile.html"><img src="${request.contextPath}/theme/assets/img/ui-sam.jpg" class="img-circle" width="60"></a></p>
              	  <h5 class="centered">Administrador</h5>
              	  	
                  <li class="mt">
                      <a class="active" href="\Sistema-Biblioteca">
                          <i class="fa fa-dashboard"></i>
                          <span>Inicio</span>
                      </a>
                  </li>
                  
                    <li class="sub-menu">
                      <a href="javascript:;" >
                          <i class="glyphicon glyphicon-book"></i>
                          <span>Libros</span>
                      </a>
                      <ul class="sub">
                          <li><a  href="/Sistema-Biblioteca/libro/create">Crear Libro</a></li>
                          <li><a  href="/Sistema-Biblioteca/libro/index">Listar libros</a></li>
                          <li><a  href="/Sistema-Biblioteca/autor/index">Listar Autores</a></li>
                          <li><a  href="/Sistema-Biblioteca/categoria/index">Listar categorias de libros</a></li>
                      </ul>
                  </li>
                  

                  <li class="sub-menu">
                      <a href="javascript:;" >
                          <i class="fa fa-book"></i>
                          <span>Entradas</span>
                      </a>
                      <ul class="sub">
                          <li><a  href="/Sistema-Biblioteca/entrada/create">Crear Entrada de Libros</a></li>
                      	  <li><a  href="/Sistema-Biblioteca/entrada">Lista de Entrada de Libros</a></li>
                          <li><a  href="/Sistema-Biblioteca/motivoEntrada/create">Crear Motivo de Entrada</a></li>
                          <li><a  href="/Sistema-Biblioteca/motivoEntrada/index">Lista de Motivos Entrada</a></li>
                      </ul>
                  </li>
                  <li class="sub-menu">
                      <a href="javascript:;" >
                          <i class="glyphicon glyphicon-arrow-up"></i>
                          <span>Salidas</span>
                      </a>
                      <ul class="sub">
                      	  <li><a  href="/Sistema-Biblioteca/salida">Listar Salidas</a></li>
                      	  <li><a  href="/Sistema-Biblioteca/salida/create">Crear Salida</a></li>
                          <li><a  href="/Sistema-Biblioteca/motivoSalida/create">Crear Motivo de Salida</a></li>
                          <li><a  href="/Sistema-Biblioteca/motivoSalida/list">Listar Motivos</a></li>
                      </ul>
                  </li>
                  <li class="sub-menu">
                      <a href="javascript:;" >
                          <i class="fa fa-th"></i>
                          <span>Usuarios</span>
                      </a>
                      <ul class="sub">
                          <li><a  href="/Sistema-Biblioteca/usuario/create">Crear usuario</a></li>
                          <li><a  href="/Sistema-Biblioteca/usuario/index">Lista</a></li>
                      </ul>
                  </li>
                  <li class="sub-menu">
                      <a href="javascript:;" >
                          <i class="fa fa-th"></i>
                          <span>Contacto</span>
                      </a>
                      <ul class="sub">
                          <li><a  href="/Sistema-Biblioteca/contacto/create">Enviar mensaje</a></li>
                      </ul>
                  </li>
              <li class="sub-menu">
                  <a href="javascript:;" >
                      <i class="fa fa-th"></i>
                      <span>Clientes</span>
                  </a>
                  <ul class=" sub">
                      <li><a  href="/Sistema-Biblioteca/cliente">Lista de clientes</a></li>
                      <li><a  href="/Sistema-Biblioteca/cliente/create">Agregar clientes</a></li>
                  </ul>
              </li>
              </ul>
              <!-- sidebar menu end-->
          </div>
      </aside>
      <!--sidebar end-->
      
     
      <section id="main-content">
          <section class="wrapper">

              <div class="row">
                 
                  <g:layoutBody/>
              </div><!--/row -->
          </section>
      </section>
	
		
      <!--main content end-->
      <!--footer start-->
      <footer class="site-footer">
          <div class="text-center">
              2017 - FIUNI
              <a href="index.html#" class="go-top">
                  <i class="fa fa-angle-up"></i>
              </a>
          </div>
      </footer>
      <!--footer end-->
  </section>
  <asset:javascript src="assets/js/chart-master/Chart.js"/>

  <asset:javascript src="assets/js/jquery.js"/>
  <asset:javascript src="jquery-1.8.3.min.js"/>
  <asset:javascript src="assets/js/bootstrap.min.js"/>
  <<asset:javascript src="jquery.dcjqaccordion.2.7.js"/>
  <asset:javascript src="assets/js/jquery.scrollTo.min.js"/>
  <asset:javascript src="assets/js/jquery.nicescroll.js" type="text/javascript"/>
  <asset:javascript src="assets/js/jquery.sparkline.js"/>


  <asset:javascript src="assets/js/common-scripts.js"/>

  <asset:javascript src="assets/theme/assets/js/gritter/js/jquery.gritter.js"/>
  <asset:javascript src="assets/theme/assets/js/gritter-conf.js"/>


  <asset:javascript src="assets/js/sparkline-chart.js"/>
  <asset:javascript src="assets/js/zabuto_calendar.js"/>


  %{-- <script type="application/javascript">

        $(document).ready(function () {
        var unique_id = $.gritter.add({
            // (string | mandatory) the heading of the notification
            title: 'Welcome to Dashgum!',
            // (string | mandatory) the text inside the notification
            text: 'Hover me to enable the Close Button. You can hide the left sidebar clicking on the button next to the logo. Free version for <a href="http://blacktie.co" target="_blank" style="color:#ffd777">BlackTie.co</a>.',
            // (string | optional) the image to display on the left
            image: '${request.contextPath}/theme/assets/img/ui-sam.jpg',
            // (bool | optional) if you want it to fade out on its own or just sit there
            sticky: true,
            // (int | optional) the time you want it to be alive for before fading out
            time: '',
            // (string | optional) the class name you want to apply to that specific message
            class_name: 'my-sticky-class'
        });

        return false;
        });
	</script>
--}%%{--
  <script type="application/javascript">
        $(document).ready(function () {
            $("#date-popover").popover({html: true, trigger: "manual"});
            $("#date-popover").hide();
            $("#date-popover").click(function (e) {
                $(this).hide();
            });
        
            $("#my-calendar").zabuto_calendar({
                action: function () {
                    return myDateFunction(this.id, false);
                },
                action_nav: function () {
                    return myNavFunction(this.id);
                },
                ajax: {
                    url: "show_data.php?action=1",
                    modal: true
                },
                legend: [
                    {type: "text", label: "Special event", badge: "00"},
                    {type: "block", label: "Regular event", }
                ]
            });
        });
        
        
        function myNavFunction(id) {
            $("#date-popover").hide();
            var nav = $("#" + id).data("navigation");
            var to = $("#" + id).data("to");
            console.log('nav ' + nav + ' to: ' + to.month + '/' + to.year);
        }
    </script>--}%



  </body>
</html>
	
	