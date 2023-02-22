
/// ForZone provides information about which zones should consume this endpoint.
class ForZone {
  /// The main constructor.
  const ForZone({
    required this.name,
  });

  /// Creates a ForZone from JSON data.
  ForZone.fromJson(Map<String, dynamic> json)
      : this(
          name: json['name'],
        );

  /// Creates a list of ForZone from JSON data.
  static List<ForZone> listFromJson(Iterable<Map<String, dynamic>> list) {
    return list.map((e) => ForZone.fromJson(e)).toList();
  }

  /// Converts a ForZone instance to JSON data.
  Map<String, Object> toJson()
  {
    final jsonData = <String, Object>{};

    jsonData['name'] = name;
    

    return jsonData;
  }


  /// Name represents the name of the zone.
  final String name;
}
