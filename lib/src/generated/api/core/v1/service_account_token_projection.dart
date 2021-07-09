/// ServiceAccountTokenProjection represents a projected service account token volume. This projection can be used to insert a service account token into the pods runtime filesystem for use against APIs (Kubernetes API Server or otherwise).
class ServiceAccountTokenProjection {
  /// The main constructor.
  const ServiceAccountTokenProjection({
    this.audience,
    this.expirationSeconds,
    required this.path,
  });

  /// Creates a ServiceAccountTokenProjection from JSON data.
  ServiceAccountTokenProjection.fromJson(Map<String, dynamic> json)
      : this(
          audience: json['audience'],
          expirationSeconds: json['expirationSeconds'],
          path: json['path'],
        );

  /// Creates a list of ServiceAccountTokenProjection from JSON data.
  static List<ServiceAccountTokenProjection> listFromJson(
      Iterable<Map<String, dynamic>> list) {
    return list.map((e) => ServiceAccountTokenProjection.fromJson(e)).toList();
  }

  /// Converts a ServiceAccountTokenProjection instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    if (audience != null) {
      jsonData['audience'] = audience!;
    }
    if (expirationSeconds != null) {
      jsonData['expirationSeconds'] = expirationSeconds!;
    }
    jsonData['path'] = path;

    return jsonData;
  }

  /// Audience is the intended audience of the token. A recipient of a token must identify itself with an identifier specified in the audience of the token, and otherwise should reject the token. The audience defaults to the identifier of the apiserver.
  final String? audience;

  /// ExpirationSeconds is the requested duration of validity of the service account token. As the token approaches expiration, the kubelet volume plugin will proactively rotate the service account token. The kubelet will start trying to rotate the token if the token is older than 80 percent of its time to live or if the token is older than 24 hours.Defaults to 1 hour and must be at least 10 minutes.
  final int? expirationSeconds;

  /// Path is the path relative to the mount point of the file to project the token into.
  final String path;
}
