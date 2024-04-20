class ApiConfig {
  static const String baseUrl = 'http://10.0.2.2:3000/';

  static String getEndpoint(String path) {
    return baseUrl + path;
  }
}
