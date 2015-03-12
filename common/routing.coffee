Router.map ->
  @route 'googleAnalytics',
    controller: ShopAdminController
    path: 'dashboard/settings/googleAnalytics'
    template: 'googleAnalytics'

Router.onAfterAction ->
  trackingID = ReactionCore.Collections.Packages.findOne({name: "reaction-google-analytics"}).settings.api_key
  # Check to make sure GA exists before triggering pageview sends.
  if trackingID
    try
      return ga("send", "pageview", Router.current().route.getName() ) #post iron:router 1.0.3
    catch
      return ga("send", "pageview", IronLocation.get().pathname )
