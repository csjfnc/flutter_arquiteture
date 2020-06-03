abstract class IClientHttp {

  void addToken(String token);
  Future<Map<String, dynamic>> getTime(String url);
}
