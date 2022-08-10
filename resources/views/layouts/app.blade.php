<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="csrf-token" content="{{ csrf_token() }}">

        <title>Harry Jeon &ndash;artist</title>
        <!-- Primary Meta Tags -->
        <meta name="title" content="Harry Jeon - artist">
        <meta name="description" content="Portfolio of South Korean artist Harry Jeon - art, media, photography, installations and objects">

        <!-- Open Graph / Facebook -->
        <meta property="og:type" content="website">
        <meta property="og:url" content="https://harryjeon.com/">
        <meta property="og:title" content="Harry Jeon - artist">
        <meta property="og:description" content="Portfolio of South Korean artist Harry Jeon - art, media, photography, installations and objects">

        <!-- Twitter -->
        <meta property="twitter:url" content="https://harryjeon.com/">
        <meta property="twitter:title" content="Harry Jeon - artist">
        <meta property="twitter:description" content="Portfolio of South Korean artist Harry Jeon - art, media, photography, installations and objects">

        {{--
        <!-- Fonts -->
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Gowun+Dodum&family=Roboto+Slab:wght@500&family=Karla:wght@400;600&display=swap" rel="stylesheet">
        --}}
        <!-- Styles -->
        <link rel="stylesheet" href="{{ mix('css/app.css') }}">

        @livewireStyles

        <style>
            main {
                animation: fadeInAnimation ease 1s;
                animation-iteration-count: 1;
                animation-fill-mode: forwards;
            }

            @keyframes fadeInAnimation {
                0% {
                    opacity: 0;
                }
                100% {
                    opacity: 1;
                }
            }
        </style>

        <!-- Scripts -->
        <script src="{{ mix('js/app.js') }}" defer></script>
    </head>
    <body class="font-sans antialiased">
        <div class="min-h-screen bg-white flex flex-col lg:flex-row">
            <nav class="p-8 lg:p-12 w-full lg:w-64">
                @livewire('navigation')
            </nav>

            <main class="flex-1">
                <!-- Page Content -->
                {{ $slot }}
            </main>
        </div>

        @stack('modals')

        @livewireScripts
    </body>
</html>
