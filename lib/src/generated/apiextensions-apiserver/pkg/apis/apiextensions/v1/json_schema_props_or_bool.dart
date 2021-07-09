/// JSONSchemaPropsOrBool represents JSONSchemaProps or a boolean value. Defaults to true for the boolean property.
class JSONSchemaPropsOrBool {
  /// The main constructor.
  const JSONSchemaPropsOrBool();

  /// Creates a JSONSchemaPropsOrBool from JSON data.
  JSONSchemaPropsOrBool.fromJson(Map<String, dynamic> json) : this();

  /// Creates a list of JSONSchemaPropsOrBool from JSON data.
  static List<JSONSchemaPropsOrBool> listFromJson(
      Iterable<Map<String, dynamic>> list) {
    return list.map((e) => JSONSchemaPropsOrBool.fromJson(e)).toList();
  }

  /// Converts a JSONSchemaPropsOrBool instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    return jsonData;
  }
}
