<html>
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="css/slider.css">
</head>
<body>
<!-- Slider -->
<div id="slider">
    <div class="slides">
        @foreach($ban as $ban)
        <div class="slider">
            <div class="legend"></div>
            <div class="content">
                <div class="content-txt">
                    <h1>Lorem ipsum dolor</h1>
                    <h2>Nam ultrices pellentesque facilisis. In semper tellus mollis nisl pulvinar vitae vulputate lorem consequat. Fusce odio tortor, pretium sit amet auctor ut, ultrices vel nibh.</h2>
                </div>
            </div>
            <div class="image">
                <img src="{{asset('storage/'.$ban->Image)}}" width="100%" height="110%" >
            </div>
        </div>
        @endforeach
    </div>
    <div class="switch">
        <ul>
            <li>
                <div class="on"></div>
            </li>
            <li></li>
            <li></li>
            <li></li>
        </ul>
    </div>
</div>
</body>
</html>
