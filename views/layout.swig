<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8" />
        <title>{{ title }}</title>
         <link rel="icon" type="image/svg+xml" href="{{ asset('@website:resources/images/logo.svg') }}"/>
         <link rel="alternate icon" type="image/png" href="{{ asset('@website:resources/images/logo.png') }}"/>
        {% for url in stylesheet('default') %}
            <link rel="stylesheet" type="text/css" href="{{ url }}"/>
        {% endfor %}
    </head>
    <body>
        {% block body %}{% endblock %}
    </body>
</html>
