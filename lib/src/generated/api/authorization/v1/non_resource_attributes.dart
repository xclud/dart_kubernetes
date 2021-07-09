/// NonResourceAttributes includes the authorization attributes available for non-resource requests to the Authorizer interface.
class NonResourceAttributes {
  /// The main constructor.
  const NonResourceAttributes({
    this.path,
    this.verb,
  });

  /// Creates a NonResourceAttributes from JSON data.
  NonResourceAttributes.fromJson(Map<String, dynamic> json)
      : this(
          path: json['path'],
          verb: json['verb'],
        );

  /// Creates a list of NonResourceAttributes from JSON data.
  static List<NonResourceAttributes> listFromJson(
      Iterable<Map<String, dynamic>> list) {
    return list.map((e) => NonResourceAttributes.fromJson(e)).toList();
  }

  /// Converts a NonResourceAttributes instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    if (path != null) {
      jsonData['path'] = path!;
    }
    if (verb != null) {
      jsonData['verb'] = verb!;
    }

    return jsonData;
  }

  /// Path is the URL path of the request.
  final String? path;

  /// Verb is the standard HTTP verb.
  final String? verb;
}
