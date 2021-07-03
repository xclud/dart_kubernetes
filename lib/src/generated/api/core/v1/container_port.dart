/// ContainerPort represents a network port in a single container.
class ContainerPort {
  /// The main constructor.
  const ContainerPort({
    required this.containerPort,
    this.hostIP,
    this.hostPort,
    this.name,
    this.protocol,
  });

  /// Creates a ContainerPort from JSON data.
  ContainerPort.fromJson(Map<String, dynamic> json)
      : this(
          containerPort: json['containerPort'],
          hostIP: json['hostIP'],
          hostPort: json['hostPort'],
          name: json['name'],
          protocol: json['protocol'],
        );

  /// Creates a list of ContainerPort from JSON data.
  static List<ContainerPort> listFromJson(Iterable<Map<String, dynamic>> list) {
    return list.map((e) => ContainerPort.fromJson(e)).toList();
  }

  /// Number of port to expose on the pod's IP address. This must be a valid port number, 0 < x < 65536.
  final int containerPort;

  /// What host IP to bind the external port to.
  final String? hostIP;

  /// Number of port to expose on the host. If specified, this must be a valid port number, 0 < x < 65536. If HostNetwork is specified, this must match ContainerPort. Most containers do not need this.
  final int? hostPort;

  /// If specified, this must be an IANA_SVC_NAME and unique within the pod. Each named port in a pod must have a unique name. Name for the port that can be referred to by services.
  final String? name;

  /// Protocol for port. Must be UDP, TCP, or SCTP. Defaults to "TCP".
  final String? protocol;
}
