Package.describe({
  summary: "Reaction Google Analytics - GA for Reaction Commece",
  name: "reactioncommerce:reaction-google-analytics",
  version: "0.3.0",
  git: "https://github.com/ongoworks/reaction-google-analytics.git"
});

Package.on_use(function (api, where) {
  api.versionsFrom('METEOR@1.0');
  api.use("meteor-platform@1.2.1");
  api.use("coffeescript");
  api.use("less");
  api.use("reactioncommerce:core@0.4.0");

  api.add_files([
    "common/routing.coffee",
    "common/collections.coffee"
  ], ["client", "server"]);

  api.add_files([
    "client/compatibility/google-analytics-bootstrap.js",
    "client/startup.coffee",
    "client/templates/googleAnalytics/googleAnalytics.html",
    "client/templates/googleAnalytics/googleAnalytics.coffee"
  ], ["client"]);

  api.add_files([
    "server/security/AnalyticsEvents.coffee",
    "server/publications.coffee",
    "server/fixtures.coffee",
    "server/register.coffee"
  ], ["server"]);
});
