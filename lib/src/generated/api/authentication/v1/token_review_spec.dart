/// TokenReviewSpec is a description of the token authentication request.
class TokenReviewSpec {
  /// The main constructor.
  const TokenReviewSpec({
    this.audiences,
    this.token,
  });

  /// Creates a TokenReviewSpec from JSON data.
  TokenReviewSpec.fromJson(Map<String, dynamic> json)
      : this(
          audiences: json['audiences'] != null
              ? List<String>.from(json['audiences'])
              : null,
          token: json['token'],
        );

  /// Creates a list of TokenReviewSpec from JSON data.
  static List<TokenReviewSpec> listFromJson(
      Iterable<Map<String, dynamic>> list) {
    return list.map((e) => TokenReviewSpec.fromJson(e)).toList();
  }

  /// Audiences is a list of the identifiers that the resource server presented with the token identifies as. Audience-aware token authenticators will verify that the token was intended for at least one of the audiences in this list. If no audiences are provided, the audience will default to the audience of the Kubernetes apiserver.
  final List<String>? audiences;

  /// Token is the opaque bearer token.
  final String? token;
}
