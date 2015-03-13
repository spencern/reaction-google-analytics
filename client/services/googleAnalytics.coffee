###
#   Google Analytics
###

ReactionCore.Collections.AnalyticsEvents.after.insert (userId, event) ->
  if event.eventType == 'pageview'
    ga('send', 'pageview', event.path)
  else if event.eventType == 'event'
    ga('send', 'event', event.category, event.action, event.label, event.value)
  else if event.eventType == 'productImpression'
    ga('ec:addImpression', {
      'id': event.product.sku
      'name': event.product.name
      'category': event.product.category
      'brand': event.product.vendor
      'variant': event.product.variant.name
      'list': event.list.name
      'position': event.list.position
      'userType': event.user.type
      })
