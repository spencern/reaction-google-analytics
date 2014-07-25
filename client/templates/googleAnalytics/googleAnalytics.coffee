SettingsFormSchema = new SimpleSchema
  property:
    type: String

Template.googleAnalytics.helpers
  packageConfig: ->
    return Packages.findOne name: "reaction-google-analytics"
  formSchema: ->
    return SettingsFormSchema

AutoForm.hooks gaSettingsForm:
  onSuccess: (operation, result, template) ->
    Alerts.removeType "ga-not-configured"
    Alerts.add "Google Analytics settings saved.", "success", type: "ga-settings"

  onError: (operation, error, template) ->
    msg = error.message || error.reason || "Unknown error"
    Alerts.add "Google Analytics update failed: " + msg, "danger", type: "ga-settings"