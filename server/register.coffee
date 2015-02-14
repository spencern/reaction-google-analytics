ReactionCore.registerPackage
  name: 'reaction-google-analytics' # usually same as meteor package
  autoEnable: false # auto-enable in dashboard
  settings: # private package settings config (blackbox)
    mode: false
    api_key: ""
  registry: [
    # all options except route and template
    # are used to describe the
    # dashboard 'app card'.
    {
      provides: 'dashboard'
      label: 'Google Analytics'
      description: "Event tracking with Google Analytics"
      icon: "fa fa-bar-chart-o" # glyphicon/fa
      cycle: '2' # Core, Stable, Testing (currently testing)
      container: 'analytics'  #group this with settings
    }
    # configures settings link for app card
    # use 'group' to link to dashboard card
    {
      route: 'dashboard/settings/google'
      provides: 'settings'
      container: 'analytics'
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
