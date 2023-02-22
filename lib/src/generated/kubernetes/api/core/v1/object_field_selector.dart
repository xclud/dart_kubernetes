/// ObjectFieldSelector selects an APIVersioned field of an object.
class ObjectFieldSelector {
  /// The main constructor.
  const ObjectFieldSelector({
    this.apiVersion,
    required this.fieldPath,
  });

  /// Creates a ObjectFieldSelector from JSON data.
  ObjectFieldSelector.fromJson(Map<String, dynamic> json)
      : this(
          apiVersion: json['apiVersion'],
          fieldPath: json['fieldPath'],
        );

  /// Creates a list of ObjectFieldSelector from JSON data.
  static List<ObjectFieldSelector> listFromJson(
      Iterable<Map<String, dynamic>> list) {
    return list.map((e) => ObjectFieldSelector.fromJson(e)).toList();
  }

  /// Converts a ObjectFieldSelector instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    if (apiVersion != null) {
      jsonData['apiVersion'] = apiVersion!;
    }
    jsonData['fieldPath'] = fieldPath;

    return jsonData;
  }

  /// Version of the schema the FieldPath is written in terms of, defaults to "v1".
  final String? apiVersion;

  /// Path of the field to select in the specified API version.
  final String fieldPath;
}
