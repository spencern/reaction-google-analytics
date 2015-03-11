ReactionCore.registerPackage
  name: 'reaction-google-analytics' # usually same as meteor package
  autoEnable: false # auto-enable in dashboard
  settings: # private package settings config (blackbox)
    api_key: "" # Tracking ID
  registry: [
    # all options except route and template
    # are used to describe the
    # dashboard 'app card'.
    {
      provides: 'dashboard'
      label: 'Google Analytics'
      description: "Event tracking and analytics with Google Analytics"
      icon: "fa fa-bar-chart-o" # glyphicon/fa
      cycle: '3' # Core, Stable, Testing (currently testing)
      container: 'dashboard'  #group this with settings
    }
    # configures settings link for app card
    # use 'group' to link to dashboard card
    {
      route: 'googleAnalytics'
      provides: 'settings'
      container: 'dashboard'
    }
  ]
  # array of permission objects
  permissions: [
    {
      label: "Google Analytics"
      permission: "dashboard/settings"
      group: "Shop Settings"
    }
  ]
