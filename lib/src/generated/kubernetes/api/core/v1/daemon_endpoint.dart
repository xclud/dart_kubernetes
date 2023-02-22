
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
  static List<DaemonEndpoint> listFromJson(Iterable<Map<String, dynamic>> list) {
    return list.map((e) => DaemonEndpoint.fromJson(e)).toList();
  }

  /// Converts a DaemonEndpoint instance to JSON data.
  Map<String, Object> toJson()
  {
    final jsonData = <String, Object>{};

    jsonData['Port'] = port;
    

    return jsonData;
  }


  /// Port number of the given endpoint.
  final int port;
}
