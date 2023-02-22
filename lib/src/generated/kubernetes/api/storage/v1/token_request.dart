
/// TokenRequest contains parameters of a service account token.
class TokenRequest {
  /// The main constructor.
  const TokenRequest({
    required this.audience,
    this.expirationSeconds,
  });

  /// Creates a TokenRequest from JSON data.
  TokenRequest.fromJson(Map<String, dynamic> json)
      : this(
          audience: json['audience'],
          expirationSeconds: json['expirationSeconds'],
        );

  /// Creates a list of TokenRequest from JSON data.
  static List<TokenRequest> listFromJson(Iterable<Map<String, dynamic>> list) {
    return list.map((e) => TokenRequest.fromJson(e)).toList();
  }

  /// Converts a TokenRequest instance to JSON data.
  Map<String, Object> toJson()
  {
    final jsonData = <String, Object>{};

    jsonData['audience'] = audience;
    if(expirationSeconds != null) { jsonData['expirationSeconds'] = expirationSeconds!; }
    

    return jsonData;
  }


  /// Audience is the intended audience of the token in "TokenRequestSpec". It will default to the audiences of kube apiserver.
  final String audience;

  /// ExpirationSeconds is the duration of validity of the token in "TokenRequestSpec". It has the same default value of "ExpirationSeconds" in "TokenRequestSpec".
  final int? expirationSeconds;
}
