class Request {
  static String devUrl = "https://ethioden-chat-api.onrender.com/api/v1";
  static final  url = Uri.parse(devUrl);
  static dynamic headers(String token) {
         return {'Content-Type': 'application/json',
          'Authorization':
              'Bearer $token',
        };
  }
}