// ***************************************************************
// * Auto-generated. Please do not modify.                       *
// * Copyright (c) 2020-2024 Mahdi K. Fard.                      *
// ***************************************************************

part of '../../../../../../authentication_v1.dart';

/// TokenReviewStatus is the result of the token authentication request.
class TokenReviewStatus {
  /// Default constructor.
  const TokenReviewStatus({
    this.audiences,
    this.authenticated,
    this.error,
    this.user,
  });

  /// Creates a [TokenReviewStatus] from JSON data.
  factory TokenReviewStatus.fromJson(Map<String, dynamic> json) {
    final tempAudiencesJson = json['audiences'];
    final tempAuthenticatedJson = json['authenticated'];
    final tempErrorJson = json['error'];
    final tempUserJson = json['user'];

    final List<String>? tempAudiences =
        tempAudiencesJson != null ? List<String>.from(tempAudiencesJson) : null;
    final bool? tempAuthenticated = tempAuthenticatedJson;
    final String? tempError = tempErrorJson;
    final UserInfo? tempUser =
        tempUserJson != null ? UserInfo.fromJson(tempUserJson) : null;

    return TokenReviewStatus(
      audiences: tempAudiences,
      authenticated: tempAuthenticated,
      error: tempError,
      user: tempUser,
    );
  }

  /// Audiences are audience identifiers chosen by the authenticator that are compatible with both the TokenReview and token. An identifier is any identifier in the intersection of the TokenReviewSpec audiences and the token's audiences. A client of the TokenReview API that sets the spec.audiences field should validate that a compatible audience identifier is returned in the status.audiences field to ensure that the TokenReview server is audience aware. If a TokenReview returns an empty status.audience field where status.authenticated is "true", the token is valid against the audience of the Kubernetes API server.
  final List<String>? audiences;

  /// Authenticated indicates that the token was associated with a known user.
  final bool? authenticated;

  /// Error indicates that the token couldn't be checked.
  final String? error;

  /// User is the UserInfo associated with the provided token.
  final UserInfo? user;

  /// Converts a [TokenReviewStatus] instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    final tempAudiences = audiences;
    final tempAuthenticated = authenticated;
    final tempError = error;
    final tempUser = user;

    if (tempAudiences != null) {
      jsonData['audiences'] = tempAudiences;
    }

    if (tempAuthenticated != null) {
      jsonData['authenticated'] = tempAuthenticated;
    }

    if (tempError != null) {
      jsonData['error'] = tempError;
    }

    if (tempUser != null) {
      jsonData['user'] = tempUser.toJson();
    }

    return jsonData;
  }
}
