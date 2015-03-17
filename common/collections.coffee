###
#   Google Analytics
#   api_key: "UA-XXXXX-X" (this is your tracking ID)
###

# Init AnalyticsEvent Collection
ReactionCore.Collections.AnalyticsEvents = new Meteor.Collection "AnalyticsEvents"

ReactionCore.Schemas.GoogleAnalyticsPackageConfig = new SimpleSchema([
  ReactionCore.Schemas.PackageConfig
  {
    "settings.public.api_key":
      type: String
      label: "Tracking ID"
  }
])
