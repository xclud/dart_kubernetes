// ***************************************************************
// * Auto-generated. Please do not modify.                       *
// * Copyright (c) 2020-2023 Mahdi K. Fard.                      *
// ***************************************************************

part of '../../../../../../storage_v1.dart';

/// TokenRequest contains parameters of a service account token.
class TokenRequest {
  /// Default constructor.
  const TokenRequest({
    required this.audience,
    this.expirationSeconds,
  });

  /// Creates a [TokenRequest] from JSON data.
  factory TokenRequest.fromJson(Map<String, dynamic> json) {
    final tempAudienceJson = json['audience'];
    final tempExpirationSecondsJson = json['expirationSeconds'];

    final String tempAudience = tempAudienceJson;
    final int? tempExpirationSeconds = tempExpirationSecondsJson;

    return TokenRequest(
      audience: tempAudience,
      expirationSeconds: tempExpirationSeconds,
    );
  }

  /// audience is the intended audience of the token in "TokenRequestSpec". It will default to the audiences of kube apiserver.
  final String audience;

  /// expirationSeconds is the duration of validity of the token in "TokenRequestSpec". It has the same default value of "ExpirationSeconds" in "TokenRequestSpec".
  final int? expirationSeconds;

  /// Converts a [TokenRequest] instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    final tempAudience = audience;
    final tempExpirationSeconds = expirationSeconds;

    jsonData['audience'] = tempAudience;

    if (tempExpirationSeconds != null) {
      jsonData['expirationSeconds'] = tempExpirationSeconds;
    }

    return jsonData;
  }
}
