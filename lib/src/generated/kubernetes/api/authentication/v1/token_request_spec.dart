import 'package:kubernetes/src/generated/kubernetes/api/authentication/v1/bound_object_reference.dart';

/// TokenRequestSpec contains client provided parameters of a token request.
class TokenRequestSpec {
  /// The main constructor.
  const TokenRequestSpec({
    required this.audiences,
    this.boundObjectRef,
    this.expirationSeconds,
  });

  /// Creates a TokenRequestSpec from JSON data.
  TokenRequestSpec.fromJson(Map<String, dynamic> json)
      : this(
          audiences: json['audiences'] != null
              ? List<String>.from(json['audiences'])
              : [],
          boundObjectRef: json['boundObjectRef'] != null
              ? BoundObjectReference.fromJson(json['boundObjectRef'])
              : null,
          expirationSeconds: json['expirationSeconds'],
        );

  /// Creates a list of TokenRequestSpec from JSON data.
  static List<TokenRequestSpec> listFromJson(
      Iterable<Map<String, dynamic>> list) {
    return list.map((e) => TokenRequestSpec.fromJson(e)).toList();
  }

  /// Converts a TokenRequestSpec instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    jsonData['audiences'] = audiences;
    if (boundObjectRef != null) {
      jsonData['boundObjectRef'] = boundObjectRef!.toJson();
    }
    if (expirationSeconds != null) {
      jsonData['expirationSeconds'] = expirationSeconds!;
    }

    return jsonData;
  }

  /// Audiences are the intendend audiences of the token. A recipient of a token must identify themself with an identifier in the list of audiences of the token, and otherwise should reject the token. A token issued for multiple audiences may be used to authenticate against any of the audiences listed but implies a high degree of trust between the target audiences.
  final List<String> audiences;

  /// BoundObjectRef is a reference to an object that the token will be bound to. The token will only be valid for as long as the bound object exists. NOTE: The API server's TokenReview endpoint will validate the BoundObjectRef, but other audiences may not. Keep ExpirationSeconds small if you want prompt revocation.
  final BoundObjectReference? boundObjectRef;

  /// ExpirationSeconds is the requested duration of validity of the request. The token issuer may return a token with a different validity duration so a client needs to check the 'expiration' field in a response.
  final int? expirationSeconds;
}
