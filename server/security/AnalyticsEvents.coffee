share.AnalyticsEvents.allow
  insert: (userId, analyticsEvent) ->
    analyticsEvent.shopId = Meteor.app.getShopId()
    return true
  update: (userId, analyticsEvent, fields, modifier) ->
    if modifier.$set && modifier.$set.shopId
      return false
    return true
  remove: (userId, analyticsEvent) ->
    if analyticsEvent.shopId != Meteor.app.getCurrentShop()._id
      return false
    return true
