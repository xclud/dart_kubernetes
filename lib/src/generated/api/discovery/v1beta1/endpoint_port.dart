/// EndpointPort represents a Port used by an EndpointSlice.
class EndpointPort {
  /// The main constructor.
  const EndpointPort({
    this.appProtocol,
    this.name,
    this.port,
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

  /// The name of this port. All ports in an EndpointSlice must have a unique name. If the EndpointSlice is dervied from a Kubernetes service, this corresponds to the Service.ports[].name. Name must either be an empty string or pass DNS_LABEL validation: * must be no more than 63 characters long. * must consist of lower case alphanumeric characters or '-'. * must start and end with an alphanumeric character. Default is empty string.
  final String? name;

  /// The port number of the endpoint. If this is not specified, ports are not restricted and must be interpreted in the context of the specific consumer.
  final int? port;

  /// The IP protocol for this port. Must be UDP, TCP, or SCTP. Default is TCP.
  final String? protocol;
}
