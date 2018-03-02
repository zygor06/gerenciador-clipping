<!doctype html>
<html lang="{{ app()->getLocale() }}">
    <head>
        @include('includes.head')
    </head>
    <body>

        <header>
            @include('includes.header')
        </header>

        <div id="main">

            @yield('content')

        </div>

            @include('includes.scripts')
            @include('includes.footer')

    </body>
</html>