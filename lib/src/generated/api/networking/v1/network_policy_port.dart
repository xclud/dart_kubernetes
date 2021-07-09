/// NetworkPolicyPort describes a port to allow traffic on.
class NetworkPolicyPort {
  /// The main constructor.
  const NetworkPolicyPort({
    this.endPort,
    this.port,
    this.protocol,
  });

  /// Creates a NetworkPolicyPort from JSON data.
  NetworkPolicyPort.fromJson(Map<String, dynamic> json)
      : this(
          endPort: json['endPort'],
          port: json['port'],
          protocol: json['protocol'],
        );

  /// Creates a list of NetworkPolicyPort from JSON data.
  static List<NetworkPolicyPort> listFromJson(
      Iterable<Map<String, dynamic>> list) {
    return list.map((e) => NetworkPolicyPort.fromJson(e)).toList();
  }

  /// Converts a NetworkPolicyPort instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    if (endPort != null) {
      jsonData['endPort'] = endPort!;
    }
    if (port != null) {
      jsonData['port'] = port!;
    }
    if (protocol != null) {
      jsonData['protocol'] = protocol!;
    }

    return jsonData;
  }

  /// If set, indicates that the range of ports from port to endPort, inclusive, should be allowed by the policy. This field cannot be defined if the port field is not defined or if the port field is defined as a named (string) port. The endPort must be equal or greater than port. This feature is in Beta state and is enabled by default. It can be disabled using the Feature Gate "NetworkPolicyEndPort".
  final int? endPort;

  /// The port on the given protocol. This can either be a numerical or named port on a pod. If this field is not provided, this matches all port names and numbers. If present, only traffic on the specified protocol AND port will be matched.
  final Object? port;

  /// The protocol (TCP, UDP, or SCTP) which traffic must match. If not specified, this field defaults to TCP.
  final String? protocol;
}
