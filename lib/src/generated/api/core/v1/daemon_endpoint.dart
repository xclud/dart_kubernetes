/// DaemonEndpoint contains information about a single Daemon endpoint.
class DaemonEndpoint {
  /// The main constructor.
  const DaemonEndpoint({
    required this.port,
  });

  /// Creates a DaemonEndpoint from JSON data.
  DaemonEndpoint.fromJson(Map<String, dynamic> json)
      : this(
          port: json['Port'],
        );

  /// Creates a list of DaemonEndpoint from JSON data.
  static List<DaemonEndpoint> listFromJson(
      Iterable<Map<String, dynamic>> list) {
    return list.map((e) => DaemonEndpoint.fromJson(e)).toList();
  }

  /// Port number of the given endpoint.
  final int port;
}
