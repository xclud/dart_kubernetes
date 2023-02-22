
/// ParamRef references a parameter resource.
class ParamRef {
  /// The main constructor.
  const ParamRef({
    this.name,
    this.namespace,
  });

  /// Creates a ParamRef from JSON data.
  ParamRef.fromJson(Map<String, dynamic> json)
      : this(
          name: json['name'],
          namespace: json['namespace'],
        );

  /// Creates a list of ParamRef from JSON data.
  static List<ParamRef> listFromJson(Iterable<Map<String, dynamic>> list) {
    return list.map((e) => ParamRef.fromJson(e)).toList();
  }

  /// Converts a ParamRef instance to JSON data.
  Map<String, Object> toJson()
  {
    final jsonData = <String, Object>{};

    if(name != null) { jsonData['name'] = name!; }
    if(namespace != null) { jsonData['namespace'] = namespace!; }
    

    return jsonData;
  }


  /// Name of the resource being referenced.
  final String? name;

  /// Namespace of the referenced resource. Should be empty for the cluster-scoped resources.
  final String? namespace;
}
