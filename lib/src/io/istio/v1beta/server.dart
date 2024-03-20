part of '../../../../istio_v1beta1.dart';

/// Describes the properties of the proxy on a given load balancer port.
class Server {
  /// The main constructor.
  const Server({
    this.name,
    this.defaultEndpoint,
    this.bind,
    this.port,
    this.hosts,
    this.tls,
  });

  /// Creates a Server from JSON data.
  Server.fromJson(Map<String, dynamic> json)
      : this(
          name: json['name'],
          defaultEndpoint: json['defaultEndpoint'],
          bind: json['bind'],
          port: json['port'] != null ? Port.fromJson(json['port']) : null,
          hosts:
              json['hosts'] != null ? List<String>.from(json['hosts']) : null,
          tls: json['tls'] != null
              ? ServerTLSSettings.fromJson(json['tls'])
              : null,
        );

  /// Creates a list of Server from JSON data.
  static List<Server> listFromJson(Iterable<Map<String, dynamic>> list) {
    return list.map((e) => Server.fromJson(e)).toList();
  }

  /// An optional name of the server, when set must be unique across all servers.
  final String? name;

  /// Default endpoint.
  final String? defaultEndpoint;

  /// Bind.
  final String? bind;

  /// Port.
  final Port? port;

  /// One or more hosts exposed by this gateway.
  final List<String>? hosts;

  /// TLS.
  final ServerTLSSettings? tls;
}
