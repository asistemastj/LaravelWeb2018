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

    <link rel="stylesheet" href="css/noticias/style.css" />
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
            <h1>Noticias</h1>
          </div>
        </div>
      </div>
    </div>
  </div>
  <!--banner Section ends Here -->
  <!--Section area starts Here -->
  <section id="section">
    <!--Section box starts Here -->
      <!-- BEGIN wrapper -->

    <div class="section  team-wrap air-fright storage transport-page">
      <div class="team">
        <div class="container">
          <div class="row">
               <div id="wrapper-list">
                      <!-- BEGIN content -->
                      <div id="content">
                          <!-- begin post -->
                          @foreach($posts as $post)
                          <div class="post">
                              <a href="{{ route('post',$post->slug) }}" style="color: #fff;	text-decoration: none;">
                                           <div class="thumb"><img src="{{asset('storage/'.$post->Imagen)}}" alt="" /></div>
                                  <h2>{{ $post->Titulo }}</h2>
                                  <p class="date-list">Publicado el {{ $post->created_at->toFormattedDateString() }}</p>
                              </a>
                                  {{ $post->Fecha }}
                                  <p>{{ $post->Descripcion }}</p>

                          </div>
                          @endforeach
                          <div class="postnav">
                              {{ $posts->render() }}
                          </div>
                      </div>
                      <!-- END content -->
                      <!-- BEGIN sidebar -->
                      <div id="sidebar">
                          <!-- begin ads -->
                          <div class="ads"> <a href="#"><img src="images/ad125x125.jpg" alt="" /></a> <a href="#"><img src="images/ad125x125.jpg" alt="" /></a> <a href="#"><img src="images/ad125x125.jpg" alt="" /></a> <a href="#"><img src="images/ad125x125.jpg" alt="" /></a> </div>
                          <!-- end ads -->
                          <!-- begin search -->
                          <form class="search" action="#">
                              <input type="text" name="s" id="s" />
                              <button type="submit" ></button>
                          </form>
                          <!-- end search -->
                          <div class="wrapper-list">
                              <!-- begin popular posts -->
                              <h2>Noticias más importantes</h2>
                              <ul>
                                  @foreach($posts as $last)
                                  <li><a href="#">{{ $last->Titulo }}</a></li>
                                  @endforeach
                              </ul>
                              <!-- end popular posts -->
                              <!-- begin flickr photos -->
                              <h2>Algunas fotos</h2>
                              <div class="flickr"> <a href="#"><img src="images/_thumb3.jpg" alt="" /></a> <a href="#"><img src="images/_thumb4.jpg" alt="" /></a> <a href="#"><img src="images/_thumb5.jpg" alt="" /></a> <a href="#"><img src="images/_thumb6.jpg" alt="" /></a> <a href="#"><img src="images/_thumb7.jpg" alt="" /></a> <a href="#"><img src="images/_thumb8.jpg" alt="" /></a> </div>
                              <!-- end flickr photos -->
                              <!-- begin featured video -->
                              <h2>Video Destacado</h2>
                              <div class="video">
                                  <iframe width="100%" height="100%" src="https://www.youtube.com/embed/0tj9l7_uMlc" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>
                              </div>
                              <!-- end featured video -->
                              <!-- begin tags -->
                              <h2>Tags</h2>
                              <div class="tags"> </div>
                              <!-- end tags -->
                              <!-- BEGIN left -->
                              <div class="l sbar">
                                  <!-- begin categories -->
                                  <ho>Categorias</ho>
                                  <ul>
                                      <li><a href="#">Entertainment</a></li>
                                      <li><a href="#">Fashion</a></li>
                                      <li><a href="#">Internet</a></li>
                                      <li><a href="#">Marketing</a></li>
                                      <li><a href="#">Lifestyle</a></li>
                                      <li><a href="#">Make Money</a></li>
                                      <li><a href="#">Online</a></li>
                                      <li><a href="#">Parenting</a></li>
                                  </ul>
                                  <!-- end categories -->
                              </div>
                              <!-- END left -->
                              <!-- BEGIN right -->
                              <div class="r sbar">
                                  <!-- begin archives -->
                                  <h2>Archives</h2>
                                  <ul>
                                      <li><a href="#">August 2008</a></li>
                                      <li><a href="#">July 2008</a></li>
                                      <li><a href="#">June 2008</a></li>
                                      <li><a href="#">May 2008</a></li>
                                      <li><a href="#">April 2008</a></li>
                                      <li><a href="#">March 2008</a></li>
                                  </ul>
                              </div>
                              <!-- END right -->
                          </div>
                      </div>
                      <!-- END sidebar -->
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
