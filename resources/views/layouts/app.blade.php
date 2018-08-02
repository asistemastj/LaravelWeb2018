<!DOCTYPE html>
<html lang="{{ app()->getLocale() }} ">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
    <title>{{ config('app.name', 'Laravel') }}</title>
    <link rel="shortcut icon" type="image/x-icon" href="{{ asset('favicon.ico') }}">
    @yield('head')
</head>
<body>


    @yield('content')
    @yield('javascript')

</body>
</html>
