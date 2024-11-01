class DemoHelper {
  static const String demoAuthAudience = "estate-ops-api";
  static const String demoAuthClientId = "xOZJUbe1lfb1tK8zZriMmTnKcI7MkqKB";
  static const String demoAuthDomain = "dev-estate-ops.eu.auth0.com";
  static const String demoApiUrl = "https://api-demo.estate-ops.de";

  static isDemoAccount(String email) {
    return email.contains('demo-mieter');
  }
}
