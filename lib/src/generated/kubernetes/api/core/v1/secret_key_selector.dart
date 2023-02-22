
/// SecretKeySelector selects a key of a Secret.
class SecretKeySelector {
  /// The main constructor.
  const SecretKeySelector({
    required this.key,
    this.name,
    this.optional,
  });

  /// Creates a SecretKeySelector from JSON data.
  SecretKeySelector.fromJson(Map<String, dynamic> json)
      : this(
          key: json['key'],
          name: json['name'],
          optional: json['optional'],
        );

  /// Creates a list of SecretKeySelector from JSON data.
  static List<SecretKeySelector> listFromJson(Iterable<Map<String, dynamic>> list) {
    return list.map((e) => SecretKeySelector.fromJson(e)).toList();
  }

  /// Converts a SecretKeySelector instance to JSON data.
  Map<String, Object> toJson()
  {
    final jsonData = <String, Object>{};

    jsonData['key'] = key;
    if(name != null) { jsonData['name'] = name!; }
    if(optional != null) { jsonData['optional'] = optional!; }
    

    return jsonData;
  }


  /// The key of the secret to select from.  Must be a valid secret key.
  final String key;

  /// Name of the referent. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names.
  final String? name;

  /// Specify whether the Secret or its key must be defined.
  final bool? optional;
}
