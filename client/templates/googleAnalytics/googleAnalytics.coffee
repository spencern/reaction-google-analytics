Template.googleAnalytics.helpers
  packageData: ->
    return ReactionCore.Collections.Packages.findOne name: "reaction-google-analytics"

AutoForm.hooks "ga-update-form":
  onSuccess: (operation, result, template) ->
    Alerts.removeType "ga-not-configured"
    Alerts.add "Google Analytics settings saved.", "success", type: "ga-settings"

  onError: (operation, error, template) ->
    msg = error.message || error.reason || "Unknown error"
    Alerts.add "Google Analytics update failed: " + msg, "danger", type: "ga-settings"
