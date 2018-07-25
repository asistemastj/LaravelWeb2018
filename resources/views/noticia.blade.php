<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
    <title>Noticias | Transportes Joselito</title>
    <link rel="shortcut icon" type="image/x-icon" href="favicon.ico">
    <!-- Google Font -->
    <link href='http://fonts.googleapis.com/css?family=Raleway:400,500,600,700,800,900' rel='stylesheet' type='text/css'>
    <link href='http://fonts.googleapis.com/css?family=Karla:400,700italic,700,400italic' rel='stylesheet' type='text/css'>
    <!-- Font Awesome -->
    <link rel="stylesheet" href="css/font-awesome.min.css" />
    <!-- Bootstrap -->
    <link rel="stylesheet" href="css/bootstrap.css" />
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
    <div class="loader"> Loading... </div>
</div>
<!-- Loader Ends here -->
<!--Wrapper Section Start Here -->
<div id="wrapper" class="homepage common-page about-us-page about">
    <!--header Section Start Here -->
@include('partials.nav')
<!--header Section Ends Here -->
    <!--banner Section starts Here -->
    <div class="banner spacetop">
        <div class="banner-image-plane parallax"> </div>
        <div class="banner-text">
            <div class="container">
                <div class="row">
                    <div class="col-xs-12">
                        <h1>noticias</h1>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--banner Section ends Here -->
    <!--Section area starts Here -->
    <section id="section">
        <!--Section box starts Here -->
        <div class="section  team-wrap air-fright storage transport-page">
            <div class="team">

                <div class="container">
                    <div class="row">
                        <div class="col-md-800 col-sm-80 col-xs-200">
                            <div class="heading"> <span>Noticias</span>
                            </div>

                                <table border="0" width="100%" height="100%" style="border-collapse: separate;border-spacing: 10px 5px;">
                                    <tr >
                                        <td colspan="2">
                                            <div class="heading">
                                                <h2 class="h3">{{ $post->Titulo }}</h2>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td width="35%" >
                                            <div class="air-fright-img-part"> <img src="{{asset('storage/'.$post->Imagen)}}">
                                            </div>
                                        </td>
                                        <td align="justify" >
                                            <div class="service-list-wrap">
                                                {!! $post->Contenido !!}
                                            </div>
                                        </td>
                                    </tr>
                                </table>
                        </div>
                    </div>
                </div>
            </div>
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
<!-- REVOLUTION BANNER CSS SETTINGS -->
<script src="js/script.js" type="text/javascript"></script>
<script type="text/javascript" src="js/site.js"></script>
</body>
</html>