import 'package:kubernetes/src/generated/api/authentication/v1/user_info.dart';

/// TokenReviewStatus is the result of the token authentication request.
class TokenReviewStatus {
  /// The main constructor.
  const TokenReviewStatus({
    this.audiences,
    this.authenticated,
    this.error,
    this.user,
  });

  /// Creates a TokenReviewStatus from JSON data.
  TokenReviewStatus.fromJson(Map<String, dynamic> json)
      : this(
          audiences: json['audiences'] != null
              ? List<String>.from(json['audiences'])
              : null,
          authenticated: json['authenticated'],
          error: json['error'],
          user: json['user'] != null ? UserInfo.fromJson(json['user']) : null,
        );

  /// Creates a list of TokenReviewStatus from JSON data.
  static List<TokenReviewStatus> listFromJson(
      Iterable<Map<String, dynamic>> list) {
    return list.map((e) => TokenReviewStatus.fromJson(e)).toList();
  }

  /// Converts a TokenReviewStatus instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    if (audiences != null) {
      jsonData['audiences'] = audiences!;
    }
    if (authenticated != null) {
      jsonData['authenticated'] = authenticated!;
    }
    if (error != null) {
      jsonData['error'] = error!;
    }
    if (user != null) {
      jsonData['user'] = user!.toJson();
    }

    return jsonData;
  }

  /// Audiences are audience identifiers chosen by the authenticator that are compatible with both the TokenReview and token. An identifier is any identifier in the intersection of the TokenReviewSpec audiences and the token's audiences. A client of the TokenReview API that sets the spec.audiences field should validate that a compatible audience identifier is returned in the status.audiences field to ensure that the TokenReview server is audience aware. If a TokenReview returns an empty status.audience field where status.authenticated is "true", the token is valid against the audience of the Kubernetes API server.
  final List<String>? audiences;

  /// Authenticated indicates that the token was associated with a known user.
  final bool? authenticated;

  /// Error indicates that the token couldn't be checked.
  final String? error;

  /// User is the UserInfo associated with the provided token.
  final UserInfo? user;
}
