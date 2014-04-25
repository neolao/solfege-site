{% extends 'layout.swig' %}

{% block body %}
<article>
    <header>
        <h1>
            <svg width="400" height="100" viewBox="0 0 400 100">
                <text x="90" y="55">Sol</text>
                <text x="200" y="55">egeJS</text>
                <symbol id="logo">
                    <line x1="30" y1="0" x2="30" y2="70" stroke="black" stroke-width="2" />
                    <circle cx="16" cy="70" r="15" />
                    <path d="M 30,0 q 5,25 20,25 Q 31,30 31,20" stroke="black" stroke-width="2"/>
                </symbol>
                <use xlink:href="#logo" x="152" y="0"/>
                SolfegeJS
            </svg>
        </h1>
        <h2>The modular framework for NodeJS</h2>
    </header>


    <section>
        <h1>Introduction</h1>
        <p>
            SolfegeJS provides a modular mecanism to build <a href="#application">applications</a>.
            It helps to initialize and communicate with <a href="#bundle">bundles</a> that contain all the logic and resources.
        </p>
        <p>
            The framework works with Javascript Harmony.
            The core is designed with generators and the <a href="#workflow">workflow</a> avoids callbacks.
        </p>
    </section>


    <section id="application">
        <h1>Application</h1>

        <figure>
            <svg width="400" height="150" viewBox="0 0 400 150">
                <!-- Lines -->
                <line class="figure-line" x1="200" y1="51" x2="200" y2="100"/>
                <line class="figure-line" x1="50" y1="75" x2="350" y2="75"/>
                <line class="figure-line" x1="50" y1="75" x2="50" y2="100"/>
                <line class="figure-line" x1="350" y1="75" x2="350" y2="100"/>

                <!-- Application -->
                <rect class="figure-application" width="200" height="50" x="100" y="1"/>
                <text text-anchor="middle" x="200" y="30">Application</text>

                <!-- Bundle A -->
                <rect class="figure-bundle" width="100" height="50" x="0" y="99"/>
                <text text-anchor="middle" x="50" y="130">Bundle A</text>

                <!-- Bundle B -->
                <rect class="figure-bundle" width="100" height="50" x="150" y="99"/>
                <text text-anchor="middle" x="200" y="130">Bundle B</text>

                <!-- Bundle C -->
                <rect class="figure-bundle" width="100" height="50" x="300" y="99"/>
                <text text-anchor="middle" x="350" y="130">Bundle C</text>
            </svg>
        </figure>

        <p>
            The application is the container that contain bundles.
            It is used to initialize, configure and run bundles.
        </p>
        <p>
            It also provides a way of communicating between bundles via internal URIs.
        </p>
    </section>


    <section id="bundle">
        <h1>Bundle</h1>
    </section>


    <section id="workflow">
        <h1>Workflow</h1>
    </section>


    <section id="examples">
        <h1>Examples</h1>
    </section>

</article>
{% endblock %}
