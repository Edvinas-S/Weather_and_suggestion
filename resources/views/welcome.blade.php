<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Weather</title>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="css/app.css">
        <script src="js/app.js" defer></script>
        <script src="https://cdn.jsdelivr.net/npm/places.js@1.19.0"></script>
    </head>
    <body>
        <div id="app">
            <weather/>
        </div>
    </body>
</html>
