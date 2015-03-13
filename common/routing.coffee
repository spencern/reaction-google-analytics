Router.map ->
  @route 'googleAnalytics',
    controller: ShopAdminController
    path: 'dashboard/settings/googleAnalytics'
    template: 'googleAnalytics'

# Use onRun instead of afterAction so that tracking only happens once per page.
# See: https://github.com/iron-meteor/iron-router/tree/0.9#custom-actions-and-hooks
Router.onRun ->
  trackingID = ReactionCore.Collections.Packages.findOne({name: "reaction-google-analytics"}).settings.api_key
  # Check to make sure GA exists before triggering pageview sends.
  if trackingID
    ga("send", "pageview", Iron.Location.get().path ) # per https://github.com/iron-meteor/iron-router/issues/289
