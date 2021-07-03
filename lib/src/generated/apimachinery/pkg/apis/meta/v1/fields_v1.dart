/// FieldsV1 stores a set of fields in a data structure like a Trie, in JSON format.
///
/// Each key is either a '.' representing the field itself, and will always map to an empty set, or a string representing a sub-field or item. The string will follow one of these four formats: 'f:<name>', where <name> is the name of a field in a struct, or key in a map 'v:<value>', where <value> is the exact json formatted value of a list item 'i:<index>', where <index> is position of a item in a list 'k:<keys>', where <keys> is a map of  a list item's key fields to their unique values If a key maps to an empty Fields value, the field that key represents is part of the set.
///
/// The exact format is defined in sigs.k8s.io/structured-merge-diff
class FieldsV1 {
  /// The main constructor.
  const FieldsV1();

  /// Creates a FieldsV1 from JSON data.
  FieldsV1.fromJson(Map<String, dynamic> json) : this();

  /// Creates a list of FieldsV1 from JSON data.
  static List<FieldsV1> listFromJson(Iterable<Map<String, dynamic>> list) {
    return list.map((e) => FieldsV1.fromJson(e)).toList();
  }
}
