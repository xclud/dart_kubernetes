class ContainerPort {
  ContainerPort({
    required this.containerPort,
    this.hostIP,
    this.hostPort,
    this.name,
    this.protocol,
  });

  final int containerPort;
  final String? hostIP;
  final int? hostPort;
  final String? name;
  final String? protocol;
}
