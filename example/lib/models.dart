class Cluster {
  const Cluster({
    required this.name,
    required this.server,
    required this.jwt,
    this.skipTLSVerify = false,
  });

  Cluster.fromJson(Map<String, dynamic> json)
      : this(
          name: json['name'],
          server: json['server'],
          jwt: json['jwt'],
          skipTLSVerify: json['skipTLSVerify'],
        );

  final String name;
  final String server;
  final String jwt;
  final bool skipTLSVerify;

  Map<String, Object> toJson() {
    return {
      'name': name,
      'server': server,
      'jwt': jwt,
      'skipTLSVerify': skipTLSVerify,
    };
  }
}
