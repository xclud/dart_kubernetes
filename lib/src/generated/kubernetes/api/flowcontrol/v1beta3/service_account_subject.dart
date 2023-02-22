/// ServiceAccountSubject holds detailed information for service-account-kind subject.
class ServiceAccountSubject {
  /// The main constructor.
  const ServiceAccountSubject({
    required this.name,
    required this.namespace,
  });

  /// Creates a ServiceAccountSubject from JSON data.
  ServiceAccountSubject.fromJson(Map<String, dynamic> json)
      : this(
          name: json['name'],
          namespace: json['namespace'],
        );

  /// Creates a list of ServiceAccountSubject from JSON data.
  static List<ServiceAccountSubject> listFromJson(
      Iterable<Map<String, dynamic>> list) {
    return list.map((e) => ServiceAccountSubject.fromJson(e)).toList();
  }

  /// Converts a ServiceAccountSubject instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    jsonData['name'] = name;
    jsonData['namespace'] = namespace;

    return jsonData;
  }

  /// `name` is the name of matching ServiceAccount objects, or "*" to match regardless of name. Required.
  final String name;

  /// `namespace` is the namespace of matching ServiceAccount objects. Required.
  final String namespace;
}
