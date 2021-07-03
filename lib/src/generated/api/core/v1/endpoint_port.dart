/// EndpointPort is a tuple that describes a single port.
class EndpointPort {
  /// The main constructor.
  const EndpointPort({
    this.appProtocol,
    this.name,
    required this.port,
    this.protocol,
  });

  /// Creates a EndpointPort from JSON data.
  EndpointPort.fromJson(Map<String, dynamic> json)
      : this(
          appProtocol: json['appProtocol'],
          name: json['name'],
          port: json['port'],
          protocol: json['protocol'],
        );

  /// Creates a list of EndpointPort from JSON data.
  static List<EndpointPort> listFromJson(Iterable<Map<String, dynamic>> list) {
    return list.map((e) => EndpointPort.fromJson(e)).toList();
  }

  /// The application protocol for this port. This field follows standard Kubernetes label syntax. Un-prefixed names are reserved for IANA standard service names (as per RFC-6335 and http://www.iana.org/assignments/service-names). Non-standard protocols should use prefixed names such as mycompany.com/my-custom-protocol.
  final String? appProtocol;

  /// The name of this port.  This must match the 'name' field in the corresponding ServicePort. Must be a DNS_LABEL. Optional only if one port is defined.
  final String? name;

  /// The port number of the endpoint.
  final int port;

  /// The IP protocol for this port. Must be UDP, TCP, or SCTP. Default is TCP.
  final String? protocol;
}
