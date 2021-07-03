/// JSONSchemaPropsOrArray represents a value that can either be a JSONSchemaProps or an array of JSONSchemaProps. Mainly here for serialization purposes.
class JSONSchemaPropsOrArray {
  /// The main constructor.
  const JSONSchemaPropsOrArray();

  /// Creates a JSONSchemaPropsOrArray from JSON data.
  JSONSchemaPropsOrArray.fromJson(Map<String, dynamic> json) : this();

  /// Creates a list of JSONSchemaPropsOrArray from JSON data.
  static List<JSONSchemaPropsOrArray> listFromJson(
      Iterable<Map<String, dynamic>> list) {
    return list.map((e) => JSONSchemaPropsOrArray.fromJson(e)).toList();
  }
}
