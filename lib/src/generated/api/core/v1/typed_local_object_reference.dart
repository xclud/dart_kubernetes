/// TypedLocalObjectReference contains enough information to let you locate the typed referenced object inside the same namespace.
class TypedLocalObjectReference {
  /// The main constructor.
  const TypedLocalObjectReference({
    this.apiGroup,
    required this.kind,
    required this.name,
  });

  /// Creates a TypedLocalObjectReference from JSON data.
  TypedLocalObjectReference.fromJson(Map<String, dynamic> json)
      : this(
          apiGroup: json['apiGroup'],
          kind: json['kind'],
          name: json['name'],
        );

  /// Creates a list of TypedLocalObjectReference from JSON data.
  static List<TypedLocalObjectReference> listFromJson(
      Iterable<Map<String, dynamic>> list) {
    return list.map((e) => TypedLocalObjectReference.fromJson(e)).toList();
  }

  /// APIGroup is the group for the resource being referenced. If APIGroup is not specified, the specified Kind must be in the core API group. For any other third-party types, APIGroup is required.
  final String? apiGroup;

  /// Kind is the type of resource being referenced.
  final String kind;

  /// Name is the name of resource being referenced.
  final String name;
}
