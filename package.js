Package.describe({
  summary: "Reaction Google Analytics - GA for Reaction Commece",
  name: "reactioncommerce:reaction-google-analytics",
  version: "0.3.1",
  git: "https://github.com/ongoworks/reaction-google-analytics.git"
});

Package.on_use(function (api, where) {
  api.versionsFrom('METEOR@1.0');
  api.use("meteor-platform@1.2.1");
  api.use("coffeescript");
  api.use("less");
  api.use("reactioncommerce:core@0.4.1");

  api.addFiles([
    "common/routing.coffee",
    "common/collections.coffee"
  ], ["client", "server"]);

  api.addFiles([
    "client/compatibility/google-analytics-bootstrap.js",
    "client/startup.coffee",
    "client/templates/googleAnalytics/googleAnalytics.html",
    "client/templates/googleAnalytics/googleAnalytics.coffee"
  ], ["client"]);

  api.addFiles([
    "server/security/AnalyticsEvents.coffee",
    "server/security/browserPolicy.coffee",
    "server/publications.coffee",
    "server/register.coffee"
  ], ["server"]);
});
