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

  /// Version of the schema the FieldPath is written in terms of, defaults to "v1".
  final String? apiVersion;

  /// Path of the field to select in the specified API version.
  final String fieldPath;
}
