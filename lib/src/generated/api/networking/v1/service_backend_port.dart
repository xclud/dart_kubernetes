/// ServiceBackendPort is the service port being referenced.
class ServiceBackendPort {
  /// The main constructor.
  const ServiceBackendPort({
    this.name,
    this.number,
  });

  /// Creates a ServiceBackendPort from JSON data.
  ServiceBackendPort.fromJson(Map<String, dynamic> json)
      : this(
          name: json['name'],
          number: json['number'],
        );

  /// Creates a list of ServiceBackendPort from JSON data.
  static List<ServiceBackendPort> listFromJson(
      Iterable<Map<String, dynamic>> list) {
    return list.map((e) => ServiceBackendPort.fromJson(e)).toList();
  }

  /// Name is the name of the port on the Service. This is a mutually exclusive setting with "Number".
  final String? name;

  /// Number is the numerical port number (e.g. 80) on the Service. This is a mutually exclusive setting with "Name".
  final int? number;
}
