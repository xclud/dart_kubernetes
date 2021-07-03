/// RoleRef contains information that points to the role being used
class RoleRef {
  /// The main constructor.
  const RoleRef({
    required this.apiGroup,
    required this.kind,
    required this.name,
  });

  /// Creates a RoleRef from JSON data.
  RoleRef.fromJson(Map<String, dynamic> json)
      : this(
          apiGroup: json['apiGroup'],
          kind: json['kind'],
          name: json['name'],
        );

  /// Creates a list of RoleRef from JSON data.
  static List<RoleRef> listFromJson(Iterable<Map<String, dynamic>> list) {
    return list.map((e) => RoleRef.fromJson(e)).toList();
  }

  /// APIGroup is the group for the resource being referenced
  final String apiGroup;

  /// Kind is the type of resource being referenced
  final String kind;

  /// Name is the name of resource being referenced
  final String name;
}
