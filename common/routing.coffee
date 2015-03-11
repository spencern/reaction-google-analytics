Router.map ->
  @route 'googleAnalytics',
    controller: ShopAdminController
    path: 'dashboard/settings/googleAnalytics'
    template: 'googleAnalytics'

Router.onAfterAction ->
  trackingID = ReactionCore.Collections.Packages.findOne({name: "reaction-google-analytics"}).settings.api_key
  if trackingID
    try
      return ga("send", "pageview", Router.current().route.getName() ) #post iron:router 1.0.3
    catch
      return ga("send", "pageview", IronLocation.get().pathname )
