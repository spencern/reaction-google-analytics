Package.describe({
  summary: "Reaction Google Analytics - GA for Reaction Commece",
  name: "reactioncommerce:reaction-google-analytics",
  version: "0.1.2",
  git: "https://github.com/ongoworks/reaction-google-analytics.git"
});

Package.on_use(function (api, where) {
  api.versionsFrom('METEOR@0.9.0');
  api.use([
    "standard-app-packages",
    "coffeescript",
    "less",
    "reactioncommerce:core@0.2.1",
  ], ["client", "server"]);

  api.add_files([
    "common/register.coffee",
    "common/collections.coffee"
  ], ["client", "server"]);
  api.add_files([
    "client/compatibility/google-analytics-bootstrap.js",
    "client/routing.coffee",
    "client/startup.coffee",
    "client/templates/googleAnalytics/googleAnalytics.html",
    "client/templates/googleAnalytics/googleAnalytics.coffee"
  ], ["client"]);
  api.add_files([
    "server/security/AnalyticsEvents.coffee",
    "server/publications.coffee",
    "server/fixtures.coffee"
  ], ["server"]);
});
