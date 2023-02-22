/// LocalObjectReference contains enough information to let you locate the referenced object inside the same namespace.
class LocalObjectReference {
  /// The main constructor.
  const LocalObjectReference({
    this.name,
  });

  /// Creates a LocalObjectReference from JSON data.
  LocalObjectReference.fromJson(Map<String, dynamic> json)
      : this(
          name: json['name'],
        );

  /// Creates a list of LocalObjectReference from JSON data.
  static List<LocalObjectReference> listFromJson(
      Iterable<Map<String, dynamic>> list) {
    return list.map((e) => LocalObjectReference.fromJson(e)).toList();
  }

  /// Converts a LocalObjectReference instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    if (name != null) {
      jsonData['name'] = name!;
    }

    return jsonData;
  }

  /// Name of the referent. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names.
  final String? name;
}
