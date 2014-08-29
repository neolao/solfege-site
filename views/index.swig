{% extends 'layout.swig' %}

{% block body %}
<article>
    <header>
        <h1>
            <svg width="400" height="100" viewBox="0 0 400 100">
                <text x="90" y="55">Solfege</text>
                <text x="300" y="55">S</text>
                <symbol id="logo">
                    <line x1="30" y1="0" x2="30" y2="70" stroke="black" stroke-width="2" />
                    <circle cx="16" cy="70" r="15" />
                    <path d="M 30,0 q 5,25 20,25 Q 31,30 31,20" stroke="black" stroke-width="2"/>
                </symbol>
                <use xlink:href="#logo" x="250" y="0"/>
                SolfegeJS
            </svg>
        </h1>
        <h2>The modular framework for NodeJS</h2>
    </header>

    <p class="main-links">
        <a class="button-source" href="https://github.com/neolao/solfege">Source (version 1.3.5)</a>
    </p>

    <section id="introduction">
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

        <figure>
            <svg width="400" height="170" viewBox="0 0 400 170">
                <!-- Lines -->
                <line class="figure-line" x1="50" y1="25" x2="50" y2="145"/>
                <line class="figure-line" x1="350" y1="25" x2="350" y2="85"/>
                <line class="figure-line" x1="50" y1="85" x2="350" y2="85"/>
                <line class="figure-line" x1="50" y1="145" x2="200" y2="145"/>

                <!-- Bundle A -->
                <rect class="figure-bundle" width="100" height="50" x="0" y="0"/>
                <text text-anchor="middle" x="50" y="30">Bundle A</text>

                <!-- Bundle B -->
                <rect class="figure-bundle" width="100" height="50" x="300" y="0"/>
                <text text-anchor="middle" x="350" y="30">Bundle B</text>

                <!-- Bundle C -->
                <rect class="figure-bundle" width="100" height="50" x="150" y="60"/>
                <text text-anchor="middle" x="200" y="90">Bundle C</text>

                <!-- Bundle D -->
                <rect class="figure-bundle" width="100" height="50" x="150" y="120"/>
                <text text-anchor="middle" x="200" y="150">Bundle D</text>
            </svg>
        </figure>



        <p>
            A bundle is a structured set of files that implements a single feature.
        </p>
        <p>
            It can be independent or it may need other bundles.
        </p>
    </section>


    <section id="workflow">
        <h1>Workflow</h1>

        <figure>
            <svg width="460" height="500" viewBox="0 0 460 500">
                <!-- Lines -->
                <line class="figure-line-dash" x1="50" y1="25" x2="50" y2="500"/>
                <line class="figure-line-dash" x1="170" y1="25" x2="170" y2="500"/>
                <line class="figure-line-dash" x1="290" y1="25" x2="290" y2="500"/>
                <line class="figure-line-dash" x1="410" y1="25" x2="410" y2="500"/>

                <!-- main.js -->
                <rect class="figure-script" width="100" height="50" x="0" y="0"/>
                <text text-anchor="middle" x="50" y="30">main.js</text>

                <!-- Application -->
                <rect class="figure-application" width="100" height="50" x="120" y="0"/>
                <text text-anchor="middle" x="170" y="30">Application</text>

                <!-- Bundle A -->
                <rect class="figure-bundle" width="100" height="50" x="240" y="0"/>
                <text text-anchor="middle" x="290" y="30">Bundle A</text>

                <!-- Bundle C -->
                <rect class="figure-bundle" width="100" height="50" x="360" y="0"/>
                <text text-anchor="middle" x="410" y="30">Bundle C</text>

                <!-- Action: addBundle 1 -->
                <text text-anchor="middle" x="110" y="90">addBundle()</text>
                <text text-anchor="middle" x="230" y="120">register</text>
                <line class="figure-line-action" x1="50" y1="100" x2="170" y2="100"/>
                <polygon class="figure-line-action" points="160,97 170,100 160,103"/>
                <line class="figure-line-action" x1="170" y1="130" x2="290" y2="130"/>
                <polygon class="figure-line-action" points="280,127 290,130 280,133"/>
                <line class="figure-line-action" x1="50" y1="160" x2="290" y2="160"/>
                <polygon class="figure-line-action" points="60,157 50,160 60,163"/>
                <rect class="figure-block-action" width="10" height="60" x="170" y="100"/>
                <rect class="figure-block-action" width="10" height="30" x="290" y="130"/>

                <!-- Action: addBundle 2 -->
                <text text-anchor="middle" x="110" y="210">addBundle()</text>
                <text text-anchor="middle" x="230" y="240">register</text>
                <line class="figure-line-action" x1="50" y1="220" x2="170" y2="220"/>
                <polygon class="figure-line-action" points="160,217 170,220 160,223"/>
                <line class="figure-line-action" x1="170" y1="250" x2="410" y2="250"/>
                <polygon class="figure-line-action" points="400,247 410,250 400,253"/>
                <line class="figure-line-action" x1="50" y1="280" x2="410" y2="280"/>
                <polygon class="figure-line-action" points="60,277 50,280 60,283"/>
                <rect class="figure-block-action" width="10" height="60" x="170" y="220"/>
                <rect class="figure-block-action" width="10" height="30" x="410" y="250"/>

                <!-- Action: start -->
                <text text-anchor="middle" x="110" y="330">start()</text>
                <text text-anchor="middle" x="230" y="360">event start</text>
                <text text-anchor="middle" x="360" y="390">doSomething()</text>
                <line class="figure-line-action" x1="50" y1="340" x2="170" y2="340"/>
                <polygon class="figure-line-action" points="160,337 170,340 160,343"/>
                <line class="figure-line-action" x1="170" y1="370" x2="290" y2="370"/>
                <polygon class="figure-line-action" points="280,367 290,370 280,373"/>
                <line class="figure-line-action" x1="290" y1="400" x2="410" y2="400"/>
                <polygon class="figure-line-action" points="400,397 410,400 400,403"/>
                <line class="figure-line-action" x1="290" y1="430" x2="410" y2="430"/>
                <polygon class="figure-line-action" points="310,427 300,430 310,433"/>
                <line class="figure-line-action" x1="170" y1="460" x2="290" y2="460"/>
                <polygon class="figure-line-action" points="190,457 180,460 190,463"/>
                <line class="figure-line-action" x1="50" y1="490" x2="170" y2="490"/>
                <polygon class="figure-line-action" points="60,487 50,490 60,493"/>
                <rect class="figure-block-action" width="10" height="150" x="170" y="340"/>
                <rect class="figure-block-action" width="10" height="90" x="290" y="370"/>
                <rect class="figure-block-action" width="10" height="30" x="410" y="400"/>
            </svg>
        </figure>


        <p>
            After creating instances, the application adds the bundles into his registry. 
            Then, it initializes the bundles and dispatches a "start" event.
            Each bundle can listen the event and act accordingly.
        </p>
    </section>


    <section id="examples">
        <h1>Examples</h1>
        <p>Here are some use cases. They are intentionally simple in order to highlight the concepts.</p>

        <section class="example">
            <figure class="example-illustration">
                <img src="{{ asset('@website:resources/images/example-clock.png') }}" alt="" />
            </figure>
            <h1 class="example-title">A clock displayed on the terminal</h1>
            <p>This is a simple bundle that display a clock. It listen the "<code>start</code>" event of the application and write the time on the screen.</p>
            <p>Source: <a href="https://github.com/neolao/solfege-example-clock">https://github.com/neolao/solfege-example-clock</a></p>
        </section>

        <section class="example">
            <figure class="example-illustration">
                <img src="{{ asset('@website:resources/images/example-image-manipulation.png') }}" alt="" />
            </figure>
            <h1 class="example-title">Command Line Interface to manipulate images</h1>
            <p>It is a set of commands available in the terminal. It uses the bundle <a href="https://github.com/neolao/solfege-bundle-cli">solfegejs-cli</a> that listen the "<code>bundles_initialized</code>" event to get available commands from the other bundles and expose them.</p>
            <p>Source: <a href="https://github.com/neolao/solfege-example-image-manipulation">https://github.com/neolao/solfege-example-image-manipulation</a></p>
        </section>

        <section class="example">
            <figure class="example-illustration">
                <img src="{{ asset('@website:resources/images/example-website.png') }}" alt="" />
            </figure>
            <h1 class="example-title">Simple website</h1>
            <p>
                The <a href="https://github.com/neolao/solfege-bundle-server">solfegejs-server</a> provides a HTTP server with a middleware mecanism.
                The <a href="https://github.com/neolao/solfege-bundle-router">router</a> and <a href="https://github.com/neolao/solfege-bundle-swig">template engine</a> are middlewares. Each bundle configuration can be overridden by the application.
            </p>
            <p>Source: <a href="https://github.com/neolao/solfege-example-website">https://github.com/neolao/solfege-example-website</a></p>
        </section>


    </section>

</article>
{% endblock %}
