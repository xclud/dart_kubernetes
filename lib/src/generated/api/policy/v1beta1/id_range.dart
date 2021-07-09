/// IDRange provides a min/max of an allowed range of IDs.
class IDRange {
  /// The main constructor.
  const IDRange({
    required this.max,
    required this.min,
  });

  /// Creates a IDRange from JSON data.
  IDRange.fromJson(Map<String, dynamic> json)
      : this(
          max: json['max'],
          min: json['min'],
        );

  /// Creates a list of IDRange from JSON data.
  static List<IDRange> listFromJson(Iterable<Map<String, dynamic>> list) {
    return list.map((e) => IDRange.fromJson(e)).toList();
  }

  /// Converts a IDRange instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    jsonData['max'] = max;
    jsonData['min'] = min;

    return jsonData;
  }

  /// Max is the end of the range, inclusive.
  final int max;

  /// Min is the start of the range, inclusive.
  final int min;
}
