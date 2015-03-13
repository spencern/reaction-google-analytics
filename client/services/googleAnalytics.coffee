###
#   Google Analytics
###

ReactionCore.Collections.AnalyticsEvents.after.insert (userId, event) ->
  if event.eventType == 'pageview'
    ga('send', 'pageview', event.path)
  else if event.eventType == 'event'
    ga('send', 'event', event.category, event.action, event.label, event.value)
  
