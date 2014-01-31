var solfege = require('solfegejs');
var solfegeServer = require('solfegejs-server');
var solfegeCli = require('solfegejs-cli');

// Initialize the application
var application = new solfege.kernel.Application(__dirname);

// Add the bundles
application.addBundle('server', new solfegeServer.HttpServer);
application.addBundle('console', new solfegeCli.Console);

// Override the configuration
var configuration = require(__dirname + '/config/default.js');
application.overrideConfiguration(configuration);

// Start the application
application.start();

