
/// TokenRequestStatus is the result of a token request.
class TokenRequestStatus {
  /// The main constructor.
  const TokenRequestStatus({
    required this.expirationTimestamp,
    required this.token,
  });

  /// Creates a TokenRequestStatus from JSON data.
  TokenRequestStatus.fromJson(Map<String, dynamic> json)
      : this(
          expirationTimestamp: DateTime.tryParse(json['expirationTimestamp'])!,
          token: json['token'],
        );

  /// Creates a list of TokenRequestStatus from JSON data.
  static List<TokenRequestStatus> listFromJson(Iterable<Map<String, dynamic>> list) {
    return list.map((e) => TokenRequestStatus.fromJson(e)).toList();
  }

  /// Converts a TokenRequestStatus instance to JSON data.
  Map<String, Object> toJson()
  {
    final jsonData = <String, Object>{};

    jsonData['expirationTimestamp'] = expirationTimestamp.toIso8601String();
    jsonData['token'] = token;
    

    return jsonData;
  }


  /// ExpirationTimestamp is the time of expiration of the returned token.
  final DateTime expirationTimestamp;

  /// Token is the opaque bearer token.
  final String token;
}
