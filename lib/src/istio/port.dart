class Port {
  const Port({
    this.name,
    required this.number,
    this.protocol,
    this.targetPort,
  });

  /// Creates a Port from JSON data.
  Port.fromJson(Map<String, dynamic> json)
      : this(
          name: json['name'],
          number: json['number'],
          protocol: json['protocol'],
          targetPort: json['targetPort'],
        );

  /// Label assigned to the port.
  final String? name;

  /// A valid non-negative integer port number.
  final int number;

  /// The protocol exposed on the port.
  final String? protocol;

  /// Target port.
  final int? targetPort;
}
