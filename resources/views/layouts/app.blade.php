<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="csrf-token" content="{{ csrf_token() }}">

    <title>{{ config('app.name', 'Laravel') }}</title>

    <!-- Fonts -->
    <link rel="preconnect" href="https://fonts.bunny.net">
    <link href="https://fonts.bunny.net/css?family=figtree:400,500,600&display=swap" rel="stylesheet" />
    <!-- Icon -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.0/font/bootstrap-icons.css" />
    <!-- Jquery-->
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    @yield('script')
    <!-- Vite -->
    @vite(['resources/css/app.css', 'resources/js/app.js'])

</head>
<style>
    @yield('style')
</style>

<body class="font-sans antialiased max-w-8xl mx-auto">
    @include('layouts.sidebar')
</body>

</html>