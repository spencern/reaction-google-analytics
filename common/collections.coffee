###
#   Google Analytics
#   api_key: "UA-XXXXX-X" (this is your tracking ID)
###

ReactionCore.Schemas.GoogleAnalyticsPackageConfig = new SimpleSchema([
  ReactionCore.Schemas.PackageConfig
  {
    "settings.api_key":
      type: String
      label: "Tracking ID"
  }
])
