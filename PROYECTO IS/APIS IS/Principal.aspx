<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Principal.aspx.cs" Inherits="APIS_IS.Principal" %>


<!DOCTYPE HTML>
<html lang="en">

<head>
    <meta charset="utf-8">
    <title>API REST</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <link href="css/bootstrap-responsive.css" rel="stylesheet">
    <link href="css/style.css" rel="stylesheet">
    <link href="color/default.css" rel="stylesheet">
    <link rel="shortcut icon" href="img/favicon.ico">
</head>

<body>
    <!-- navbar -->
    <div class="navbar-wrapper">
        <div class="navbar navbar-inverse navbar-fixed-top">
            <div class="navbar-inner">
                <div class="container">
                    <!-- Responsive navbar -->
                    <a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
                        <span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span>
                    </a>
                    <h1 class="brand"><a href="Principal.aspx">API REST PROYECTO IS</a></h1>
                    <!-- navigation -->
                    <nav class="pull-right nav-collapse collapse">
                        <ul id="menu-main" class="nav">
                            <li><a title="Quienes Somos" href="#nosotros">Quienes Somos</a></li>
                            <li><a title="usuario" href="../usuario/Index">Usuario</a></li>
                            <li><a title="registro" href="../registro/Index">Registro Usuario</a></li>
                            <li><a title="servicio" href="../servicio/Index">Pago de Servicios</a></li>
                            <li><a title="Contactanos" href="#Contacto">Contactanos</a></li>
                        </ul>
                    </nav>
                </div>
            </div>
        </div>
    </div>
    <!-- Header area -->
    <div id="header-wrapper" class="header-slider">
        <header class="clearfix">
            <div class="logo">
                <img src="img/logopdp.png" alt="" />
            </div>
            <div class="container">
                <div class="row">
                    <div class="span12">
                        <div id="main-flexslider" class="flexslider">
                            <ul class="slides">
                                <li>
                                    <p class="home-slide-content">
                                        Banca <strong>en</strong>linea
                                    </p>
                                </li>
                                <li>
                                    <p class="home-slide-content">
                                     <strong>Ingeniería de Software</strong>
                                    </p>
                                </li>
                            </ul>
                        </div>
                        <!-- end slider -->
                    </div>
                </div>
            </div>
        </header>
    </div>
    <!-- spacer section -->
    <section class="spacer green">
        <div class="container">
            <div class="row">
                <div class="span6 alignright flyLeft">
                    <blockquote class="large">
                        Se debe esperar en Dios y esperar de Dios, como el labrador que tiene paciencia para esperar la cosecha<cite>George Muller</cite>
                    </blockquote>
                </div>
                <div class="span6 aligncenter flyRight">
                    <i class="icon-coffee icon-10x"></i>
                </div>
            </div>
        </div>
    </section>
    <!-- end spacer section -->
    <!-- section: team -->
    <section id="nosotros" class="section">
        <div class="container">
            <h4>Quienes Somos</h4>
            <div class="row">
                <div class="span12">
                    <div>
                        <h2>Nosotros vivimos a traves de la gracia de Dios y la fe en Jesucristo, nuestro <strong>Señor</strong></h2>
                        <p>
                            Somos una iglesia fundada por un gran hombre de Dios con una vision de ver la palabra de Dios predicada en cada
                            rincon de Guatemala, nuestro fundador "Chema" Muñoz (QDEP) vivio para la evagelizacion y dejo un gran legado que
                            sus dos hijos, Josue y Benjamin, han extendido.
                            Hoy en dia existen 2,300 iglesias en toda Guatemala, y estamos presentes en Centroamerica y Mexico.
                            Guiados por la gracia y misericordia de Dios, seguimos con la vision de extender la predicacion de la Palabra.
                        </p>
                    </div>
                </div>
                <div class="span12">
                    <div class="aligncenter">
                        <h2>VISION</h2>
                        <p>
                            Levantar iglesias y ministros que crean y practiquen los cinco ministerios para expandir el Reino de Dios en Guatemala y las naciones.
                            Asi como esta establecido en Efecios 4:11-15 "Y el mismo construyo a unos , apostoles; a otros profetas; a otros evangelistas; a otros pastores
                            y maestros, a fin de perfeccionar a los santos para obra del ministerio, para la edificacion del cuerpo de Cristo…" En 1ra de Corintios 2:27-30
                            tambien vemos la importancia de los ministerios y los dones espirituales… "Los que hacen Milagros (evangelistas) , los que sanan (oracion y ayuno),
                            los que ayudan (personal de administraciony visitacion) , los que tienen don de lenguas…"
                        </p>

                        <h2>MISION</h2>

                        <p>
                            Somos una iglesia dedicada a formar equipar y discipulos para la obra del ministerio, en cumplimiento con la vision especifica de la iglesia:
                            <br /> 1.Alcanzar, a los perdidos, inconversos, incredulous, a los pueblos no alcanzados.
                            <br />2.Bendecir, a la iglesia, por medio de la palabra, visitacion, coordinacion de los ministerios, potencial de cada membro de la iglesia y sus familias.
                            <br />3.Consolidar, a cada miembro como una persona util en el Reino de Dios, incluyendola en cada red de la Iglesia.
                            <br />4.Discipular, haciendo de cada miembro, un verdadero discipulo, para que a su vez forme otros.
                            <br />5.Enviar, enviandoles a formar nuevas iglesias en Guatemala y e todo el mundo
                        </p>
                    </div>
                </div>
            </div>
        </div>
        <!-- /.container -->
    </section>
    <!-- end section: team -->
    <!-- section: services -->
    <section id="sedes" class="section orange">
        <div class="container">
            <h4>Sede Central</h4>
            <!-- Four columns -->
            <div class="row">
                <div class="aligncenter">
                    
                        <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3790.1005624518157!2d-90.52431268521039!3d14.629026389784391!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x8589a2212cfe7d33%3A0x409ca5671b522d82!2sIglesia%20Central%20del%20Pr%C3%ADncipe%20de%20Paz!5e1!3m2!1ses-419!2sgt!4v1579284306746!5m2!1ses-419!2sgt" width="800" height="600" frameborder="0" style="border:0;" allowfullscreen=""></iframe>
                    
                    </div>
                </div>

        </div>
    </section>
    <!-- end section: services -->
    <!-- spacer section -->
    <section class="spacer bg3">
        <div class="container">
            <div class="row">
                <div class="span12 aligncenter flyLeft">
                    <blockquote class="large">
                        Dios tiene dos tronos. Uno en lo más alto de los cielos y otro en el más humilde de los corazones<cite>D.L. Moody.</cite> 
                    </blockquote>
                </div>
                <div class="span12 aligncenter flyRight">
                    <i class="icon-rocket icon-10x"></i>
                </div>
            </div>
        </div>
    </section>
    <!-- end spacer section -->
   

    <!-- end spacer section -->
    <!-- section: contact -->
    
    <a href="#" class="scrollup"><i class="icon-angle-up icon-square icon-bgdark icon-2x"></i></a>
    <script src="js/jquery.js"></script>
    <script src="js/jquery.scrollTo.js"></script>
    <script src="js/jquery.nav.js"></script>
    <script src="js/jquery.localScroll.js"></script>
    <script src="js/bootstrap.js"></script>
    <script src="js/jquery.prettyPhoto.js"></script>
    <script src="js/isotope.js"></script>
    <script src="js/jquery.flexslider.js"></script>
    <script src="js/inview.js"></script>
    <script src="js/animate.js"></script>
    <script src="js/custom.js"></script>
    <script src="contactform/contactform.js"></script>

</body>

</html>>


