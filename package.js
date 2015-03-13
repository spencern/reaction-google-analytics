Package.describe({
  summary: 'Reaction Google Analytics - GA for Reaction Commece',
  name: 'reactioncommerce:reaction-google-analytics',
  version: '0.3.1',
  git: 'https://github.com/ongoworks/reaction-google-analytics.git'
});

Package.on_use(function (api, where) {
  api.versionsFrom('METEOR@1.0');
  api.use('meteor-platform@1.2.1');
  api.use('coffeescript');
  api.use('reactioncommerce:core@0.4.1');
  api.use('spencern:reaction-analytics');
  api.use('matb33:collection-hooks');

  api.addFiles([
    'common/routing.coffee',
    'common/collections.coffee'
  ], ['client', 'server']);

  api.addFiles([
    'client/compatibility/google-analytics-bootstrap.js',
    'client/startup.coffee',
    'client/services/googleAnalytics.coffee',
    'client/templates/googleAnalytics/googleAnalytics.html',
    'client/templates/googleAnalytics/googleAnalytics.coffee'
  ], ['client']);

  api.addFiles([
    'server/security/browserPolicy.coffee',
    'server/register.coffee'
  ], ['server']);
});
