<html>
<head>
    <title>Homepage</title>
    <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
</head>
<body>

    <div class="container" style="border-style:dotted;" >
        <br><br>
        <div class="row">
        @foreach($posts as $post)
            <div class="col-md-3">
              
                 
                    <span>{{ $post->Titulo }}</span>
                    <br><span>{{ $post->Descripcion }}</span>
                    <br><span>{{ $post->Contenido }}</span>
                    <br><span>{{ $post->users }}</span>
                
            </div>
        @endforeach
        </div>
    </div>

</body>
</html>