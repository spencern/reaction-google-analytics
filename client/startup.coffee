Meteor.startup ->
  Deps.autorun ->
    config = ReactionCore.Collections.Packages.findOne name: "reaction-google-analytics"
    if !config or !config.enabled
      # data not loaded yet or package is disabled
      Alerts.removeType "ga-not-configured"
      return
    if config.settings.api_key && config.settings.api_key != "__KEY__"
      ga("create", config.settings.api_key, "auto")
      return
    if Roles.userIsInRole(Meteor.user(), "admin")
      _.defer ->
        Alerts.add 'Google Analytics Property is not configured. <a href="/dashboard/settings/googleAnalytics">Configure now</a> or <a href="/dashboard">disable the Google Analytics package</a>.', "danger",
          type: "ga-not-configured"
          dismissable: false # no close button
          html: true
          sticky: true # won't be removed by calls to Alerts.removeSeen(); must manually remove with Alerts.removeType("ga-not-configured")
    else
      # If admin logged out, hide the alert
      Alerts.removeType "ga-not-configured"

  $(document.body).click (e) ->
    $targets = $(e.target).closest("*[data-event-action]")
    $targets = $targets.parents("*[data-event-action]").add($targets)
    $targets.each (index, element) ->
      $element = $(element)
      analyticsEvent =
        category: $element.data("event-category")
        action: $element.data("event-action")
        label: $element.data("event-label")
        value: $element.data("event-value")
      ga("send", "event", analyticsEvent.category, analyticsEvent.action, analyticsEvent.label, analyticsEvent.value)
      ReactionCore.Collections.AnalyticsEvents.insert analyticsEvent
