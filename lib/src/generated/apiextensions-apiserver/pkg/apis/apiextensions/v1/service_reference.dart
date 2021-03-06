/// ServiceReference holds a reference to Service.legacy.k8s.io.
class ServiceReference {
  /// The main constructor.
  const ServiceReference({
    required this.name,
    required this.namespace,
    this.path,
    this.port,
  });

  /// Creates a ServiceReference from JSON data.
  ServiceReference.fromJson(Map<String, dynamic> json)
      : this(
          name: json['name'],
          namespace: json['namespace'],
          path: json['path'],
          port: json['port'],
        );

  /// Creates a list of ServiceReference from JSON data.
  static List<ServiceReference> listFromJson(
      Iterable<Map<String, dynamic>> list) {
    return list.map((e) => ServiceReference.fromJson(e)).toList();
  }

  /// Converts a ServiceReference instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    jsonData['name'] = name;
    jsonData['namespace'] = namespace;
    if (path != null) {
      jsonData['path'] = path!;
    }
    if (port != null) {
      jsonData['port'] = port!;
    }

    return jsonData;
  }

  /// Name is the name of the service. Required.
  final String name;

  /// Namespace is the namespace of the service. Required.
  final String namespace;

  /// Path is an optional URL path at which the webhook will be contacted.
  final String? path;

  /// Port is an optional service port at which the webhook will be contacted. `port` should be a valid port number (1-65535, inclusive). Defaults to 443 for backward compatibility.
  final int? port;
}
