// ***************************************************************
// * Auto-generated. Please do not modify.                       *
// * Copyright (c) 2020-2023 Mahdi K. Fard.                      *
// ***************************************************************

part of io.k8s.api.authentication.v1;

/// TokenRequestStatus is the result of a token request.
class TokenRequestStatus {
  /// Default constructor.
  const TokenRequestStatus({
    required this.expirationTimestamp,
    required this.token,
  });

  /// Creates a [TokenRequestStatus] from JSON data.
  factory TokenRequestStatus.fromJson(Map<String, dynamic> json) {
    final tempExpirationTimestampJson = json['expirationTimestamp'];
    final tempTokenJson = json['token'];

    final tempExpirationTimestamp = DateTime.parse(tempExpirationTimestampJson);
    final tempToken = tempTokenJson;

    return TokenRequestStatus(
      expirationTimestamp: tempExpirationTimestamp,
      token: tempToken,
    );
  }

  /// ExpirationTimestamp is the time of expiration of the returned token.
  final DateTime expirationTimestamp;

  /// Token is the opaque bearer token.
  final String token;

  /// Converts a [TokenRequestStatus] instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    final tempExpirationTimestamp = expirationTimestamp;
    final tempToken = token;

    jsonData['expirationTimestamp'] = tempExpirationTimestamp;

    jsonData['token'] = tempToken;

    return jsonData;
  }
}
