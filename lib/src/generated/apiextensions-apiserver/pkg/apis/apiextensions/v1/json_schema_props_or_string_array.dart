/// JSONSchemaPropsOrStringArray represents a JSONSchemaProps or a string array.
class JSONSchemaPropsOrStringArray {
  /// The main constructor.
  const JSONSchemaPropsOrStringArray();

  /// Creates a JSONSchemaPropsOrStringArray from JSON data.
  JSONSchemaPropsOrStringArray.fromJson(Map<String, dynamic> json) : this();

  /// Creates a list of JSONSchemaPropsOrStringArray from JSON data.
  static List<JSONSchemaPropsOrStringArray> listFromJson(
      Iterable<Map<String, dynamic>> list) {
    return list.map((e) => JSONSchemaPropsOrStringArray.fromJson(e)).toList();
  }
}
