/// JSON represents any valid JSON value. These types are supported: bool, int64, float64, string, []interface{}, map[string]interface{} and nil.
class JSON {
  /// The main constructor.
  const JSON();

  /// Creates a JSON from JSON data.
  JSON.fromJson(Map<String, dynamic> json) : this();

  /// Creates a list of JSON from JSON data.
  static List<JSON> listFromJson(Iterable<Map<String, dynamic>> list) {
    return list.map((e) => JSON.fromJson(e)).toList();
  }

  /// Converts a JSON instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    return jsonData;
  }
}
