Meteor.startup ->
  # set browser policy
  BrowserPolicy.content.allowOriginForAll("www.google-analytics.com")
  BrowserPolicy.content.allowOriginForAll("*.doubleclick.net")
