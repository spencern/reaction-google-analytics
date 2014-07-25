Meteor.publish "AnalyticsEvents", ->
  return share.AnalyticsEvents.find shopId: Meteor.app.getShopId(this)
