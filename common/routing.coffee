Router.map ->
  @route 'dashboard/settings/google',
    controller: ShopAdminController
    path: 'dashboard/settings/google',
    template: 'googleAnalytics'

Router.onAfterAction ->
  try
    return ga("send", "pageview", Router.current().route.getName() ) #post iron:router 1.0.3
  catch
    return ga("send", "pageview", IronLocation.get().pathname )