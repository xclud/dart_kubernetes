/// StorageVersionSpec is an empty spec.
class StorageVersionSpec {
  /// The main constructor.
  const StorageVersionSpec();

  /// Creates a StorageVersionSpec from JSON data.
  StorageVersionSpec.fromJson(Map<String, dynamic> json) : this();

  /// Creates a list of StorageVersionSpec from JSON data.
  static List<StorageVersionSpec> listFromJson(
      Iterable<Map<String, dynamic>> list) {
    return list.map((e) => StorageVersionSpec.fromJson(e)).toList();
  }

  /// Converts a StorageVersionSpec instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    return jsonData;
  }
}
