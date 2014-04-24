module.exports = {
    // Configuration of the server bundle
    server: {
        // Port to listen
        port: 7777,

        // The middlewares
        middlewares: [
            // Deflate or Gzip compression
            '@deflate.middleware',
            '@gzip.middleware',

            // Serve static files
            '@static.middleware',

            // Serve the assets
            '@assets.middleware',

            // The template engine
            '@swig.middleware',

            // The router to handle URIs
            '@router.middleware'
        ]
    },

    // Configuration of the assets bundle
    assets: require('./assets'),

    // Configuration of the static bundle
    static: {
        // The directories to serve
        directories: [
            __dirname + '/../public'
        ]
    },

    // Configuration of the router bundle
    router: {
        // The routes
        routes: [
            {
                id: 'home',
                url: '/',
                controller: '@website.controllers.Home',
                action: 'index'
            }
        ]
    },

    // Configuration of the swig engine
    swig: {
        // Templates path
        path: __dirname + '/../views',

        // Available variables and methods in all templates
        locals: {
            asset: '@assets.getAssetUrl',
            javascript: '@assets.getJavascriptUrls',
            stylesheet: '@assets.getStylesheetUrls'
        }
    }

};
