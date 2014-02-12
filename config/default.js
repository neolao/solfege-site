module.exports = {
    // Configuration of the server bundle
    server: {
        // Port to listen
        port: 7777,

        // The middlewares
        middlewares: [
            // Serve static files
            '@static.middleware',

            // The router to handle URIs
            '@router.middleware'
        ]
    },

    // Configuration of the static bundle
    static: {
        // The directories to serve
        directories: [
            __dirname + '/../public'
        ]
    },

    // Configuration of the router bundle
    router: {
    }
};
