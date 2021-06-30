class ContainerPort {
  const ContainerPort({
    required this.containerPort,
    this.hostIP,
    this.hostPort,
    this.name,
    this.protocol,
  });

  ContainerPort.fromJson(Map<String, dynamic> json)
      : this(
          containerPort: json['containerPort'],
          hostIP: json['hostIP'],
          hostPort: json['hostPort'],
          name: json['name'],
          protocol: json['protocol'],
        );

  static List<ContainerPort> listFromJson(Iterable<Map<String, dynamic>> list) {
    return list.map((e) => ContainerPort.fromJson(e)).toList();
  }

  final int containerPort;
  final String? hostIP;
  final int? hostPort;
  final String? name;
  final String? protocol;
}
