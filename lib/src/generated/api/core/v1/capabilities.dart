/// Adds and removes POSIX capabilities from running containers.
class Capabilities {
  /// The main constructor.
  const Capabilities({
    this.add,
    this.drop,
  });

  /// Creates a Capabilities from JSON data.
  Capabilities.fromJson(Map<String, dynamic> json)
      : this(
          add: json['add'] != null ? List<String>.from(json['add']) : null,
          drop: json['drop'] != null ? List<String>.from(json['drop']) : null,
        );

  /// Creates a list of Capabilities from JSON data.
  static List<Capabilities> listFromJson(Iterable<Map<String, dynamic>> list) {
    return list.map((e) => Capabilities.fromJson(e)).toList();
  }

  /// Added capabilities
  final List<String>? add;

  /// Removed capabilities
  final List<String>? drop;
}
