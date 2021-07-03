/// ServiceReference holds a reference to Service.legacy.k8s.io
class ServiceReference {
  /// The main constructor.
  const ServiceReference({
    this.name,
    this.namespace,
    this.port,
  });

  /// Creates a ServiceReference from JSON data.
  ServiceReference.fromJson(Map<String, dynamic> json)
      : this(
          name: json['name'],
          namespace: json['namespace'],
          port: json['port'],
        );

  /// Creates a list of ServiceReference from JSON data.
  static List<ServiceReference> listFromJson(
      Iterable<Map<String, dynamic>> list) {
    return list.map((e) => ServiceReference.fromJson(e)).toList();
  }

  /// Name is the name of the service
  final String? name;

  /// Namespace is the namespace of the service
  final String? namespace;

  /// If specified, the port on the service that hosting webhook. Default to 443 for backward compatibility. `port` should be a valid port number (1-65535, inclusive).
  final int? port;
}
