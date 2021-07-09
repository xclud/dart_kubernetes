/// Patch is provided to give a concrete name and type to the Kubernetes PATCH request body.
class Patch {
  /// The main constructor.
  const Patch();

  /// Creates a Patch from JSON data.
  Patch.fromJson(Map<String, dynamic> json) : this();

  /// Creates a list of Patch from JSON data.
  static List<Patch> listFromJson(Iterable<Map<String, dynamic>> list) {
    return list.map((e) => Patch.fromJson(e)).toList();
  }

  /// Converts a Patch instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    return jsonData;
  }
}
