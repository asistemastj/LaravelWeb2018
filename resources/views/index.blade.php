<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
        <title>Transportes Joselito</title>
        <link rel="shortcut icon" type="image/x-icon" href="favicon.ico">

        <!-- Google Font -->
        <link href='http://fonts.googleapis.com/css?family=Raleway:400,500,600,700,800,900' rel='stylesheet' type='text/css'>
        <link href='http://fonts.googleapis.com/css?family=Karla:400,700italic,700,400italic' rel='stylesheet' type='text/css'>
        <!-- Font Awesome -->
        <link rel="stylesheet" href="css/font-awesome.min.css" />

        <!-- Bootstrap -->
        <link rel="stylesheet" href="css/bootstrap.css" />

        <!-- REVOLUTION BANNER CSS SETTINGS -->
        <link rel="stylesheet" type="text/css" href="rs-plugin/css/settings.css" media="screen" />
        <link rel="stylesheet" type="text/css" href="css/dropdown.css" />

        <link rel="stylesheet" href="css/owl.carousel.css" />
        <link rel="stylesheet" href="css/global.css" />
        <link rel="stylesheet" href="css/style.css" />
        <link rel="stylesheet" href="css/responsive.css" />

        <link href="css/skin.less" rel="stylesheet/less">



    </head>
    <body>
        <!-- Loader Starts here -->
        <div class="loader-block">
            <div class="loader">
                Cargando...
            </div>
        </div>
        <!-- Loader Ends here -->




        <!--Wrapper Section Start Here -->
        <div id="wrapper" class="homepage homepage-1">
            <!--header Section Start Here -->
            @include('partials.nav')
            <!--header Section Ends Here -->
            <!--banner Section starts Here -->
            @include('partials.slider')
            <!--banner Section ends Here -->
            <!--Section area starts Here -->
            <section id="section">
                <!--Section box starts Here -->
                <div class="section">
                    <div class="services">
                        <div class="container">
                            <div class="row">
                                <div class="col-xs-12">
                                    <div class="heading">
                                        <span>Servicio de Carga</span>
                                        <h2>NUESTRO SERVICIO</h2>
                                    </div>
                                </div>
                            </div>
                            <div id="services-slides" class="services-slider">
                                @foreach($serv as $serv)
                                <div class="slides-tab zoom">
                                    <figure>
                                        <a href="{{route('servicios')}}"><img src="{{asset('storage/'.$serv->Image)}}" alt="" /></a>
                                    </figure>
                                    <div class="slides-text">
                                        <h4><a href="{{route('servicios')}}">{{ $serv->Titulo }} </a></h4>
                                        <a href="{{route('servicios')}}" class="read-more">leer más <span>></span></a>
                                    </div>
                                </div>
                                @endforeach
                            </div>
                        </div>
                    </div>
                    <div class="features">
                        <div class="container">
                            <div class="row">
                                <div class="col-xs-12 col-sm-4">
                                    <div class="features-text">
                                        <div class="heading">
                                            <span>Ventajas Competitivas</span>
                                            <h3>OFRECEMOS UNA SOLUCIÓN RÁPIDA
                                                Y POTENTE PARA EL TRANSPORTE</h3>
                                        </div>

                                        <p>
                                            Rastreo satelital GPS de cada una de nuestras unidades.
                                            24 horas de video vigilancia en nuestras bases y almacenes, 
                                            CCTV.Supervisores y controladores pendientes de su servicio.
                                        </p>
                                        <a href="{{route('servicios')}}" class="services-link button">Nuestros Servicios</a>
                                    </div>
                                </div>
                                <div class="col-xs-12 col-sm-8 custom-padding">
                                    <div class="row">
                                        <div class="col-xs-12 col-sm-6">
                                            <div class="features-tab">

                                                <i class="icon-truck"></i>
                                                <div class="tab-text">
                                                    <h5>CARGA MÁS RÁPIDA</h5>
                                                    <p>

                                                    </p>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-xs-12 col-sm-6">
                                            <div class="features-tab">
                                                <i class="icon-globe"></i>
                                                <div class="tab-text">
                                                    <h5>LLEGAMOS A CUALQUIER LUGAR DEL PERÚ</h5>
                                                    <p>

                                                    </p>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-xs-12 col-sm-6">
                                            <div class="features-tab">
                                                 <i class="icon-plane"></i>
                                                <div class="tab-text">
                                                    <h5>ENVÍO POR TIERRA</h5>
                                                    <p>

                                                    </p>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-xs-12 col-sm-6">
                                            <div class="features-tab">
                                                <i class="icon-clock"></i>
                                                <div class="tab-text">
                                                    <h5>ENVÍOS A TIEMPO</h5>
                                                    <p>

                                                    </p>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="about">
                        <div class="figure parallax3" >

                        </div>
                        <div class="transport-king">
							<div class="about-us" >
								<div class="description">
									<div class="heading">
                                        <span>Nuestra Misión y Visión</span>
                                         <h3>Misión</h3>
									</div>
									<p style="font-size: 20px;">
                                        "Ser reconocidos en el medio como una empresa líder e innovadora en el transporte terrestre,
                                        enfocada al logro basada en la mejora continua y manteniendo este compromiso con nuestros
                                        clientes, medio ambiente, trabajadores y accionistas."
                                    </>
									</p>
								</div>
							</div>
                            <div class="testimonial-section">
                                <div class="about-us" style="background:#FFF">
                                    <div class="description">
                                    <div class="heading">
                                        <h3 style="color:#000000">Visión</h3>
                                    </div>
                                    <footer class="mission">
                                        <p style="font-size: 20px;">
                                            “Satisfacer las necesidades de nuestros clientes ofreciendo el mejor servicio de transporte de
                                            mercadería a nivel nacional apoyada de una gestión responsable y eficiente de nuestros servicios.”

                                        </p>
                                    </footer>
                                    </div>
                                </div>
                            </div>
                    </div>
                    </div>
                    <div class="news">
                        <div class="container">
                            <div class="row">
                                <div class="col-xs-12 center">
                                    <div class="heading">
                                        <span>DESDE NUESTRO BLOG</span>
                                        <h2>ÚLTIMAS NOTICIAS</h2>
                                    </div>
                                    <div class="design-line">
                                        <span class="design"></span>
                                    </div>
                                </div>
                               <div class="news-section">
                                    @foreach($posts as $post)
                                       <div class="col-xs-12 col-sm-4">
                                        <div class="slides-tab zoom">
                                            <figure>
                                                <img src="{{asset('storage/'.$post->Imagen)}}" alt="" width="359" height="269.5">
                                                <div class="date">
                                                    <small>{{ $post->created_at->toFormattedDateString() }}</small>
                                                </div>
                                            </figure>
                                            <div class="slides-text">
                                                <h5>{{ $post->Titulo }}</h5>
                                                <p>
                                                    {{ str_limit($post->Descripcion, 50) }}
                                                </p>
                                                <a href="#" class="doe">JOHNATHAN DOE</a>
                                                <a href="{{ route('post',$post->slug) }}" class="comments">Leer más</a>
                                            </div>
                                        </div>
                                    </div>
                                    @endforeach
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="testimonial">
                        <div class="container">
                            <div class="row">
                                <div class="col-xs-12 center">
                                    <div class="heading">
                                        <span>Empresas que confían en nosotros</span>
                                        <h2>colaboradores</h2>
                                    </div>
                                    <div class="design-line">
                                        <span class="design"></span>
                                    </div>
                                </div>
                            </div>
                            <div class="testimonial-text" id="testimonial-text">
                                @foreach($col as $col)
                                <div class="feedback">
                                    <blockquote class="custom-quote">
                                       <center>
                                            <p>
                                                <img src="{{asset('storage/'.$col->Image)}}" alt="" height="100%"/>
                                            </p>
                                        </center>
                                    </blockquote>
                                </div>
                                @endforeach
                             </div>
                    </div>
                    </div>
                    @include('partials.banner')
                </div>
                <!--Section box ends Here -->
            </section>
            <!--Section area ends Here -->
            <!--Footer area starts Here -->
            @include('partials.footer')
            <!--Footer area ends Here -->
        </div>
        <!--Wrapper Section Ends Here -->

        <script type="text/javascript" src="js/jquery-1.11.3.min.js"></script>
        <script type="text/javascript" src="js/less.js"></script>
        <script type="text/javascript" src="js/owl.carousel.js"></script>
        <script type="text/javascript" src="js/jquery.selectbox-0.2.min.js"></script>

        <!--Parrallax -->
        <script type="text/javascript" src="js/parallax.js"></script>

        <!-- jQuery REVOLUTION Slider  -->
        <script type="text/javascript" src="js/jquery.themepunch.tools.min.js"></script>
        <script type="text/javascript" src="js/jquery.themepunch.revolution.min.js"></script>
        <script type="text/javascript" src="js/revolution.js"></script>

        <script src="js/script.js" type="text/javascript"></script>
        <script type="text/javascript" src="js/site.js"></script>

    </body>
</html>