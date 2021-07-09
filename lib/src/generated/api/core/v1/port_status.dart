///
class PortStatus {
  /// The main constructor.
  const PortStatus({
    this.error,
    required this.port,
    required this.protocol,
  });

  /// Creates a PortStatus from JSON data.
  PortStatus.fromJson(Map<String, dynamic> json)
      : this(
          error: json['error'],
          port: json['port'],
          protocol: json['protocol'],
        );

  /// Creates a list of PortStatus from JSON data.
  static List<PortStatus> listFromJson(Iterable<Map<String, dynamic>> list) {
    return list.map((e) => PortStatus.fromJson(e)).toList();
  }

  /// Converts a PortStatus instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    if (error != null) {
      jsonData['error'] = error!;
    }
    jsonData['port'] = port;
    jsonData['protocol'] = protocol;

    return jsonData;
  }

  /// Error is to record the problem with the service port The format of the error shall comply with the following rules: - built-in error values shall be specified in this file and those shall use
  ///   CamelCase names
  /// - cloud provider specific error values must have names that comply with the
  ///   format foo.example.com/CamelCase.
  final String? error;

  /// Port is the port number of the service port of which status is recorded here.
  final int port;

  /// Protocol is the protocol of the service port of which status is recorded here The supported values are: "TCP", "UDP", "SCTP".
  final String protocol;
}
