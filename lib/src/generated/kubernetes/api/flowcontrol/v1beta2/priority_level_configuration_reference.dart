
/// PriorityLevelConfigurationReference contains information that points to the "request-priority" being used.
class PriorityLevelConfigurationReference {
  /// The main constructor.
  const PriorityLevelConfigurationReference({
    required this.name,
  });

  /// Creates a PriorityLevelConfigurationReference from JSON data.
  PriorityLevelConfigurationReference.fromJson(Map<String, dynamic> json)
      : this(
          name: json['name'],
        );

  /// Creates a list of PriorityLevelConfigurationReference from JSON data.
  static List<PriorityLevelConfigurationReference> listFromJson(Iterable<Map<String, dynamic>> list) {
    return list.map((e) => PriorityLevelConfigurationReference.fromJson(e)).toList();
  }

  /// Converts a PriorityLevelConfigurationReference instance to JSON data.
  Map<String, Object> toJson()
  {
    final jsonData = <String, Object>{};

    jsonData['name'] = name;
    

    return jsonData;
  }


  /// `name` is the name of the priority level configuration being referenced Required.
  final String name;
}
