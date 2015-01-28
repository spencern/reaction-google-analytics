ReactionCore.registerPackage
  name: "reaction-google-analytics"
  provides: ['analytics']
  label: "Google Analytics"
  description: "Event tracking with Google Analytics"
  icon: "fa fa-bar-chart-o"
  settingsRoute: "dashboard/settings/google"
  hasWidget: false
  priority: "4"
  hasWidget: true
  shopPermissions: [
    {
      label: "Google Analytics"
      permission: "dashboard/settings"
      group: "Shop Settings"
    }
  ]