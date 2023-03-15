// ***************************************************************
// * Auto-generated. Please do not modify.                       *
// * Copyright (c) 2020-2023 Mahdi K. Fard.                      *
// ***************************************************************

part of io.k8s.api.core.v1;

/// ServiceAccountTokenProjection represents a projected service account token volume. This projection can be used to insert a service account token into the pods runtime filesystem for use against APIs (Kubernetes API Server or otherwise).
class ServiceAccountTokenProjection {
  /// Default constructor.
  const ServiceAccountTokenProjection({
    this.audience,
    this.expirationSeconds,
    required this.path,
  });

  /// Creates a [ServiceAccountTokenProjection] from JSON data.
  factory ServiceAccountTokenProjection.fromJson(Map<String, dynamic> json) {
    final tempAudienceJson = json['audience'];
    final tempExpirationSecondsJson = json['expirationSeconds'];
    final tempPathJson = json['path'];

    final tempAudience = tempAudienceJson;
    final tempExpirationSeconds = tempExpirationSecondsJson;
    final tempPath = tempPathJson;

    return ServiceAccountTokenProjection(
      audience: tempAudience,
      expirationSeconds: tempExpirationSeconds,
      path: tempPath,
    );
  }

  /// audience is the intended audience of the token. A recipient of a token must identify itself with an identifier specified in the audience of the token, and otherwise should reject the token. The audience defaults to the identifier of the apiserver.
  final String? audience;

  /// expirationSeconds is the requested duration of validity of the service account token. As the token approaches expiration, the kubelet volume plugin will proactively rotate the service account token. The kubelet will start trying to rotate the token if the token is older than 80 percent of its time to live or if the token is older than 24 hours.Defaults to 1 hour and must be at least 10 minutes.
  final int? expirationSeconds;

  /// path is the path relative to the mount point of the file to project the token into.
  final String path;

  /// Converts a [ServiceAccountTokenProjection] instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    final tempAudience = audience;
    final tempExpirationSeconds = expirationSeconds;
    final tempPath = path;

    if (tempAudience != null) {
      jsonData['audience'] = tempAudience;
    }

    if (tempExpirationSeconds != null) {
      jsonData['expirationSeconds'] = tempExpirationSeconds;
    }

    jsonData['path'] = tempPath;

    return jsonData;
  }
}
