// ***************************************************************
// * Auto-generated. Please do not modify.                       *
// * Copyright (c) 2020-2023 Mahdi K. Fard.                      *
// ***************************************************************

part of '../../../../../../authentication_v1.dart';

/// TokenReviewSpec is a description of the token authentication request.
class TokenReviewSpec {
  /// Default constructor.
  const TokenReviewSpec({
    this.audiences,
    this.token,
  });

  /// Creates a [TokenReviewSpec] from JSON data.
  factory TokenReviewSpec.fromJson(Map<String, dynamic> json) {
    final tempAudiencesJson = json['audiences'];
    final tempTokenJson = json['token'];

    final List<String>? tempAudiences =
        tempAudiencesJson != null ? List<String>.from(tempAudiencesJson) : null;
    final String? tempToken = tempTokenJson;

    return TokenReviewSpec(
      audiences: tempAudiences,
      token: tempToken,
    );
  }

  /// Audiences is a list of the identifiers that the resource server presented with the token identifies as. Audience-aware token authenticators will verify that the token was intended for at least one of the audiences in this list. If no audiences are provided, the audience will default to the audience of the Kubernetes apiserver.
  final List<String>? audiences;

  /// Token is the opaque bearer token.
  final String? token;

  /// Converts a [TokenReviewSpec] instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    final tempAudiences = audiences;
    final tempToken = token;

    if (tempAudiences != null) {
      jsonData['audiences'] = tempAudiences;
    }

    if (tempToken != null) {
      jsonData['token'] = tempToken;
    }

    return jsonData;
  }
}
