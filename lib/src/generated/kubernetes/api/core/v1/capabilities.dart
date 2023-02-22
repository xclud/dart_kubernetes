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

  /// Converts a Capabilities instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    if (add != null) {
      jsonData['add'] = add!;
    }
    if (drop != null) {
      jsonData['drop'] = drop!;
    }

    return jsonData;
  }

  /// Added capabilities.
  final List<String>? add;

  /// Removed capabilities.
  final List<String>? drop;
}
