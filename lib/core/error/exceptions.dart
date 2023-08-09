class ServerUnknownException implements Exception {
  final String? message;
  ServerUnknownException({this.message});
}

class CacheException implements Exception {}
