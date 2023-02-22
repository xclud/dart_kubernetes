/// ParamKind is a tuple of Group Kind and Version.
class ParamKind {
  /// The main constructor.
  const ParamKind({
    this.apiVersion,
    this.kind,
  });

  /// Creates a ParamKind from JSON data.
  ParamKind.fromJson(Map<String, dynamic> json)
      : this(
          apiVersion: json['apiVersion'],
          kind: json['kind'],
        );

  /// Creates a list of ParamKind from JSON data.
  static List<ParamKind> listFromJson(Iterable<Map<String, dynamic>> list) {
    return list.map((e) => ParamKind.fromJson(e)).toList();
  }

  /// Converts a ParamKind instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    if (apiVersion != null) {
      jsonData['apiVersion'] = apiVersion!;
    }
    if (kind != null) {
      jsonData['kind'] = kind!;
    }

    return jsonData;
  }

  /// APIVersion is the API group version the resources belong to. In format of "group/version". Required.
  final String? apiVersion;

  /// Kind is the API kind the resources belong to. Required.
  final String? kind;
}
