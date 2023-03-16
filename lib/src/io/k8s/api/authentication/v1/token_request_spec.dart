// ***************************************************************
// * Auto-generated. Please do not modify.                       *
// * Copyright (c) 2020-2023 Mahdi K. Fard.                      *
// ***************************************************************

part of io.k8s.api.authentication.v1;

/// TokenRequestSpec contains client provided parameters of a token request.
class TokenRequestSpec {
  /// Default constructor.
  const TokenRequestSpec({
    required this.audiences,
    this.boundObjectRef,
    this.expirationSeconds,
  });

  /// Creates a [TokenRequestSpec] from JSON data.
  factory TokenRequestSpec.fromJson(Map<String, dynamic> json) {
    final tempAudiencesJson = json['audiences'];
    final tempBoundObjectRefJson = json['boundObjectRef'];
    final tempExpirationSecondsJson = json['expirationSeconds'];

    final List<String> tempAudiences = tempAudiencesJson;
    final BoundObjectReference? tempBoundObjectRef =
        tempBoundObjectRefJson != null
            ? BoundObjectReference.fromJson(tempBoundObjectRefJson)
            : null;
    final int? tempExpirationSeconds = tempExpirationSecondsJson;

    return TokenRequestSpec(
      audiences: tempAudiences,
      boundObjectRef: tempBoundObjectRef,
      expirationSeconds: tempExpirationSeconds,
    );
  }

  /// Audiences are the intendend audiences of the token. A recipient of a token must identify themself with an identifier in the list of audiences of the token, and otherwise should reject the token. A token issued for multiple audiences may be used to authenticate against any of the audiences listed but implies a high degree of trust between the target audiences.
  final List<String> audiences;

  /// BoundObjectRef is a reference to an object that the token will be bound to. The token will only be valid for as long as the bound object exists. NOTE: The API server's TokenReview endpoint will validate the BoundObjectRef, but other audiences may not. Keep ExpirationSeconds small if you want prompt revocation.
  final BoundObjectReference? boundObjectRef;

  /// ExpirationSeconds is the requested duration of validity of the request. The token issuer may return a token with a different validity duration so a client needs to check the 'expiration' field in a response.
  final int? expirationSeconds;

  /// Converts a [TokenRequestSpec] instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    final tempAudiences = audiences;
    final tempBoundObjectRef = boundObjectRef;
    final tempExpirationSeconds = expirationSeconds;

    jsonData['audiences'] = tempAudiences;

    if (tempBoundObjectRef != null) {
      jsonData['boundObjectRef'] = tempBoundObjectRef.toJson();
    }

    if (tempExpirationSeconds != null) {
      jsonData['expirationSeconds'] = tempExpirationSeconds;
    }

    return jsonData;
  }
}
